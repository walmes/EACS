#!/usr/bin/env Rscript

options(echo = TRUE)
R.version.string
Sys.info()

#--------------------------------------------
# Carregar pacotes.

# - Para desenvolvimento do pacote
library(devtools)
library(roxygen2)

# - Instalando as dependencias (descritas no DESCRIPTION)
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
# Carregar objetos do pacote.

load_all()

pkg <- basename(getwd())
# ls(sprintf("package:%s", pkg))
ls(2)
packageVersion(pkg)

#--------------------------------------------
# Ignora check de caracteres non-ASCII nos datasets

Sys.setenv(`_R_CHECK_ASCII_DATA_` = "FALSE")

#--------------------------------------------
# Produzir a documentação dos objetos.

document()

cp <- compareVersion(a = as.character(packageVersion("devtools")),
                     b = "1.9.1")

if (cp > 0) {
    check_man()
} else {
    check_doc()
}

#--------------------------------------------
# Gerar as vinhetas, caso existam.

if (length(list.files("./vignettes"))) {
    build_vignettes(dependencies = FALSE)
}

#--------------------------------------------
# Checar conteúdo e organização do pacote.

check(cleanup = FALSE,
      manual = TRUE,
      vignettes = FALSE,
      check_dir = ".")

#--------------------------------------------
# Construir pacote.

build(manual = TRUE, vignettes = TRUE, path = "./docs")

#--------------------------------------------
# Gerar documentação com pkgdown.

library(pkgdown)

# build_home()
# build_reference()
# build_articles()
build_site()

# Transfere CSS que é comum às vinhetas e site.
file.copy(from = "./vignettes/config/pkgdown-style.css",
          to = "./docs/", overwrite = TRUE)

#--------------------------------------------
# Instalar o pacote.

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
