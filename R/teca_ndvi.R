#' @name teca_ndvi
#' @title \enc{Í}{I}ndice de vegeta\enc{çã}{ca}o mensal para os
#'     s\enc{í}{i}tios de Teca
#' @description Contém o índice padronizado de vegetação para os sítios
#'     de Teca em 6 meses.
#' @format Um \code{data.frame} com 300 observações e 3 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{loc}}{Indicadora do ponto de amostragem.}
#'
#' \item{\code{mes}}{Mês em que o valor de NDVI foi determinado.}
#'
#' \item{\code{ndvi}}{NDVI - Normalized Difference Vegetation Index, foi
#'     uma variável determinada por análise de imagens de satélite.  O
#'     valor obtido foi mensal para cada unidade amostral do
#'     experimento.}
#'
#' }
#'
#' Para mais informações, consulte a documentação das demais tabelas:
#' \code{\link{teca_arv}}, \code{\link{teca_coords}},
#' \code{\link{teca_qui}}, \code{\link{teca_cra}},
#' \code{\link{teca_crapar}}, \code{\link{teca_gran}}.
#'
#' @source Milson Evaldo Serafim.
#' @examples
#'
#' library(lattice)
#'
#' xyplot(ndvi ~ factor(mes) | loc,
#'        data = teca_ndvi,
#'        type = "o", scales = list(x = list(rot = 90)))
#'
NULL
