#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Key Bernie
#'
#' @param data,params,size key stuff
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
draw_key_bernie <-  function(data, params, size) {

  filename <- system.file(paste0(data$bernie, ".png"), package = "ggbernie", mustWork = TRUE)
  # print(filename)
  img <- as.raster(png::readPNG(filename))
  aspect <- dim(img)[1]/dim(img)[2]
  # rasterGrob
  grid::rasterGrob(image         = img)
}

# bernieGrob
bernieGrob <- function(x, y, size, bernie = "sitting", geom_key = list(sitting = "sitting.png",
                                                                       stand = "stand.png",
                                                                       head = "head.png",
                                                                       asking = "asking.png",
                                                                       young = "young.png",
                                                                       arms = "arms.png",
                                                                       eyebrows = "eyebrows.png")) {

  filename <- system.file(geom_key[[unique(bernie)]], package = "ggbernie", mustWork = TRUE)
  img <- as.raster(png::readPNG(filename))

  # rasterGrob
  grid::rasterGrob(x             = x,
                   y             = y,
                   image         = img,
                   # only set height so that the width scales proportionally and so that the icon
                   # stays the same size regardless of the dimensions of the plot
                   height        = size * ggplot2::unit(20, "mm"))
}

# GeomBernie
GeomBernie <- ggplot2::ggproto(`_class` = "GeomBernie",
                               `_inherit` = ggplot2::Geom,
                               required_aes = c("x", "y"),
                               non_missing_aes = c("size", "bernie"),
                               default_aes = ggplot2::aes(size = 1, bernie = "sitting", shape  = 19,
                                                          colour = "black",   fill   = NA,
                                                          alpha  = NA,
                                                          stroke =  0.5,
                                                          scale = 5,
                                                          image_filename = "sitting"),

                               draw_panel = function(data, panel_scales, coord, na.rm = FALSE) {
                                 coords <- coord$transform(data, panel_scales)
                                 ggplot2:::ggname(prefix = "geom_bernie",
                                                  grob = bernieGrob(x = coords$x,
                                                                    y = coords$y,
                                                                    size = coords$size,
                                                                    bernie = coords$bernie))
                               },

                               draw_key = draw_key_bernie)

#' @title Bernie layer
#' @description The geom is used to add Bernie Sanders to plots. See ?ggplot2::geom_points for more info.
#' @inheritParams ggplot2::geom_point
#' @examples
#'
#' # install.packages("ggplot2")
#'library(ggplot2)
#'
#' ggplot(mtcars) +
#'  geom_bernie(aes(mpg, wt), bernie = "sitting") +
#'  theme_bw()
#'
#' ggplot(mtcars) +
#'  geom_bernie(aes(mpg, wt), bernie = "head") +
#'  theme_bw()
#'
#' @importFrom grDevices as.raster
#' @export
geom_bernie <- function(mapping = NULL,
                        data = NULL,
                        stat = "identity",
                        position = "identity",
                        ...,
                        na.rm = FALSE,
                        show.legend = NA,
                        inherit.aes = TRUE) {

  ggplot2::layer(data = data,
                 mapping = mapping,
                 stat = stat,
                 geom = GeomBernie,
                 position = position,
                 show.legend = show.legend,
                 inherit.aes = inherit.aes,
                 params = list(na.rm = na.rm, ...))
}




