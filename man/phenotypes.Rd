% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/phenotypes.R
\name{phenotypes}
\alias{phenotypes}
\title{Get openSNP phenotype data for one or multiple users.}
\usage{
phenotypes(userid = NA, df = FALSE, ...)
}
\arguments{
\item{userid}{ID of openSNP user.}

\item{df}{Return data.frame (\code{TRUE}) or not (\code{FALSE}). Default: \code{FALSE}}

\item{...}{Curl options passed on to \link[crul:HttpClient]{crul::HttpClient}}
}
\value{
List of phenotypes for specified user(s).
}
\description{
Get openSNP phenotype data for one or multiple users.
}
\examples{
\dontrun{
phenotypes(userid = 1)
phenotypes(userid = "1,6,8", df = TRUE)
phenotypes(userid = "1-8", df = TRUE)

# coerce to data.frame
library(plyr)
df <- ldply(phenotypes(userid = "1-8", df = TRUE))
head(df)
tail(df)

# pass on curl options
phenotypes(1, verbose = TRUE)
}
}
\seealso{
Other opensnp-fxns: 
\code{\link{allgensnp}()},
\code{\link{allphenotypes}()},
\code{\link{annotations}()},
\code{\link{download_users}()},
\code{\link{fetch_genotypes}()},
\code{\link{genotypes}()},
\code{\link{phenotypes_byid}()},
\code{\link{users}()}
}
\concept{opensnp-fxns}
