#' @name pedotrans
#' @title Compressibilidade e pedotransfer\enc{ê}{e}ncia de 10
#'     latossolos
#' @description Experimento realizado em 10 pontos em solos de
#'     diferentes classes texturais de latossolo com quatro repetições,
#'     quando submetidos a diferentes conteúdos de água foi avaliado a
#'     pressão de preconsolidação.
#'
#' @format O objeto \code{pedotrans} é uma lista de três tabelas.  O
#'     elemento \code{pedotrans$tex} é um \code{data.frame} com 30
#'     observações e 6 variáveis, descrevendo variáveis texturais do
#'     solo, em que
#'
#' \describe{
#'
#' \item{\code{unid}}{Números inteiros que identificam as unidades ou
#'     locais de amostragem de solo. Todos os solos foram classificados
#'     como latossolos.}
#'
#' \item{\code{metodo}}{Fator categórico que representa os métodos de
#'     análise textural do solo empregados para a determinação das
#'     frações argila, areia e silte.  Os métodos laboratoriais foram
#'     Bouyoucos (Boy), pipeta (Pip) e ultrassom (Ultsom).}
#'
#' \item{\code{arg}}{Variável resposta que é a fração de argila do solo,
#'     g kg\eqn{^{-1}}.}
#'
#' \item{\code{sil}}{Variável resposta que é a fração de silte do solo,
#'     g kg\eqn{^{-1}}.}
#'
#' \item{\code{are}}{Variável resposta que é a fração total de areia do
#'     solo, g kg\eqn{^{-1}}.}
#'
#' \item{\code{argsil}}{Variável resposta que é a soma das frações de
#'     argila e silte do solo,
#'     g kg\eqn{^{-1}}.}
#'
#' }
#'
#' O elemento \code{pedotrans$pcc} é um \code{data.frame} com 360
#'      observações e 7 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{unid}}{Descrito acima.}
#'
#' \item{\code{rept}}{Números inteiros que identificam as repetições que
#'     são amostras retiradas da mesma unidade amostral para
#'     determinação das variáveis.}
#'
#' \item{\code{tens}}{Fator de níveis métricos que é a tensão da água
#'     aplicada às amostras de solo indeformadas determinação da pressão
#'     de preconsolidação, em kPa.}
#'
#' \item{\code{ppc}}{Variável resposta que é a pressão de
#'     preconsolidação, em kPa.}
#'
#' \item{\code{umid}}{Variável resposta que é umidade volumétrica do
#'     solo, dm\eqn{^3} dm\eqn{^{-3}}.  Ela representa a capacidade de
#'     retenção de água no solo quando submetido as diferentes tensões
#'     (kPa). As tensões de 1 a 10 kPa foram realizadas em unidade de
#'     sucção, de 33 a 1500 kPa foram realizada com câmaras de pressão
#'     de Richards e o potencial matricial de 10000 kPa foi utilizado
#'     psicrômetro de termopar WP4-T.}
#'
#' \item{\code{ds}}{Variável resposta que é a densidade do solo, kg
#'     m\eqn{^{-3}}.}
#'
#' \item{\code{co}}{Variável resposta que é o teor de carbono orgânico
#'     do solo, kg dm\eqn{^{-3}}.}
#'
#' }
#'
#' O elemento \code{pedotrans$qui} é um \code{data.frame} com 10
#'      observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{silic}}{Variável resposta que é o teor de silício
#'     (SiO\eqn{_2}) do solo, g kg\eqn{^{-1}}.}
#'
#' \item{\code{alumi}}{Variável resposta que é o teor de alumínio
#'     (Al\eqn{_2}O\eqn{_3}) do solo, g kg\eqn{^{-1}}.}
#'
#' \item{\code{ferro}}{Variável resposta que é o teor de ferro
#'     (Fe\eqn{_2}O\eqn{_3}) do solo, g kg\eqn{^{-1}}.}
#'
#' \item{\code{dp}}{Variável resposta que é a densidade de partícula do
#'     solo, kg m\eqn{^{-3}}.}
#'
#' }
#'
#' @source Josué Gomes (\email{josuegd@@gmail.com}), Eduardo da Costa
#'     Severiano (\email{eduardo.severiano@@ifgoiano.edu.br}) e Carla
#'     Eloize Carducci (\email{elocarducci@@hotmail.com}).
#'
#' @examples
#'
#' library(lattice)
#' library(latticeExtra)
#'
#' str(pedotrans)
#'
#' xyplot(ppc ~ tens | as.factor(unid),
#'        groups = rept,
#'        data = pedotrans$pcc,
#'        jitter.x = TRUE,
#'        type = c("p", "a"),
#'        as.table = TRUE,
#'        xscale.components = xscale.components.logpower,
#'        xlab = "Logaritmo base 10 da tensão aplicada (kPa)",
#'        ylab = "Pressão de preconsolidação (kPa)",
#'        scales = list(x = list(log = 10)))
#'
#' xyplot(umid ~ tens | as.factor(unid),
#'        groups = rept,
#'        data = pedotrans$pcc,
#'        jitter.x = TRUE,
#'        type = c("p", "a"),
#'        as.table = TRUE,
#'        xscale.components = xscale.components.logpower,
#'        xlab = "Logaritmo base 10 da tensão aplicada (kPa)",
#'        ylab = expression("Umidade do solo" ~ (dm^{3} ~ dm^{-3})),
#'        scales = list(x = list(log = 10)))
#'
#' f <- as.formula(
#'     sprintf("%s ~ metodo",
#'             paste(names(pedotrans$tex)[-(1:2)],
#'                   collapse = " + ")))
#' xyplot(f,
#'        data = pedotrans$tex,
#'        outer = TRUE,
#'        groups = unid,
#'        type = c("p", "a"),
#'        as.table = TRUE,
#'        scales = list(y = "free"))
#'
#' splom(pedotrans$qui[, -1], type = c("p", "r"))
#'
NULL
