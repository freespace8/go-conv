# Go Package: conv

  [![GoDoc](http://img.shields.io/badge/go-documentation-blue.svg?style=flat-square)](http://godoc.org/github.com/freespace8/go-conv)
  [![Go Report Card](https://goreportcard.com/badge/github.com/freespace8/go-conv?style=flat-square)](https://goreportcard.com/report/github.com/freespace8/go-conv)
  [![Coverage Status](https://img.shields.io/codecov/c/github/freespace8/go-conv/master.svg?style=flat-square)](https://codecov.io/github/freespace8/go-conv?branch=master)
  [![Build Status](http://img.shields.io/travis/freespace8/go-conv.svg?style=flat-square)](https://travis-ci.org/freespace8/go-conv)
  [![License](http://img.shields.io/badge/license-mit-blue.svg?style=flat-square)](https://raw.githubusercontent.com/freespace8/go-conv/master/LICENSE)

  > Get:
  > ```bash
  > go get -u github.com/freespace8/go-conv
  > ```
  >
  > Example:
  > ```Go
  > // Basic types
  > if got, err := conv.Bool(`TRUE`); err == nil {
  > 	fmt.Printf("conv.Bool(`TRUE`)\n  -> %v\n", got)
  > }
  > if got, err := conv.Duration(`1m2s`); err == nil {
  > 	fmt.Printf("conv.Duration(`1m2s`)\n  -> %v\n", got)
  > }
  > var date time.Time
  > err := conv.Infer(&date, `Sat Mar 7 11:06:39 PST 2015`)
  > fmt.Printf("conv.Infer(&date, `Sat Mar 7 11:06:39 PST 2015`)\n  -> %v\n", got)
  > ```
  >
  > Output:
  > ```Go
  > conv.Bool(`TRUE`)
  >   -> true
  > conv.Duration(`1m2s`)
  >   -> 1m2s
  > conv.Infer(&date, `Sat Mar 7 11:06:39 PST 2015`)
  >   -> 2015-03-07 11:06:39 +0000 PST
  > ```


## Intro

**Notice:** If you begin getting compilation errors use the v1 import path `gopkg.in/freespace8/go-conv.v1` for an immediate fix and to future-proof.

Package conv provides fast and intuitive conversions across Go types. This library uses reflection to be robust but will bypass it for common conversions, for example string conversion to any type will never use reflection. All functions are safe for concurrent use by multiple Goroutines.

{{ range Examples -}}
### {{ .Title }}

  {{ .Summary }}

  > Example:
  > ```Go
  > {{ .Code }}
  > ```
  >
  > Output:
  > ```Go
  > {{ .Output }}
  > ```


{{ end -}}

## Contributing

Feel free to create issues for bugs, please ensure code coverage remains 100%
with any pull requests.


## Bugs and Patches

  Feel free to report bugs and submit pull requests.

  * bugs:
    <https://github.com/freespace8/go-conv/issues>
  * patches:
    <https://github.com/freespace8/go-conv/pulls>
