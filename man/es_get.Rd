\name{es_get}
\alias{es_get}
\title{Get documents via the get API.}
\usage{
es_get(conn, index = NULL, type = NULL, id = NULL, source = FALSE,
  fields = NULL, exists = FALSE, raw = FALSE, callopts = list(),
  verbose = TRUE, ...)
}
\arguments{
  \item{conn}{Connection object describing base url, port,
  and any authentication details.}

  \item{index}{Index}

  \item{type}{Document type}

  \item{raw}{If TRUE (default), data is parsed to list. If
  FALSE, then raw JSON.}

  \item{callopts}{Curl args passed on to httr::POST.}

  \item{verbose}{If TRUE (default) the url call used
  printed to console.}

  \item{...}{Further args passed on to elastic search HTTP
  API as parameters.}

  \item{id}{Document id}

  \item{source}{XXX}

  \item{fields}{Fields to return from the response object.}

  \item{exists}{XXX}
}
\description{
Get documents via the get API.
}
\details{
There are a lot of terms you can use for Elasticsearch. See
here
\url{http://www.elasticsearch.org/guide/reference/query-dsl/}
for the documentation.
}
\examples{
\dontrun{
init <- es_connect()
es_get(init, index='twitter', type='tweet', id=1)

# Get certain fields
es_get(init, index='twitter', type='tweet', id=1, fields='user')

# Just test for existence of the document
es_get(init, index='twitter', type='tweet', id=1, exists=TRUE)

# Just get source (NOT WORKING RIGHT NOW)
es_get(init, index='twitter', type='tweet', id=1, source=TRUE)
}
}

