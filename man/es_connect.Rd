\name{es_connect}
\alias{es_connect}
\alias{print.es_conn}
\title{Set connection details to an Elasticsearch engine.}
\usage{
es_connect(url = "http://127.0.0.1", port = 9200, user = NULL,
  pwd = NULL)

\method{print}{es_conn}(x, ...)
}
\arguments{
  \item{url}{the url, defaults to localhost
  (http://127.0.0.1)}

  \item{port}{port to connect to, defaults to 5984}

  \item{user}{User name, if required for the connection.
  You can specify, but ignored for now.}

  \item{pwd}{Password, if required for the connection. You
  can specify, but ignored for now.}

  \item{x}{Object to print.}

  \item{...}{Further args passed on to print for the
  es_conn class.}
}
\description{
Set connection details to an Elasticsearch engine.
}
\details{
The default configuration is set up for localhost access on
port 9200, with no username or password.

Pass on the returned 'es_conn' object to other functions in
this package.
}
\examples{
(conn <- es_connect())
}

