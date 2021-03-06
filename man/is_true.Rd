\name{is_true}
\alias{expect_true}
\alias{is_true}
\title{Expectation: is the object true?}
\usage{
is_true()

expect_true(object, info = NULL, label = NULL)
}
\arguments{
  \item{object}{object to test}

  \item{info}{extra information to be included in the
  message (useful when writing tests in loops).}

  \item{label}{object label. When \code{NULL}, computed
  from deparsed object.}
}
\description{
This is a fall-back expectation that you can use when none
of the other more specific expectations apply. The
disadvantage is that you may get a less informative error
message.
}
\details{
Attributes are ignored.
}
\examples{
expect_that(2 == 2, is_true())
expect_true(2 == 2)
# Failed expectations will throw an error
\dontrun{
expect_that(2 != 2, is_true())
}
expect_that(!(2 != 2), is_true())
# or better:
expect_that(2 != 2, is_false())

a <- 1:3
expect_that(length(a) == 3, is_true())
# but better to use more specific expectation, if available
expect_that(length(a), equals(3))
}
\seealso{
\code{\link{is_false}} for complement

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
\code{\link{prints_text}}; \code{\link{expect_warning}},
\code{\link{gives_warning}}; \code{\link{takes_less_than}}
}

