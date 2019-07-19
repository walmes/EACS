#' @name cafe_pedotrans
#' @title TITULO PARA ESSE CONJUNTO DE DADOS
#' @description DESCRIÇÃO DO EXPERIMENTO (LOCAL, DESENHO EXPERIMENTAL,
#'     UNIDADES EXPERIMENTAIS, ARRANJO DE FATORES), HIPÓTESES, ETC.
#' @format A \code{data.frame} with 180 observations and 11 variables,
#'     in which
#'
#' \describe{
#'
#' DENTRO DAS CHAVES A SEGUIR COLOCAR A DESCRIÇÃO, SIGNIFICADO, UNIDADES
#' DE MEDIDA DE CADA UMA DAS VARIÁVEIS DA TABELA.
#'
#' \item{\code{solo}}{  }
#'
#' \item{\code{tensao}}{  }
#'
#' \item{\code{posi}}{  }
#'
#' \item{\code{prof}}{  }
#'
#' \item{\code{rep}}{  }
#'
#' \item{\code{dsi}}{  }
#'
#' \item{\code{dsp}}{  }
#'
#' \item{\code{thetai}}{  }
#'
#' \item{\code{ppc}}{  }
#'
#' \item{\code{trt}}{  }
#'
#' \item{\code{ue}}{  }
#'
#' }
#' @source INDICAR AS PESSOAS DONAS DAS PESQUISA/DADOS COM EMAIL PARA
#'     CONTATO E URL PARA PERFIL DO LATTES.
#' @examples
#'
#' library(lattice)
#'
#' xyplot(ppc ~ tensao | trt,
#'        groups = rep,
#'        data = cafe_pedotrans,
#'        type = "o",
#'        scales = list(x = list(log = TRUE)),
#'        layout = c(3, NA))
#'
#' xyplot(ppc ~ tensao | solo + prof,
#'        groups = posi,
#'        data = cafe_pedotrans,
#'        type = c("p", "a"),
#'        scales = list(x = list(log = 10)),
#'        auto.key = TRUE)
#'
NULL
