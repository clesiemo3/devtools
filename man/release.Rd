% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/release.r
\name{release}
\alias{release}
\title{Release package to CRAN.}
\usage{
release(pkg = ".", check = TRUE, args = NULL)
}
\arguments{
\item{pkg}{package description, can be path or package name.  See
\code{\link{as.package}} for more information}

\item{check}{if \code{TRUE}, run checking, otherwise omit it.  This
is useful if you've just checked your package and you're ready to
release it.}

\item{args}{An optional character vector of additional command
line arguments to be passed to \code{R CMD build}.}
}
\description{
Run automated and manual tests, then ftp to CRAN.
}
\details{
The package release process will:

\itemize{

\item Confirm that the package passes \code{R CMD check}
  \item Ask if you've checked your code on win-builder
  \item Confirm that news is up-to-date
  \item Confirm that DESCRIPTION is ok
  \item Ask if you've checked packages that depend on your package
  \item Build the package
  \item Submit the package to CRAN, using comments in "cran-comments.md"
}

You can also add arbitrary extra questions by defining an (un-exported)
function called \code{release_questions()} that returns a character vector
of additional questions to ask.

You also need to read the CRAN repository policy at
\url{https://cran.r-project.org/web/packages/policies.html} and make
sure you're in line with the policies. \code{release} tries to automate as
many of polices as possible, but it's impossible to be completely
comprehensive, and they do change in between releases of devtools.
}
\section{Guarantee}{


If a devtools bug causes one of the CRAN maintainers to treat you
impolitely, I will personally send you a handwritten apology note.
Please forward me the email and your address, and I'll get a card in
the mail.
}

