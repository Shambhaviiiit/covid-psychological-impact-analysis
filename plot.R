ggplot(data, aes(x = group, y = value)) +
  ## add half-violin from {ggdist} package
  ggdist::stat_halfeye(
    ## custom bandwidth
    adjust = .5,
    ## adjust height
    width = .6,
    ## move geom to the right
    justification = -.2,
    ## remove slab interval
    .width = 0,
    point_colour = NA
  ) +
  geom_boxplot(
    width = .15,
    ## remove outliers
    outlier.color = NA
    ## `outlier.shape = NA` or `outlier.alpha = 0` works as well
  ) +
  ## add dot plots from {ggdist} package
  ggdist::stat_dots(
    ## orientation to the left
    side = "left",
    ## move geom to the left
    justification = 1.12,
    ## adjust grouping (binning) of observations
    binwidth = .25
  ) +
  ## remove white space on the sides
  coord_cartesian(xlim = c(1.3, 2.9))