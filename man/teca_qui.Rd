% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/teca_qui.R
\name{teca_qui}
\alias{teca_qui}
\title{Vari\enc{á}{a}veis Qu\enc{í}{i}micas do Solo para o Estudo
    com Teca (\emph{Tectona grandis})}
\format{
Um \code{data.frame} com 150 observações e 17 variáveis, em
    que

\describe{

\item{\code{loc}}{Indentifica o sítio, do total de 50, de onde a
    amostra foi extraída.}

\item{\code{cam}}{Fator que indica a profundidade (cm) da camada da
    qual foi extraída a amostra de solo. Todas as amostras de uma
    mesma localização são de camadas no mesmo ponto.}

\item{\code{ph}}{pH em H\eqn{_{2}}O da amostra de solo.}

\item{\code{p}}{Conteúdo de fósforo (mg dm\eqn{^{-3}}) da amostra de
    solo.}

\item{\code{k}}{Conteúdo de potássio (mg dm\eqn{^{-3}}) da amostra de
    solo.}

\item{\code{ca}}{Conteúdo de cálcio (cmol\eqn{_{c}} dm\eqn{^{-3}}) da
    amostra de solo.}

\item{\code{mg}}{Conteúdo de magnésio (cmol\eqn{_{c}} dm\eqn{^{-3}})
    da amostra de solo.}

\item{\code{al}}{Conteúdo de alumínio (cmol\eqn{_{c}} dm\eqn{^{-3}})
    da amostra de solo.}

\item{\code{ctc}}{Capacidade de troca catiônica total (cmol\eqn{_{c}}
    dm\eqn{^{-3}}) da amostra de solo. A CTC é resultado da soma dos
    cations K, Ca e Mg, portanto, por ser uma função linear destes,
    deve apresentar redundância em uma análise multivariada.}

\item{\code{sat}}{Saturação de bases (cmol\eqn{_{c}} dm\eqn{^{-3}})
    da amostra de solo. Também é uma variável função dos cátions do
    solo.}

\item{\code{mo}}{Teor de matéria orgânica (g kg\eqn{^{-1}}) da
    amostra de solo.}

\item{\code{arg}}{Teor de argila (g kg\eqn{^{-1}}) da amostra de
    solo.}

\item{\code{are}}{Teor de areia (g kg\eqn{^{-1}}) da amostra de
    solo. O teor de silte é o que falta para a soma de areia, argila
    e silte dar 100\%.}

\item{\code{cas}}{Teor de cascalho (g kg\eqn{^{-1}}) da amostra de
    solo.}

\item{\code{acc}}{Teor de areia mais cascalho mais calhas (g
    kg\eqn{^{-1}}) da amostra de solo.}

}
}
\source{
Milson Evaldo Serafim.
}
\description{
Valores de variáveis químicas de 3 camadas do solo em 50
    sítios cultivados com teca (\emph{Tectona grandis}) e dados de
    produção de madeira.
}
\examples{

library(lattice)

xtabs(~loc + cam, data = teca_qui)

splom(teca_qui[, -(1:2)])

}
