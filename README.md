Estatística Aplicada à Ciência do Solo
======================================

Walmes Zeviani

## Organização

O `EACS` é um pacote para o [software R](https://cran.r-project.org/). O
pacote contém conjuntos de dados documentados e documentos que exibem a
análise dos dados. Veja na seção [uso](#uso) como acessar o conteúdo do
pacote e na seção [instalação](#instalacao) como instalar.

## Instalação

Para instalar o pacote `EACS`, é necessário ter o pacote `devtools`. Com
ele, execute o código abaixo em uma sessão R.

O pacote pode ser instalado diretamente dos repositório em que está
hospedado no GitHub (<https://github.com/walmes/EACS>) ou no GitLab
(<https://gitlab.c3sl.ufpr.br/walmes/EACS>). Para isso é necessário ter
o pacote `devtools`. Execute o código abaixo para instalar o pacote.

```r
# Carrega o devtools.
library(devtools)

# Instala do GitLab (sob desenvolvimento).
install_git(url = "https://gitlab.c3sl.ufpr.br/walmes/EACS.git")

# Instala do GitHub (estável)
install_github(repo = "EACS", username = "walmes")
```

Caso não consiga instalar o pacote, tente fazer a partir dos aquivos
comprimidos disponíveis em <http://leg.ufpr.br/~walmes/pacotes/>. Se
você usa Windows, use o `zip`, se Linux use o `tar.gz`. O código abaixo
mostra como fazer a instalação. Faça a use a versão atual no lugar de
`x.y-z`.

```r
# Instalando a partir do tarball (Linux).
install.packages(pkgs = "EACS_x.y-z.tar.gz",
                 repos = NULL, type = "source")

# Instalando a partir do zip (Windows).
install.packages(pkgs = "EACS_x.y.z.zip",
                 repos = NULL, type = "source")
```

Lembre-se que esse procedimento não instala as dependências do
pacote. Portanto, na hora de usar pode ser dado falta de algo. Para
evitar isso, antes de instalar, procure instalar todos os pacotes que
dependências para o EACS. Eles são listadoss no arquivo [DESCRIPTION].

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

<!------------------------------------------- -->
