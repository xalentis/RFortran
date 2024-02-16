# compile Fortran lib in terminal/command line using:
# R CMD SHLIB horner.f90

dyn.load("horner.so")

horner <- function(a, x) {
  .Fortran("horner", as.integer(length(a)), a, x, y=0)$y
}

horner(c(-2, 0, 1), 1.414)
