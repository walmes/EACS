#!/usr/bin/env Rscript

options(echo = TRUE)
R.version.string
Sys.info()

#--------------------------------------------
# Load packages.

library(devtools)
library(roxygen2)

if (Sys.info()["user"] == "walmes") {
    .libPaths(new = "/usr/lib/R/site-library")
}

# Install dependencies.
install_github("walmes/wzRfun")
install_deps(dependencies = TRUE,
             quiet = TRUE,
             upgrade = FALSE,
             repos = "http://cran-r.c3sl.ufpr.br/")

session_info()

inpack <- installed.packages()
rownames(inpack) <- NULL
print(inpack[order(inpack[, "Package"]), c("Package", "Version")],
      quote = FALSE)

#--------------------------------------------
# Load package.

load_all()

pkg <- basename(getwd())
# ls(sprintf("package:%s", pkg))
ls(2)
packageVersion(pkg)

#--------------------------------------------
# Ignores non-ASCII characters in the datasets

Sys.setenv(`_R_CHECK_ASCII_DATA_` = "FALSE")

#--------------------------------------------
# Creates the documentation.

document()
check_man()

#--------------------------------------------
# Creates the vignettes.

dir.create("./inst/doc")

if (length(list.files("./vignettes"))) {
    build_vignettes(dependencies = FALSE)
}

system("cp -r ./doc ./inst/")

#--------------------------------------------
# Check the package.

check(cleanup = FALSE,
      manual = TRUE,
      vignettes = FALSE,
      check_dir = ".")

#--------------------------------------------
# Build the package.

build(manual = TRUE,
      vignettes = TRUE,
      path = ".")

#--------------------------------------------
# Creates the pkgdown documentation.

library(pkgdown)

dir.create("./docs")

build_home()
# build_reference()
# build_articles()
build_site()

# Move stylesheet and mathjax files.
# ATTENTION: `pkgdown-style.css` is
# refered in `./inst/templates/head.html`
file.copy(from = c("./vignettes/config/pkgdown-style.css"),
          to = "./docs",
          overwrite = TRUE)

#--------------------------------------------
# Installs the package.

rm(list = ls())

# lib <- path.expand("~/R-test/")
# dir.create(lib)
# .libPaths(new = lib)
# .libPaths()

# install()
install(build_vignettes = FALSE,
        dependencies = FALSE,
        upgrade_dependencies = FALSE)

# unlink(lib, recursive = TRUE)

#--------------------------------------------
# Transfer to server public_html.

# Port and IP address (you can define these credential in .Rprofile).
# credent <- scan(n = 2, what = "character")
# cmd <- sprintf(paste("rsync -avzp ./docs/* --progress",
#                      '--rsh="ssh -p%s"',
#                      '"%s:~/public_html/pacotes/EACS"'),
#                credent[1], credent[2])
# cat(cmd, "\n")
# system(cmd)
