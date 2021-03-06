% Generated by roxygen2 (4.0.2): do not edit by hand
\name{workflow}
\alias{workflow}
\title{Run a full workflow.}
\usage{
workflow(occurrence, covariate, process, model, output,
  forceReproducible = FALSE)
}
\arguments{
\item{occurrence}{Occurrence module to be used.}

\item{covariate}{Covariate module to be used.}

\item{process}{Process module to be used.}

\item{model}{SDM model module to be used.}

\item{output}{Output module to be used.}

\item{forceReproducible}{Logical whether to force zoon to collect modules
 from the online repo. This ensure the analysis is reproducible.}
}
\value{
A list with the results of each module and a copy of the
 code used to execute the workflow (what's there now should be source-able
 though I'm sure there is a much neater approach than the one I took - the
 ultimate aim would be a much nicer way of enhancing reproducibility).
}
\description{
This is the main function of zoon. The arguments should specify at least five
  modules, at least one of each type.
  If modules do not have any arguments to be specific (or defaults are being
  used then simply give the names of the module. If arguments are needed
  give the modules in the form of a function
  e.g. occurrence = AModule(para1 = 2, para2 = 'detail')
}
\examples{
# run a workflow, using the logistic regression model
#work1 <- workflow(occurrence = 'UKAnophelesPlumbeus',
#                 covariate = 'UKAir',
#                 process = 'OneHundredBackground',
#                 model = 'LogisticRegression',
#                 output = 'SameTimePlaceMap')

#str(work1, 1)

#work2 <- workflow('UKAnophelesPlumbeus', 'UKAir', 'OneHundredBackground',
#           'RandomForest', 'PrintMap')
}

