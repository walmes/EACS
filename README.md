<img src="./vignettes/img/logo.png" width="150px" align="right" display="block">

Estatística Aplicada à Ciência do Solo
======================================

Prof. Walmes Zeviani (`walmes@ufpr.br`) e colaboradores

## Organização

O `EACS` é um pacote para o [software R](https://cran.r-project.org/). O
pacote contém conjuntos de dados documentados e documentos que exibem a
análise dos dados. Veja na seção [Uso do Pacote](#uso-do-pacote) como
acessar o conteúdo do pacote e na seção [Instalação](#instalacao) como
instalar.

## Instalação

O pacote pode ser instalado diretamente do repositório em que está
hospedado no GitHub (<https://github.com/walmes/EACS>). Para isso é
necessário ter o pacote `devtools`. Com ele, execute o código abaixo em
uma sessão R.

```r
# Carrega o devtools.
library(devtools)

# Instala do GitHub (estável)
install_github("walmes/EACS")
```

Caso não consiga instalar o pacote, tente fazer a partir dos aquivos
comprimidos disponíveis em <http://leg.ufpr.br/~walmes/pacotes/>. Se
você usa Windows, use o `zip`, se Linux use o `tar.gz`. O código abaixo
mostra como fazer a instalação. Substitua `x.y-z` pela versão do pacote.

```r
# Instalando a partir do tarball (Linux).
install.packages(pkgs = "EACS_x.y-z.tar.gz",
                 repos = NULL,
                 type = "source")

# Instalando a partir do zip (Windows).
install.packages(pkgs = "EACS_x.y.z.zip",
                 repos = NULL,
                 type = "source")
```

Lembre-se que esse procedimento não instala as dependências do
pacote. Portanto, na hora de usar pode faltar algo. Para evitar isso,
antes de instalar, procure instalar todos os pacotes que são
dependências para o EACS. Eles são listados no arquivo
[DESCRIPTION](DESCRIPTION).

## Uso do Pacote

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

## Uso dos Dados

As análises no pacote `EACS` foram feitas para serem de livre acesso. Os
conjuntos de dados estão disponíveis para ensino e aprendizado. No
entanto, todo e qualquer uso dos dados, científico ou não, que gere
publicações tais como, mas não se limitando, artigos, trabalhos em
congressos, materias de blog e material didático devem ter o
consentimento dos seus proprietários.

Os dados no pacote `EACS` se tornam públicos antes das publicações que
irão utilizá-los, já que as análises feitas neste pacote são justamente
para gerar os resultados que serão apresentados nas publicações.

<!------------------------------------------- -->
