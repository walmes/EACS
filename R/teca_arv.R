#' @name teca_arv
#' @title Variáveis de Dendrométricas em Árvores de Teca
#' @description Váriaveis dendrométricas de teca em 50 sítios de
#'     cultivo.
#' @format Um \code{data.frame} com 50 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{loc}}{Indentifica o sítio, do total de 50, de onde a
#'     amostra foi extraída.}
#'
#' \item{\code{alt}}{Altura da árvore (m).}
#'
#' \item{\code{dap}}{Diâmetro (cm) à altura do peito na árvore.}
#'
#' \item{\code{vol}}{Volume de madeira (m\eqn{3}) da árvore.}
#'
#' \item{\code{prod}}{Produção de madeira (m\eqn{3} ha\eqn{-1}). Essa
#'     variável é só uma padronização do \code{vol} para a unidade de
#'     área de um hectare.}
#'
#' }
#' @examples
#'
#' library(lattice)
#'
#' data(teca_arv)
#' str(teca_arv)
#'
#' splom(teca_arv[, -1])
#'
#' xtabs(~loc, data = teca_arv)
#'
NULL
