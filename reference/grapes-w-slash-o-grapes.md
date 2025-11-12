# Set difference for vectors using custom infix operator

Returns the elements in vector x that are not in vector y.

## Usage

``` r
x %w/o% y
```

## Arguments

- x:

  A vector.

- y:

  A vector to compare.

## Value

Elements of x that are not in y.

## Examples

``` r
1:5 %w/o% c(2, 4)
#> [1] 1 3 5
letters[1:5] %w/o% c("b", "d")
#> [1] "a" "c" "e"
```
