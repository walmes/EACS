#' @name np_carobinha
#' @title Efeito da Época de Colheita e Adubação Nitro-Fosfatada na
#'     Carobinha
#' @description Resultados de um experimento realizado para estudar o
#'     efeito da época de colheita e níveis de adubação nitro-fosfatada
#'     sobre a produção e teores de nutrientes na carobinha
#'     (subsp. \emph{Symmetrifoliolata}).
#'
#'     O experimento foi instalado em ambiente protegido em maio/2012. 4
#'     vasos preenchidos com Latossolo vermelho distroférrico muito
#'     argiloso, com peso de 5.5 kg, foram adubados com nitrogênio (5
#'     níveis, kg ha^{-1}) e fósforo (5 níveis, kg ha^{-1}). Um total de
#'     25 combinações de N e P resultam do cruzamento completo dos
#'     níveis. No entanto, para reduzir a dimensão do experimento,
#'     utilizou-se 9 combinações ao considerar a matriz experimental de
#'     Pan Plueba III. O delineamento experimental foi de blocos
#'     casualizados (DBC). Cada unidade experimental foi constituida de
#'     4 plantas, contendo 2 plantas úteis por parcela.
#'
#'     Colheram-se duas plantas em janeiro/2013 (259 dias após o
#'     transplantio - DAT) e em junho/2016 (770 DAT), quando as
#'     produções foram mensuradas. Posteriormente, determinou-se o teor
#'     de nutrientes das folhas e raízes.
#'
#' @format Um \code{data.frame} com 72 observações e 7 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{epoc}}{Época de colheita da carobinha e determinação das
#'     variáveis resposta, em dias após o transplantio.}
#'
#' \item{\code{bloc}}{Fator categórico que indica os blocos do
#'     experimento, TODO formado pelas parcelas no mesmo canteiro.}
#'
#' \item{\code{N}}{Nível de nitrogênio aplicado na adubação, kg
#'     ha\eqn{^{-1}}.}
#'
#' \item{\code{P}}{Nível de fósforo aplicado na adubação, kg
#'     ha\eqn{^{-1}}.}
#'
#' \item{\code{msf}}{Massa fresca das folhas, g.}
#'
#' \item{\code{Kraiz}}{Teor de potássio nas raízes, TODO grandeza.}
#'
#' \item{\code{Kfolh}}{Teor de potássio nas folhas, TODO grandeza.}
#'
#' }
#' @examples
#'
#' data(np_carobinha)
#' str(np_carobinha)
#'
#' library(lattice)
#'
#' # Níveis de N e P.
#' unique(sort(np_carobinha$N))
#' unique(sort(np_carobinha$P))
#'
#' # Combinações presentes no experimento.
#' cbn <- unique(np_carobinha[, c("N", "P")])
#' cbn
#'
#' # Desenho simétrico.
#' xyplot(N ~ P, data = cbn, aspect = 1)
#'
#' xtabs(~epoc + bloc, data = np_carobinha)
#' xtabs(~N + P, data = np_carobinha)
#'
#' xyplot(msf ~ N | P, data = np_carobinha, groups = epoc)
#' xyplot(msf ~ P | N, data = np_carobinha, groups = epoc)
#'
#' # Codificar os níveis de N e P para mesma escala centrada.
#' cod <- function(x) {
#'     u <- unique(x)
#'     stopifnot(length(u) == 5)
#'     u <- sort(u)
#'     m <- u[3]
#'     d <- diff(u[c(2, 4)])/2
#'     z <- (x - m)/d
#'     return(z)
#' }
#'
#' # Criando versões codificadas de N e P.
#' np_carobinha <- transform(np_carobinha,
#'                           nn = cod(N),
#'                           pp = cod(P))
#' cbn <- unique(np_carobinha[, c("nn", "pp")])
#' round(cbn, 3)
#'
NULL
