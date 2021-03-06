#' @name maracuja
#' @title Cinza de cana em substrato de "terra de barranco" para
#'     produ\enc{çã}{ca}o de mudas de maracujazeiro
#' @description Experimento que avaliou a quantidade de cinza na
#'     composição de substratos para mudas de maracujazeiro combinado
#'     com solo composto de agregados de diferentes tamanhos para duas
#'     famílias da espécie de maracujazeiro. O experimento foi feito em
#'     blocos (3) e o arranjo experimental de fatorial triplo com duas
#'     repetições por bloco. Variáveis de parte aérea e de solo foram
#'     observadas ao final do experimento e medidas de altura foram
#'     tomadas ao longo do tempo.
#'
#' @format Uma lista com dois elementos sendo \code{final} os dados
#'     obtidos ao final do experimento com a colheita das parcelas e
#'     \code{cresc} dados sobre o crescimento em altura das plantas.
#'
#' \code{maracuja$final} é um \code{data.frame} com 168 observações e 9
#'     variáveis, em que
#'
#' \describe{
#'
#' \item{\code{agreg}}{Fator categórico de dois níveis que representa a
#'     classe de tamanho das particulas ou agregados de solo usado nos
#'     vasos.}
#'
#' \item{\code{fam}}{Fator categórico de dois níveis que representa duas
#'     famílias de maracujá.}
#'
#' \item{\code{cinz}}{Fator métrico de 7 níveis que é a quantidade
#'     aplicada de cinza (ton ha\eqn{^{-1}}) aplicada nos vasos.}
#'
#' \item{\code{bloc}}{Fator categórico de 3 níveis que são os blocos do
#'     experimento, considerados para obtenção de controle local.}
#'
#' \item{\code{rept}}{Variável inteira que distingue entre unidades
#'     experimentais de uma mesma cela dentro de cada bloco (repetições
#'     dentro de blocos).}
#'
#' \item{\code{mfpa}}{Variável resposta massa fresca de parte aérea
#'     (g).}
#'
#' \item{\code{mspa}}{Variável resposta massa seca de parte aérea (g).}
#'
#' \item{\code{ds}}{Variável resposta densidade do solo (mg
#'     m\eqn{^{-3}}).}
#'
#' \item{\code{cav}}{Variável resposta consumo acumulado de água durante
#'     o ciclio por vaso (1 planta) (mL).}
#'
#' }
#'
#' \code{maracuja$cresc} é um \code{data.frame} com 1344 observações e 7
#'      variáveis, em que
#'
#' \describe{
#'
#' \item{\code{data}}{É a data na qual a altura das plantas foi medida
#'      (classe \code{Date}).}
#'
#' \item{\code{alt}}{Variável resposta altura das mudas de maracuja
#'      (cm).}
#'
#' }
#'
#' @source Milson Evaldo Serafim
#'     (\url{http://lattes.cnpq.br/8676820051946774}).
#' @examples
#'
#' data(maracuja)
#' str(maracuja)
#'
#' ftable(xtabs(~fam + agreg + cinz, data = maracuja$final))
#' ftable(xtabs(~fam + agreg + cinz, data = maracuja$cresc))
#'
#' library(lattice)
#' library(latticeExtra)
#'
#' xyplot(mfpa + mspa ~ cinz^(1/3) | fam + agreg,
#'        data = maracuja$final,
#'        type = c("p", "a"))
#'
#' useOuterStrips(
#'     xyplot(alt ~ data | cinz + fam,
#'            groups = agreg,
#'            data = maracuja$cresc,
#'            type = c("p", "a")))
#'
NULL
