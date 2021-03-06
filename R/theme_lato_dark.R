#' \code{theme_lato_dark} is a dark version.
#' @rdname theme_lato
#' @export
theme_lato_dark <- function(base_family = "Lato Light", base_size = 12, base_color = "grey70", line_size = 0.2,
                            baseline = FALSE, baseline.x = baseline, baseline.y = baseline, baseline.size = line_size * 3,
                            background.color = "white",
                            panel.border = FALSE, panel.border.size = line_size * 2,
                            legend.box = TRUE,
                            grid = TRUE, grid.minor = grid, grid.x = grid, grid.y = grid, grid.minor.x = grid.minor, grid.minor.y = grid.minor, grid.color = "grey30",
                            ticks = FALSE, ticks.x = ticks, ticks.y = ticks,
                            title.family = "Lato", title.face = "bold", title.color = base_color,
                            subtitle.family = base_family, subtitle.face = "italic", subtitle.color = base_color,
                            caption.family = base_family, caption.face = "italic", caption.color = "grey50",
                            axis.title.family = base_family, axis.title.face = "plain", axis.title.color = base_color,
                            axis.text.family = base_family, axis.text.face = "plain", axis.text.color = "grey50",
                            legend.title.family = axis.title.family, legend.title.face = axis.title.face, legend.title.color = axis.title.color,
                            legend.text.family = axis.text.family, legend.text.face = axis.text.face, legend.text.color = axis.text.color,
                            aspect.ratio = NULL) {

    warning("I barely started working on this theme, so it's currently not looking very good!")

    theme_lato(
        base_family = base_family,
        base_size = base_size,
        base_color = base_color,
        line_size = line_size,
        baseline = baseline,
        baseline.x = baseline.x,
        baseline.y = baseline.y,
        baseline.size = baseline.size,
        background.color = "black",
        panel.border = panel.border,
        panel.border.size = panel.border.size,
        legend.box = legend.box,
        grid = grid,
        grid.minor = grid.minor,
        grid.x = grid.x,
        grid.y = grid.y,
        grid.minor.x = grid.minor.x,
        grid.minor.y = grid.minor.y,
        grid.color = grid.color,
        ticks = ticks,
        ticks.x = ticks.x,
        ticks.y = ticks.y,
        title.family = title.family,
        title.face = title.face,
        title.color = title.color,
        subtitle.family = subtitle.family,
        subtitle.face = subtitle.face,
        subtitle.color = subtitle.color,
        caption.family = caption.family,
        caption.face = caption.face,
        caption.color = caption.color,
        axis.title.family = axis.title.family,
        axis.title.face = axis.title.face,
        axis.title.color = axis.title.color,
        axis.text.family = axis.text.family,
        axis.text.face = axis.text.face,
        axis.text.color = axis.text.color,
        legend.title.family = legend.title.family,
        legend.title.face = legend.title.face,
        legend.title.color = legend.title.color,
        legend.text.family = legend.text.family,
        legend.text.face = legend.text.face,
        legend.text.color = legend.text.color,
        aspect.ratio = aspect.ratio
    )
}
