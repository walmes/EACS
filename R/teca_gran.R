#' @name teca_gran
#' @title Fracionamento da Areia do Solo em S\enc{í}{i}tios de Teca
#' @description Valores de variáveis granulométricas de 3 camadas do
#'     solo em 50 sítios cultivados com teca (\emph{Tectona
#'     grandis}). Tais valores complementam os dados
#'     \code{\link{teca_qui}} que possui registros das variáveis
#'     quimícas do solo e medidas resumo das variáveis
#'     granulométricas. As variáveis foram determinadas em amostras do
#'     mesmo ponto nos 50 locais mas feitas um período após a amostragem
#'     que resultou na determinação das variáveis químicas em
#'     \code{\link{teca_qui}}.
#'
#'     O experimento foi realizado no ano de 2015, em lavouras de Teca,
#'     pertencentes a duas fazendas, situadas na Região Oeste do Estado
#'     De mato Grosso. A seleção das áreas de estudo dentro das fazendas
#'     foi realizado por meio de caminhamento livre, percorrendo toda a
#'     área com teca de 1869 ha, realizando observações de campo e
#'     delimitando parcelas dentro dos talhões a partir das
#'     características dos solos, da posição na paisagem e do
#'     desenvolvimento da cultura. Foram alocadas 50 parcelas com 600
#'     m\eqn{^2} (20 \eqn{\times} 30 m) cada. Como critério de seleção,
#'     foram selecionados talhões com área superior a sete hectares (7
#'     ha), utilizando apenas as áreas com a mesma densidade de plantio,
#'     práticas de manejo com idades entre 13-14 anos.
#' @format Um \code{data.frame} com 150 observações e 8 variáveis, em
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
#' \item{\code{afina}}{Areia fina, g kg\eqn{^{-1}}, particulas retidas
#'     entre as peneiras de 0.053 à 0.25 mm.}
#'
#' \item{\code{amedi}}{Areia média, g kg\eqn{^{-1}}, particulas retidas
#'     entre as peneiras de 0.25 à 0.5 mm.}
#'
#' \item{\code{agros}}{Areia grossa, g kg\eqn{^{-1}}, particulas retidas
#'     entre as peneiras de 0.5 à 2 mm.}
#'
#' \item{\code{are}}{Areia total como a soma das frações fina, média e
#'     grossa, g kg\eqn{^{-1}}.}
#'
#' }
#' @source Everton Oliveira Soares (TCC em Engenharia Florestal:
#'     Quantificação das Frações Grosseiras do Solo e Produtividade da
#'     Teca na Região Sudoeste de Mato Grosso), Ana Flavia Silva Amorim
#'     (TCC em Engenharia Florestal), Juberto Babilonia de Sousa
#'     (colaborador), Milson Evaldo Serafim (orientador).
#' @examples
#'
#' data(teca_gran)
#' str(teca_gran)
#'
#' library(lattice)
#'
#' # Matriz de pares de diagramas de dispersão.
#' splom(teca_gran[, -c(1:2)], type = c("p", "r"))
#'
#' # Funde os dados quimícos com os granulométricos.
#' teca_solo <- merge(teca_qui, teca_gran, by = c("loc", "cam"))
#' str(teca_solo)
#'
#' # Gráfico das variáveis que aparecem nas duas bases.
#' splom(teca_solo[, grep("\\.[xy]$", names(teca_solo))])
#'
NULL
