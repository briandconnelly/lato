#' Minimal Theme
#'
#' `theme_lato` is a minimal yet flexible [ggplot2] theme designed to put
#' the data front and center. It uses the [Lato](http://www.latofonts.com)
#' ("summer") typeface by Łukasz Dziedzic.
#'
#' @md
#' @param base_family Base font family (default: `Lato Light`)
#' @param base_size Base font size (default: `12` pt)
#' @param base_color Base font color (default: `grey30`)
#' @param line_size Base line size for grid, panel (default: `0.2`)
#' @param baseline Whether or not to show baselines on axes (default: `FALSE`)
#' @param baseline.x Whether or not to show baselines on X axis (default: same as `baseline`)
#' @param baseline.y Whether or not to show baselines on X axis (default: same as `baseline`)
#' @param baseline.size Size of axis baseline (default: `line_size * 3`)
#' @param background.color Background color (default: `white`)
#' @param panel.border Whether or not to draw a border around panels (default: `FALSE`)
#' @param panel.border.size Size of panel border (default: `line_size * 2`)
#' @param legend.box Whether or not to draw box around legend (default: `TRUE`)
#' @param grid Whether or not to show grid lines (default: `TRUE`)
#' @param grid.minor Whether or not to show minor grid lines (default: same as `grid`)
#' @param grid.x Whether or not to show grid lines on X axis (default: same as `grid`)
#' @param grid.y Whether or not to show grid lines on Y axis (default: same as `grid`)
#' @param grid.minor.x Whether or not to show minor grid lines on X axis (default: same as `grid.minor`)
#' @param grid.minor.y Whether or not to show minor grid lines on Y axis (default: same as `grid.minor`)
#' @param grid.color Color for the grid, ticks, baseline, and legend box (default: `grey80`)
#' @param ticks Whether or not to show axis tick marks (default: `FALSE`)
#' @param ticks.x Whether or not to show X axis tick marks (default: same as `ticks`)
#' @param ticks.y Whether or not to show Y axis tick marks (default: same as `ticks`)
#' @param title.family Font family for plot title (default: `"Lato"`)
#' @param title.face Font face for plot title (default: `bold`)
#' @param title.color Color of plot title (default: `base_color`)
#' @param subtitle.family Font family for plot subtitle (default: `base_family`)
#' @param subtitle.face Font face for plot subtitle (default: `italic`)
#' @param subtitle.color Color of plot subtitle (default: `base_color`)
#' @param caption.family Font family for plot caption (default: `base_family`)
#' @param caption.face Font face for plot caption (default: `"italic"`)
#' @param caption.color Color of plot title (default: `grey70`)
#' @param axis.title.family Font family for axis titles (default: `base_family`)
#' @param axis.title.face Font face for axis titles (default: `"plain"`)
#' @param axis.title.color Color of axis titles (default: `base_color`)
#' @param axis.text.family Font family for axis text (default: `base_family`)
#' @param axis.text.face Font face for axis text (default: `plain`)
#' @param axis.text.color Color of axis text (default: `grey50`)
#' @param legend.title.family Font family for legend title (default: `axis.title.family`)
#' @param legend.title.face Font face for legend title (default: `axis.title.face`)
#' @param legend.title.color Color of legend title (default: `axis.title.color`)
#' @param legend.text.family Font family for legend text (default: `base_family`)
#' @param legend.text.face Font face for legend title (default: `axis.text.face`)
#' @param legend.text.color Color of legend text (default: `axis.text.color`)
#' @param aspect.ratio Aspect ratio for panels (no default)
#'
#' @return A named list containing ggplot2 theme information
#' @import ggplot2
#' @export
#'
#' @md
#' @section Installing and Using Lato:
#' Before using this theme, you must
#'
#' extrafont::font_import()
#' extrafont::loadfonts()
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#' library(lato)
#'
#' ggplot(mtcars, aes(wt, mpg, color = as.factor(cyl) )) +
#'     facet_grid(cyl ~ .) +
#'     geom_line() +
#'     geom_point() +
#'     scale_color_hue(name = "# Cylinders") +
#'     labs(
#'         x = "Weight (tons)",
#'         y = "Fuel Efficiency (mpg)",
#'         title = "Just Buy a Convertible",
#'         subtitle = "Lighter cars are more efficient. Shave off some weight by\nditching the roof, and drive your savings to the bank!",
#'         caption = "Source: Motor Trend"
#'     ) +
#'     theme_lato()
#' }
theme_lato <- function(base_family = "Lato Light", base_size = 12, base_color = "grey30", line_size = 0.2,
                       baseline = FALSE, baseline.x = baseline, baseline.y = baseline, baseline.size = line_size * 3,
                       background.color = "white",
                       panel.border = FALSE, panel.border.size = line_size * 2,
                       legend.box = TRUE,
                       grid = TRUE, grid.minor = grid, grid.x = grid, grid.y = grid, grid.minor.x = grid.minor, grid.minor.y = grid.minor, grid.color = "grey80",
                       ticks = FALSE, ticks.x = ticks, ticks.y = ticks,
                       title.family = "Lato", title.face = "bold", title.color = base_color,
                       subtitle.family = base_family, subtitle.face = "italic", subtitle.color = base_color,
                       caption.family = base_family, caption.face = "italic", caption.color = "grey70",
                       axis.title.family = base_family, axis.title.face = "plain", axis.title.color = base_color,
                       axis.text.family = base_family, axis.text.face = "plain", axis.text.color = "grey50",
                       legend.title.family = axis.title.family, legend.title.face = axis.title.face, legend.title.color = axis.title.color,
                       legend.text.family = axis.text.family, legend.text.face = axis.text.face, legend.text.color = axis.text.color,
                       aspect.ratio = NULL) {

    r <- theme_minimal(
        base_size = base_size,
        base_family = base_family
    ) + theme(
        line = element_line(
            color = grid.color,
            size = line_size,
            linetype = "solid",
            lineend = "square",
            arrow = NULL,
            inherit.blank = FALSE
        ),
        rect = element_rect(
            fill = background.color,
            color = NA,
            size = line_size,
            linetype = "solid",
            inherit.blank = FALSE
        ),
        text = element_text(
            family = base_family,
            face = "plain",
            color = base_color,
            size = base_size
        ),
        title = element_text(
            face = "bold"
        ),
        axis.title = element_text(
            family = axis.title.family,
            face = axis.title.face,
            color = axis.title.color,
            size = rel(1.0),
            hjust = 0.98
        ),
        axis.text = element_text(
            family = axis.text.family,
            face = axis.text.face,
            color = axis.text.color,
            size = rel(0.8)
        ),
        axis.ticks = element_blank(),

        legend.box.background = element_rect(
            fill = background.color,
            color = NA,
            size = 0
        ),

        legend.spacing = grid::unit(0, units = "lines"),

        legend.text = element_text(
            family = legend.text.family,
            face = legend.text.face,
            color = legend.text.color,
            size = rel(0.8)
        ),

        legend.title = element_text(
            family = legend.title.family,
            face = legend.title.face,
            color = legend.title.color,
            size = rel(0.8)
        ),

        panel.spacing.x = grid::unit(1.5, units = "lines"),
        panel.spacing.y = grid::unit(1.5, units = "lines"),

        panel.grid.major = element_line(
            color = grid.color,
            size = line_size
        ),
        panel.grid.minor = element_line(
            color = grid.color,
            size = 0.5 * line_size
        ),
        plot.background = element_rect(
            fill = background.color,
            color = NA
        ),
        plot.title = element_text(
            family = title.family,
            face = title.face,
            color = title.color,
            size = rel(1.5),
            hjust = 0.02,
            margin = margin(t = 0.5 * base_size, unit = "pt")
        ),
        plot.subtitle = element_text(
            family = subtitle.family,
            face = subtitle.face,
            color = subtitle.color,
            hjust = 0.02,
            margin = margin(t = 0.5 * base_size, b = 1.5 * base_size, unit = "pt")
        ),
        plot.caption = element_text(
            family = caption.family,
            face = caption.face,
            color = caption.color,
            size = rel(0.8),
            hjust = 0.98,
            margin = margin(t = 0.75 * base_size, unit = "pt")
        ),

        strip.text = element_text(
            family = "Lato",
            color = base_color,
            size = rel(1.0),
            hjust = 0.02
        )
    )

    # Draw a box around the legend -----
    if (legend.box) {
        r <- r + theme(legend.box.background = element_rect(color = grid.color, size = line_size))
    }

    # Add a baseline -----
    if (baseline.x) {
        r <- r + theme(axis.line.x = element_line(size = line_size * 3, color = grid.color, lineend = "square"))
    }

    if (baseline.y) {
        r <- r + theme(axis.line.y = element_line(size = line_size * 3, color = grid.color, lineend = "square"))
    }

    # Add a border around panels -----
    if (panel.border) {
        r <- r + theme(panel.background = element_rect(color = grid.color, size = panel.border.size))
    }

    # Grid Settings -----
    if(!grid.x) {
        r <- r + theme(panel.grid.major.x = element_blank())
    }

    if(!grid.y) {
        r <- r + theme(panel.grid.major.y = element_blank())
    }

    if(!grid.minor.x) {
        r <- r + theme(panel.grid.minor.x = element_blank())
    }

    if(!grid.minor.y) {
        r <- r + theme(panel.grid.minor.y = element_blank())
    }

    # Axis Tick Marks -----
    if (ticks.x) {
        r <- r + theme(axis.ticks.x = element_line(color = grid.color, size = line_size))
    }

    if (ticks.y) {
        r <- r + theme(axis.ticks.y = element_line(color = grid.color, size = line_size))
    }

    # Set the panel aspect ratio -----
    if (!is.null(aspect.ratio)) {
        r <- r + theme(aspect.ratio = aspect.ratio)
    }

    r
}
