#' Create a postcard
#'
#' @param width Width
#' @param height Height
#' @param text Text
#' @param text_width Text Width
#' @param text_x Text X
#' @param text_y Text Y
#' @param family Font family
#' @param background_colour Background Colour
#' @param text_colour Text Colour
#'
#' @return A ggplot2 object
#' @export

postcard <- function(width,
                     height,
                     text,
                     text_width,
                     text_x,
                     text_y,
                     family,
                     background_colour,
                     text_colour) {

  plot <- ggplot2::ggplot() +
    ggplot2::geom_rect(
      ggplot2::aes(
        xmin = 1,
        xmax = width,
        ymin = 1,
        ymax = height
      ),
      fill = background_colour
    ) +
    ggplot2::annotate("text",
                      x = text_x,
                      y = text_y,
                      size = 10,
                      color = text_colour, family = family,
                      label = stringr::str_wrap(
                        text,
                        width = text_width
                      )
    ) +
    ggplot2::theme_void()

  return(plot)




}

# postcard(width = 5,
#               height = 7,
#               text = "Hello World",
#               text_width = 10,
#               text_x = 3,
#               text_y = 4,
#               family = "serif",
#               background_colour = "orange",
#               text_colour = "white")

# TO DO: ggfx - shadow
# ggplot() +
#   with_shadow(geom_rect(
#     aes(
#       xmin = 1,
#       xmax = 5,
#       ymin = 1,
#       ymax = 7
#     ),
#     fill = "orange"), sigma = 1, colour = "darkgrey") +
#   theme_void()
