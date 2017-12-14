#' @name pedotrans
#' @title Compressibilidade e pedotransfer\enc{ê}{e}ncia de 10
#'     latossolos
#' @description Experimento realizado em 10 pontos em solos de
#'     diferentes classes texturais de latossolo com quatro repetições,
#'     quando submetidos a diferentes conteúdos de água foi avaliado a
#'     tensão de preconsolidação.
#'
#' @format O objeto \code{pedotrans} é uma lista dois elementos.  O
#'     elemento \code{pedotrans$tex} é um \code{data.frame} com 30
#'     observações e 15 variáveis, descrevendo variáveis texturais do
#'     solo, em que
#'
#' \describe{
#'
#' \item{\code{unid}}{Números inteiros que identificam as unidades ou
#'     locais de amostragem de solo. Todos os solos foram classificados
#'     como latossolos.}
#'
#' \item{\code{rept}}{Números inteiros que identificam as repetições que
#'     são amostras retiradas da mesma unidade amostral para
#'     determinação das variáveis.}
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
#' \item{\code{argsil}}{Variável resposta que é a soma das frações de
#'     argila e silte do solo,
#'     g kg\eqn{^{-1}}.}
#'
#' \item{\code{are1}}{Variável resposta que é a fração de areia muito
#'     fina do solo, g kg\eqn{^{-1}}.}
#'
#' \item{\code{are2}}{Variável resposta que é a fração de areia fina do
#'     solo, g kg\eqn{^{-1}}.}
#'
#' \item{\code{are3}}{Variável resposta que é a fração de areia média do
#'     solo, g kg\eqn{^{-1}}.}
#'
#' \item{\code{are4}}{Variável resposta que é a fração de areia grossa
#'     do solo, g kg\eqn{^{-1}}.}
#'
#' \item{\code{are5}}{Variável resposta que é a fração de areia muito
#'     grossa do solo, g kg\eqn{^{-1}}.}
#'
#' \item{\code{silic}}{Variável resposta que é o teor de silício
#' (SiO\eqn{_2}) do solo, g kg\eqn{^{-1}}.}
#'
#' \item{\code{alumi}}{Variável resposta que é o teor de alumínio
#'     (Al\eqn{_2}O\eqn{_3}) do solo, g kg\eqn{^{-1}}.}
#'
#' \item{\code{ferro}}{Variável resposta que é o teor de ferro
#'     (Fe\eqn{_2}O\eqn{_3}) do solo, g kg\eqn{^{-1}}.}
#'
#' \item{\code{co}}{Variável resposta que é o teor de carbono orgânico
#'     do solo, \eqn{\mu}g L\eqn{^{-1}}.}
#'
#' \item{\code{dp}}{Variável resposta que é a densidade de partícula do
#'     solo, kg m\eqn{^{-3}}.}
#'
#' \item{\code{ds}}{Variável resposta que é a densidade de partícula do
#'     solo, kg m\eqn{^{-3}}.}
#'
#' }
#'
#' Os valores de silício (\code{silic}) até densidade de particula
#'     (\code{dp}) são os mesmos independente do nível de método
#'     (\code{metodo}) porque com este variam apenas as variáveis
#'     texturais do solo (areia, silte e argila).
#'
#' O elemento \code{pedotrans$pcc} é um \code{data.frame} com 320
#'      observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{unid}}{Descrito acima.}
#'
#' \item{\code{rept}}{Descrito acima.}
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
#'     sucção e demais tensões foram realizadas com câmaras de pressão
#'     de Richards.}
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
#'        xlab = "Logaritmo base 10 da tensão aplicada (kPa)",
#'        ylab = "Pressão de preconsolidação (kPa)",
#'        scales = list(x = list(log = 10)))
#'
#' f <- as.formula(
#'     sprintf("%s ~ metodo",
#'             paste(names(pedotrans$tex)[-(1:3)],
#'                   collapse = " + ")))
#' xyplot(f,
#'        data = pedotrans$tex,
#'        outer = TRUE,
#'        groups = unid,
#'        type = c("p", "a"),
#'        as.table = TRUE,
#'        scales = list(y = "free"))
#'
NULL
