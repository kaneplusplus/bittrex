% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/private-interface.r
\name{bt_cancel}
\alias{bt_cancel}
\title{Cancel an Open Order}
\usage{
bt_cancel(uuid)
}
\arguments{
\item{uuid}{the uuid of the order you would like to cancel.}
}
\value{
A named list with the following elements:
\itemize{
\item{success: }{a boolean indicating whether the request was successful.}
\item{message: }{a string describing the error if the request was not
successful, otherwise an empty string.}
\item{result:  }{always NULL}
}
}
\description{
The \code{bt_cancel()} function cancels an open order on
\url{https://bittrex.com}. This function
is called after using either \code{\link[=bt_buy]{bt_buy()}} or \code{\link[=bt_sell]{bt_sell()}}.
}
\examples{
\dontrun{
# Note you must authenticate and define a uuid first.
bt_cancel(uuid)
# $success
# [1] TRUE
#
# $message
# [1] ""
#
# $result
}
}
\references{
https://bittrex.com/api/v1.1/account/cancel
}
\seealso{
\code{\link[=bt_authenticate]{bt_authenticate()}}, \code{\link[=bt_getopenorders]{bt_getopenorders()}}
}
