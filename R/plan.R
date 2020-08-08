the_plan <-
  drake_plan(
   
    words = readLines("inputs/words.txt"),

    histogram_data = make_historgram_data(words),

    histogram_plot = qplot(Length,
                           Freq,
                           data = histogram_data),

    report = target(
      command = {
        rmarkdown::render(knitr_in("doc/report.Rmd"))
        file_out("doc/report.html")
      }
    )

)
