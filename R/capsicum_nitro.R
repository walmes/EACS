#' @name capsicum_nitro
#' @title Resposta de gen\enc{ó}{o}tipos de pimenta \enc{à}{a} doses de
#'     nitrog\enc{ê}{e}nio
#' @description Experimento foi instalado em casa de vegetação no mês de
#'     outubro do ano de 2016, utilizando vasos de polietileno com 5
#'     dm\eqn{^3} de solo dispostos conforme o delineamento inteiramente
#'     casualizado.  A unidade experimental foi um vaso cultivado com
#'     uma planta de pimenta com umidade do solo mantida ente 65-55\% do
#'     volume total de poros (a diferença entre pesagens consecutivas
#'     nos vasos foi usadaa para repor a água consumida).
#'
#'     Os fatores estudados foram arranjados em um fatorial completo de
#'     8 (acessos de) genótipos de pimenta (\emph{Capsicum} spp)
#'     \eqn{\times} 11 doses de adubação com nitrogênio (N) com uma ou
#'     duas repetições.
#'
#' @format Uma lista com 4 \emph{data frames} totalizando 16 variáveis
#'     que são descritas a seguir.  A tabela \code{cres} contém os dados
#'     para curva de crescimento em altura das plantas, \code{planta}
#'     contém registros de variáveis medidas ao nível de planta (valores
#'     por planta), \code{fruto} contém variáveis medidas ao nível de
#'     frutos (valores por fruto) e \code{teor} contém os teores de
#'     substâncias químicas determinados em tripicata.
#'
#' \describe{
#'
#' \item{\code{gen}}{Fator categórico que representa os oito acessos de
#'     pimenta estudados, indicados pelos números que precedem o nome:
#'       39 \emph{C. chinense} (2 repetições),
#'       118 \emph{C. chinense} (2 rept),
#'       17 \emph{C. frutescens} (1 rept),
#'       113 \emph{C. frutescens} (2 rept),
#'       116 \emph{C. annuun} (2 rept),
#'       163 \emph{C. annuun} (1 rept),
#'       66 \emph{C. baccatum var. pendulum} (1 rept) e
#'       141 \emph{C. annum var. praetermissum} (1 rept).  Como indicado
#'     entre parênteses, o número de repetições foi diferente entre
#'     acessos.
#' }
#'
#' \item{\code{dose}}{Fator de níveis métricos que são as doses de
#'     nitrogênio (N) aplicadas ao solo na forma de adubação, espaçados
#'     na escala log de base 2: 0, 1, 2, 4, 8, 16, 32, 64, 128, 256 e
#'     512 mg dm\eqn{^{-3}}.}
#'
#' \item{\code{rept}}{Número inteiro que distingue as repetições de cada
#'     cela experimental formada com a combinação de genótipo com dose
#'     de N.}
#'
#' \item{\code{data}}{Variável cronológica que indica a data em que a
#'     altura da planta foi medida.  Entre os registros tem-se um
#'     intervalo médio de uma semana (semanal irregular).}
#'
#' \item{\code{alt}}{Variável resposta que é a altura da planta (mm)
#'     medida ao longo do tempo.}
#'
#' \item{\code{fruto}}{Número inteiro que distingue entre os frutos
#'     medidos em cada unidade experimental. Tais frutos foram extraídos
#'     por amostragem aleatória na planta.  Um número máximo de 5 frutos
#'     foram medidos, independente de quão abundante tenha sido a
#'     produção.  Todos os frutos foram medidos quando a produção esteve
#'     aquém de 5 frutos.}
#'
#' \item{\code{diamf}}{Variável resposta que é o diâmetro do fruto de
#'     pimenta (mm).  Frutos extraídos por amostragem aleatória.}
#'
#' \item{\code{compf}}{Variável resposta que é o comprimento do fruto de
#'     pimenta (mm).  Com \code{diamf} forma um par de variáveis medidas
#'     sob os mesmos frutos.}
#'
#' \item{\code{flores}}{Variável resposta que é o número de dias para o
#'     florescimento, evento indicado pela abertura da primeira flor da
#'     planta com dias contados após a implantação do
#'     experimento.  Quando a planta não apresenta florescimento
#'     (\code{NA}), então não são observadas as demais variáveis
#'     (maturação e demais variáveis de fruto) já que não foram
#'     produzidos frutos para que fossem determinadas.}
#'
#' \item{\code{matur}}{Variável resposta que é o número de dias até o
#'     primeiro fruto maduro da planta (maturação) com dias contados
#'     após a implantação do experimento.  A maturação foi definida como
#'     momento da mudança de cor do fruto, com os primeiro sinais de
#'     amarelecimento, avermelhamento, de acordo com a cor final do
#'     fruto maduro de cada genótipo.  Só ocorre maturação depois do
#'     florescimento.}
#'
#' \item{\code{nfrut}}{Variável resposta que é o número total de frutos
#'     produzidos pela planta ao longo do experimento (total
#'     acumulado).  Só ocorrem frutos após o florescimento.}
#'
#' \item{\code{mff}}{Variável resposta que é o total produzido em massa
#'     fresca de frutos (g) por parcela no experimento.}
#'
#' \item{\code{msf}}{Idem à \code{mff} mas com a massa seca de frutos
#'     (g).}
#'
#' \item{\code{diamc}}{Variável resposta que é o diâmetro à altura do
#'     colo da planta ao final do experimento.}
#'
#' \item{\code{polifen}}{Variável resposta que é o teor de polifenois
#'     nos frutos (mg 100 g\eqn{^{-1}}).  Para determinação de
#'     polifenois foram colhidos aproximadamente 100 g de frutos frescos
#'     de cada parcela.  Os frutos foram macerrados em nitrogênio
#'     líquido e posteriormente foi analizado o teor de polifenol.  Esta
#'     única amostra foi analizada em triplicata (3 valores por unidade
#'     experimental).}
#'
#' \item{\code{ddph}}{Variável resposta que é o teor de DPPH nos frutos
#'     (mg 100 g\eqn{^{-1}}), obtido pelo mesmo procedimento usado para
#'     \code{polifen}.}
#'
#' \item{\code{lico}}{Variável resposta que é o teor de licopeno nos
#'     frutos (mg 100 g\eqn{^{-1}}), obtido pelo mesmo procedimento
#'     usado para \code{polifen}.}
#'
#' \item{\code{bcaro}}{Variável resposta que é o teor de
#'     \eqn{\beta}-caroteno nos frutos (mg 100 g\eqn{^{-1}}), obtido
#'     pelo mesmo procedimento usado para \code{polifen}.}
#'
#' \item{\code{flavon}}{Variável resposta que é o teor de flavonoides
#'     nos frutos (mg 100 g\eqn{^{-1}}), obtido pelo mesmo procedimento
#'     usado para \code{polifen}.}
#'
#' \item{\code{antoc}}{Variável resposta que é o teor de antocianinas
#'     nos frutos (mg 100 g\eqn{^{-1}}), obtido pelo mesmo procedimento
#'     usado para \code{polifen}.}
#'
#' }
#'
#'     O experimento teve por objetivo estudar a resposta dos genótipos
#'     de \emph{Capsicum} à doses crescentes de N. Para as condições do
#'     estudo tem-se as seguintes hipóteses:
#'
#' \itemize{
#'
#' \item Os genótipos apresentam resposta positiva as doses de
#'     nitrogênio para as variáveis resposta altura e diâmetro altura do
#'     colo.
#'
#' \item O florescimento é retardado nos genótipos de pimenta com o
#'     aumento das doses de N.
#'
#' \item As medidas de frutos: diâmetro, comprimento, número de frutos,
#'     massa fresca e massa seca de frutos crescem em resposta às doses
#'     de N.
#'
#' \item O teor de polifenois possui resposta negativa às doses
#'     crescentes de N.
#'
#' \item A capacidade produtiva dos genótipos é determinada pelo tamanho
#'     (altura e diâmetro colo) das plantas de cada espécie.
#'
#' \item Os genótipos diferem quanto ao teor de polifenois e demais
#'     substâncias apresentadas nos frutos.
#'
#' }
#'
#'     Com este trabalho, busca-se definir a resposta dos diferentes
#'     genótipos ao nitrogênio; as doses de máxima resposta e o teor de
#'     N a partir do qual inicia efeitos negativos na planta.  Na
#'     comparação entre genótipos, busca-se conhecer aqueles com maior
#'     produção de frutos e teor de polifenois.  O tempo para
#'     florescimento também é uma variável resposta de interesse na
#'     comparação de genótipos, pois seu conhecimento permite conhecer o
#'     potencial de genótipos em contribuir com a precocidade da
#'     produção nos programas de melhoramento.
#'
#' @source Dados produzidos por Milson Evaldo Serafim (Orientador) e
#'     Paloma Braga (Bolsista de IC) em 2016.
#' @examples
#'
#' data(capsicum_nitro)
#' str(capsicum_nitro)
#'
#' library(lattice)
#' library(latticeExtra)
#'
#' xyplot(alt ~ data | gen,
#'        groups = interaction(dose, rept),
#'        data = capsicum_nitro$cres,
#'        as.table = TRUE,
#'        type = "l")
#'
#' combineLimits(
#'     useOuterStrips(
#'         xyplot(flores + matur + nfrut + mff + msf + diamc ~
#'                    dose | gen,
#'                outer = TRUE,
#'                scales = list(y = list(relation = "free")),
#'                data = capsicum_nitro$planta))) +
#'     layer(panel.smoother(form = y ~ poly(x, degree = 2),
#'                          method = "lm",
#'                          ...))
#'
#' xyplot(diamf + compf ~ dose | gen,
#'        as.table = TRUE,
#'        data = capsicum_nitro$fruto) +
#'     glayer(panel.smoother(form = y ~ poly(x, degree = 2),
#'                           method = "lm",
#'                           ...))
#'
#' combineLimits(
#'     useOuterStrips(
#'         xyplot(ddph + lico + bcaro + polifen + flavon + antoc ~
#'                    dose | gen,
#'                outer = TRUE,
#'                data = capsicum_nitro$teor,
#'                scales = list(y = list(relation = "free")),
#'                as.table = TRUE))) +
#'     layer(panel.smoother(form = y ~ poly(x, degree = 2),
#'                          method = "lm",
#'                          ...))
#'
NULL
