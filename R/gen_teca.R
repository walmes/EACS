#' @name gen_teca
#' @title Desenvolvimento de mudas de teca em resposta a doses de
#'     C\enc{á}{a}lcio
#' @description O experimento foi instalado em casa de vegetação no mês
#'     de Junho do ano de 2016, utilizando vasos de polietileno com 5
#'     dm\eqn{^3} de solo. A umidade do solo foi mantida ente 60-70\% da
#'     capacidade de campo. Foram estudadas doses crescentes de cálcio
#'     (Ca) para estudar o desenvolvimento de mudas de teca de
#'     diferentes genótipos. Os fatores de estudo foram 3: genótipos de
#'     teca, doses de Ca, e o tempo.  Os níveis do fator genótipo foram
#'     29, identificados com números de 1 a 29. Os níveis do fator Ca
#'     foram 10, espaçados na escala log base 2 com inclusão da dose
#'     0.  Os níveis do fator tempo foram 20 medidas a partir da data do
#'     plantio.  O experimento foi instalado em casa de vegetação com
#'     delineamento inteiramente casualizado e a unidade experimental
#'     foi um vaso com uma planta de teca.  No experimento foram obtidas
#'     as seguintes váriaveis respostas: altura de planta (mm) medida
#'     semanalmente, diâmetro altura do colo (mm) medida semanalmente,
#'     massa seca de parte aérea (g) e massa seca de raiz (g), ambos
#'     medidos ao final do experimento, já que a determinação é
#'     destrutiva. Ao longo do experimento algumas plantas morreram
#'     então o período de sobrevivência pode ser determinado pela ultima
#'     data em que foi realizado registro das variáveis. Essa variável
#'     tem censura intervalar pois sabe-se que a planta morreu entre
#'     dois instantes de tempo conhecido.
#'
#' @format Um \code{data.frame} com 5800 observações e 7 variáveis, em
#'      que
#'
#' \describe{
#'
#' \item{\code{gen}}{Fator de níveis categóricos que representa os
#'     genótipos de teca estudados.}
#'
#' \item{\code{dose}}{Fator de níveis métricos que representa a dose de
#'     Ca aplicada ao solo na forma de adubação para desenvolvimento das
#'     mudas, em cmol\eqn{_c} dm\eqn{^{-3}}.}
#'
#' \item{\code{data}}{Variável cronológica que representa as datas de
#'     avaliação das unidades experimentais para as variáveis
#'     longitudinais altura e diâmetro a altura do colo.}
#'
#' \item{\code{dac}}{Diâmetro à altura do colo (mm) das mudas de teca}
#'
#' \item{\code{alt}}{Altura total (mm) das mudas de teca.}
#'
#' \item{\code{mspa}}{Massa seca de parte aérea (g) das mudas ao final
#'     do experimento.}
#'
#' \item{\code{msr}}{Massa seca de raízes (g) das mudas ao final
#'     do experimento.}
#'
#' }
#' @source Serafim, Milson Evaldo (Orientador), Valteir Siani (TCC
#'     Engenharia florestal) (2016). Resposta de genótipos de teca em
#'     resposta a doses de Ca.
#' @examples
#'
#' data(gen_teca)
#' str(gen_teca)
#'
#' library(lattice)
#'
#' xtabs(!is.na(alt) ~ gen + dose, data = gen_teca)
#' addmargins(xtabs(!is.na(mspa) ~ gen + dose, data = gen_teca))
#'
#' xyplot(alt ~ data | gen,
#'        groups = dose,
#'        data = gen_teca,
#'        type = "o",
#'        cex = 0.6,
#'        as.table = TRUE)
#'
#' xyplot(dac ~ data | gen,
#'        groups = dose,
#'        data = gen_teca,
#'        type = "o",
#'        cex = 0.6,
#'        as.table = TRUE)
#'
#' xyplot(mspa + msr ~ dose | gen,
#'        data = gen_teca,
#'        auto.key = TRUE,
#'        type = c("p", "r"),
#'        as.table = TRUE)
#'
NULL
