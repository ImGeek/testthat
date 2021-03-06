\name{test_file}
\alias{test_file}
\title{Run all tests in specified file.}
\usage{
test_file(path, reporter = "summary", env = test_env())
}
\arguments{
  \item{path}{path to file}

  \item{reporter}{reporter to use}

  \item{env}{environment in which to execute the tests}
}
\value{
a data frame of the summary of test results
}
\description{
Run all tests in specified file.
}

