# Robust and reproducible research

Information taken from the following sources:

- Bioinformatics data skills - reproducible and robust research with open source tools (Vince Buffalo, 2015)
- [Karl Bromans website](https://kbroman.org/)

## On reproducible and robust research

> Non-reproducible single occurrences are of no significance to science
>
> \- *The logic of scientific discovery (1959)*, Karl Popper

In the so-called Duke Saga, Baggerly and Coombes found multiple serious errors when trying to reproduce a study's findings. Their take-home message was:

> Common errors are simple, and simple errors are common.
>
> \- Deriving chemosensitivity from cell lines: Forensic bioinformatics and reproducible research in high-throughput biology (2009)

In wetlab biology, it's easy to discover if anything went wrong. In computational work and statistics, however, mistakes are often well-hidden (or even totally silent). To make matters worse, it is common that code is run only once. Therefore, we need to develop both a healthy set of skills and habits.

> Since the computer is a sharp enough tool to be really useful, you can cut yourself on it.
>
> \- *The technical skills of statistics (1964)*, John Tukey

Adopt a cautious attitude towards your tools, and keep a healthy skepticism that there might be something wrong with your data. This is summarized in the golden rule of bioinformatics: **Never trust your tools (or data)**.

Therefore, in the words of Vince Buffalo:

> Robust research is largely about adopting a set of practices that stack the odds in you favor that a silent error won't confound your results
>
> \- *Bioinformatics data skills (2015)*

Acknowledge that:

- You will need run the analysis over again with new/changed data.
- Your project will look cryptic to you and collaborators.

## Best practices

### Reproducibility

*At least:*

- Share data.
- Share metadata (data about data).
- Share code.
- Document everything in plain-text README files.
- Make figures and statistics the results of scripts.
- Use code as documentation.

*Optimally:*

- Organize your data and code.
  - Encapsulate everything within one directory.
  - Separate raw data from derived data.
  - Separate the data from the code.
  - Use relative paths (never absolute paths).
  - Choose file names carefully.
  - Avoid using “final” in a file name.
  - Write README files.
- Everything with a script.
  - Ideally, get the data in the most-raw form possible.
  - If you need to download external data, such as from the web, it’s best to do so via a script.
  - If you need to convert a data file from one form to another, use a script.
  - Don’t hand-edit data files.
  - All aspects of data cleaning should be in scripts.
  - Each aspect of the analysis should be in scripts.
  - Save your seeds for random number generation.
- Automate the process.
  - Ideally, the reproduction of your results is a one-button operation.
  - Consider GNU Makefiles that.
- Turn scripts into reproducible reports.
  - Literate programming in Rmarkdown.
- Turn repeated code into functions.
  - Keep a functions.R file to store project-specific code.
- Package functions for reuse.
  - devtools, roxygen2, testthat.
- Use version control.
  - Git, GitHub.
- License your software.
  - Software licenses are about two things: copyright, and protecting yourself from being held liable if your software screws something up somewhere down the line.
  - Pick a license, any license.

### Robustness

- Pay attention to experimental design: brilliant analyses cannot save an experiment with a bad design.
- Write code for humans and computers: code should be readable, modular and reusable; use the tidyverse style guide.
- Write data for computers: format data correctly so that computers can read it.
- Let your computer do the work for you: they excel at repetitive tasks.
- Make assertions and be loud in code and in your methods: specify assumptions about data and how code should work.
- Test code that you write: testthat, stopifnot, expect_equal, expect_match ++.
- Use existing libraries whenever possible: don't let the power get to your head.
- Treat data as read-only: do everything in scripts.
- Spend time developing frequently used scripts into tools: save time, prevent silly mistakes.
- Let data prove that it's high quality: perform rigorous EDA.
