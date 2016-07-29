Estatística Aplicada à Ciência do Solo
======================================

Walmes Zeviani

## Organização

## Instalação

Para instalar o pacote EACS, é necessário ter o pacote `devtools`. Com
ele, execute o código abaixo em uma sessão R.

```r
# Carrega o devtools.
library(devtools)

# Instala do GitLab (sob desenvolvimento).
install_git(url = "https://gitlab.c3sl.ufpr.br/walmes/EACS.git")

# Instala do GitHub (estável)
install_github(repo = "EACS", username = "walmes")
```

## Uso

O código abaixo permite que fazer um *tour* pelo pacote EACS.

```r
# Carrega o pacote.
library(EACS)

# Lista os objetos do pacote.
ls("package:EACS")

# Abre a documentação do pacote.
help(package = "EACS", help_type = "html")

# Mostra as vinhetas disponíveis.
browseVignettes(package = "EACS")

# Abre alguma vinheta.
vignette(topic = "vignette_name_here", package = "EACS")

# Cita o pacote.
citation("EACS")
```
