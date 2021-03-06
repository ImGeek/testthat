\name{gives_warning}
\alias{expect_warning}
\alias{gives_warning}
\title{Expectation: does expression give a warning?}
\usage{
gives_warning(regexp = NULL, all = FALSE, ...)

expect_warning(object, regexp = NULL, ..., info = NULL, label = NULL)
}
\arguments{
  \item{regexp}{optional regular expression to match. If
  not specified, just asserts that expression gives some
  warning.}

  \item{all}{if \code{TRUE}, all warnings must match given
  regular expression; if \code{FALSE} (the default), then
  only only warning needs to match}

  \item{...}{other arguments passed to
  \code{\link{matches}}}

  \item{object}{object to test}

  \item{info}{extra information to be included in the
  message (useful when writing tests in loops).}

  \item{label}{object label. When \code{NULL}, computed
  from deparsed object.}
}
\description{
Needs to match at least one of the warnings produced by the
expression.
}
\examples{
f <- function(x) {
  if (x < 0) warning("*x* is already negative")
  -x
}
expect_that(f(-1), gives_warning())
expect_that(f(-1), gives_warning("already negative"))
\dontrun{expect_that(f(1), gives_warning())}

expect_warning(f(-1))
expect_warning(f(-1), "already negative")
\dontrun{expect_warning(f(1))}

# You can use the arguments of grepl to control the matching
expect_warning(f(-1), "*x*", fixed = TRUE)
expect_warning(f(-1), "NEGATIVE", ignore.case = TRUE)
}
\seealso{
Other expectations: \code{\link{equals}},
\code{\link{expect_equal}}; \code{\link{expect-compare}},
\code{\link{expect_less_than}},
\code{\link{expect_more_than}}, \code{\link{is_less_than}},
\code{\link{is_more_than}};
\code{\link{expect_equivalent}},
\code{\link{is_equivalent_to}}; \code{\link{expect_error}},
\code{\link{throws_error}}; \code{\link{expect_false}},
\code{\link{is_false}}; \code{\link{expect_identical}},
\code{\link{is_identical_to}}; \code{\link{expect_is}},
\code{\link{is_a}}; \code{\link{expect_match}},
\code{\link{matches}}; \code{\link{expect_message}},
\code{\link{shows_message}}; \code{\link{expect_named}},
\code{\link{has_names}}; \code{\link{expect_null}},
\code{\link{is_null}}; \code{\link{expect_output}},
\code{\link{prints_text}}; \code{\link{expect_true}},
\code{\link{is_true}}; \code{\link{takes_less_than}}
}

