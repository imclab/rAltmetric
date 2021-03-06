\name{altmetrics}
\alias{altmetrics}
\title{Grab altmetric data on any paper}
\usage{
  altmetrics(oid = NULL, id = NULL, doi = NULL,
    pmid = NULL, arXiv = NULL,
    apikey = getOption("altmetricKey"),
    curl = getCurlHandle(), ...)
}
\arguments{
  \item{oid}{\code{oid} Any object ID. Any general object
  identifier as long as the prefix is "doi","pmid",
  "arXiv", or "id".}

  \item{id}{The Altmetric \code{id} of a paper. If
  specifiying directly, the "id" prefix is not necessary.}

  \item{doi}{The \code{doi} of a paper. If specifiying
  directly, the "doi" prefix is not necessary.}

  \item{pmid}{The \code{pmid} of a paper.If specifiying
  directly, the "pmid" prefix is not necessary.}

  \item{arXiv}{The \code{arxiv} ID of a paper.If
  specifiying directly, the "arXiv" prefix is not
  necessary.}

  \item{apikey}{An API key obtained from altmetric. The key
  for this application is
  '37c9ae22b7979124ea650f3412255bf9' and you are free to
  use it for academic non-commercial research. But if you
  start seeing rate limits, please contact support at
  altmetric.com to get your own.

  The function returns detailed metrics. For more
  information on all the fields returned by the function,
  see the API documentation:
  (\url{http://api.altmetric.com/docs/call_citations.html}).
  If you get your own key, you can save it in your
  \code{.rprofile} as
  \code{options(altmetricKey="YOUR_KEY")}}

  \item{curl}{passes on curl handle in a vectorized
  operation}

  \item{...}{additional parameters}
}
\value{
  \code{list}
}
\description{
  This function will retrieve data from Altmetric.com on
  any paper with an appropriate object identifier.
  Acceptable identifiers include dois, arXiv ids, pubmed
  ids and altmetric ids.
}
\examples{
\dontrun{
altmetrics(doi ='10.1890/ES11-00339.1')
Or specfiy the doi with the id
altmetrics('doi/10.1890/ES11-00339.1')
altmetrics(doi ='10.1038/480426a')
Or specfiy the doi with the id
You can do the same for other providers such as pmid, id, and arxiv
altmetrics('doi/10.1038/480426a')
}
}

