#' @name teca_cra
#' @title Vari\enc{á}{a}veis F\enc{í}{i}sico-H\enc{í}{i}dricas do Solo
#'     em S\enc{í}{i}tio Cultivados com Teca
#' @description Valores de variáveis físico-hídricas de 3 camadas do
#'     solo em 50 sítios cultivados com teca (\emph{Tectona grandis}) e
#'     dados de produção de madeira.
#' @format Um \code{data.frame} com 1650 observações e 9 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{loc}}{Indentifica o sítio, do total de 50, de onde a
#'     amostra foi extraída.}
#'
#' \item{\code{cam}}{Fator que indica a profundidade (cm) da camada da
#'     qual foi extraída a amostra de solo. Todas as amostras de uma
#'     mesma localização são de camadas no mesmo ponto.}
#'
#' \item{\code{tens}}{Tensão matricial aplicada à amostra de solo para
#'     determinação da umidade (kPa).}
#'
#' \item{\code{umid}}{Correspondente umidade (m\eqn{3} m\eqn{-3}) de
#'     equilíbrio do solo a determinada tensão.}
#'
#' \item{\code{ds}}{Densidade do solo (Mg m\eqn{-3}).}
#'
#' }
#' @examples
#'
#' library(lattice)
#' library(latticeExtra)
#'
#' xtabs(~cam + tens, data = teca_cra)
#'
#' xyplot(umid ~ tens | factor(loc),
#'        data = teca_cra,
#'        groups = cam,
#'        type = c("o"),
#'        as.table = TRUE,
#'        strip = TRUE,
#'        layout = c(NA, 5),
#'        scales = list(x = list(log = 10)),
#'        xscale.components = xscale.components.log10ticks,
#'        auto.key = list(title = "Camada (cm)", cex.title = 1.1),
#'        ylab = expression("Umidade do solo" ~ (m^{3} ~ m^{-3})),
#'        xlab = expression(log[10] ~ "Tensão" ~ (kPa)))
#'
NULL
