# PROJECT NAME

<br>
**Project started:** <insert date>  
**Author:** Jacob J. Christensen, clinical dietitian, Ph.D.

---

## Project description

<insert concise and elaborate project description>  
<taken from one of the main publications or the project description itself>

## Prerequisites/Installation

Here I list all dependencies, especially regarding software. I list *what to install* and *how to install it*.

### R and RStudio

R can be downloaded at https://www.r-project.org/. Click "CRAN" under "Download", and follow the download instructions. Choose the *Cloud version*, originally sponsored by RStudio. R is the core application necessary, however I highly advise running R from within the RStudio IDE, as this has a lot of great functionality for doing data science. Download the free desktop version of RStudio at https://www.rstudio.com/products/rstudio/download/.

Cheatsheets: https://www.rstudio.com/resources/cheatsheets/  
Tidyverse: https://www.tidyverse.org/  
The tidyverse style guide: https://www.rstudio.com/resources/cheatsheets/  
The tidy tools manifesto: https://cloud.r-project.org/web/packages/tidyverse/vignettes/manifesto.html


### Pandoc and LaTeX

We write documents in R/RStudio using plain-text formats, such as Markdown and Rmarkdown. To convert these into other formats such as .pdf, we need Pandoc and LaTeX. If these are not installed, please do so from https://pandoc.org/installing.html and https://yihui.name/tinytex/. Note that we don't need the full-sized version of LaTeX; we prefer the mini-version known as TinyTeX, by Yihui Xie.

### R/Bioconductor packages

R comes with a key set of packages pre-installed. However, for our needs, we must install additional packages. We do this using the `install.packages()` function. For example, to install all packages in the `tidyverse` meta package, type `install.packages("tidyverse")` in the console, and hit enter.

We don't need to install one package at a time, though; we can install a whole bunch of packages simultaneously:

```
install.packages(c("tidyverse", "knitr", "rmarkdown", "broom", "igraph", "ggraph", "tidygraph", "caret", "visdat", "naniar", "RColorBrewer"))
```

...And so on.

We download Bioconductor and its core set of packages by writing:

```
if (!requireNamespace("BiocManager"))
    install.packages("BiocManager")
BiocManager::install()
```

...into the R console, and then hit enter. Then, to install Bioconductor packages, we use:

```
BiocManager::install(c("GenomicFeatures", "AnnotationDbi", "WGCNA", "pheatmap"))
```

...And so on. *Note that all R and Bioconductor package dependencies are specified at the start of the relevant scripts.*

### Writing and citing

We use Zotero as citation manager. It can be downloaded from: https://www.zotero.org/. We create Better BibTeX .bib files for use in our manuscripts. For this, we need to download Better BibTeX: https://retorque.re/zotero-better-bibtex/installation/. Follow the installation instructions. When we need a citation style, find the correct type in the official Citation Style Language repository (CSL): https://github.com/citation-style-language/styles.


## Contributing

GitHub: https://github.com/jacobjchristensen

Feel free to post an issue or suggestions.

## License

This work is not yet licensed.

<Provide licensing information>

## Citation

We have no overall citation for this work. However, specific articles should be cited normally.

<How this work can be cited>
<Provide DOI numbers>

## Contact

Jacob J. Christensen, clinical dietitian, Ph.D.

Norwegian National Advisory Unit on Familial Hypercholesterolemia  
Department of Endocrinology  
Morbid Obesity and Preventive Medicine  
Oslo University Hospital  
Forskningsveien 2B  
0373 Oslo  
Norway

Department of Nutrition  
Institute of Basic Medical Sciences  
University of Oslo  
Sognsvannsveien 9  
0372 Oslo  
Norway

Work e-mail: j.j.christensen@medisin.uio.no  
Work phone: +47 22 85 15 56

Private e-mail: jjuelchr@gmail.com  
Private phone: +47 924 50 067

---

## Reproduce work

We can work on a project without adversely affecting the master branch using git branches; when changes are ready to be shared, we can merge the branch. We can for example:

- Experiment with the project
- Develop new features and analyses
- Fix analyses bugs
- Collaborate

And, importantly: **reproduce work at an earlier stage in the project**. Do it like this:

`cd project-name-path` takes you to the project folder  
`git status` gives you the git status  
`git log --oneline`  gives you the project log; now you can scroll through and find the commit of interest  
`git log --oneline | grep -i "submission"` pulls our all lines/rows in the log that mentions the word "submission" (`-i` ignores case), which may point you to one ofthe correct commit SHA-1 IDs (there may be several commit messages around the time of submission/revision/acceptance)  
`git log --pretty --max-count=1 SHA-1`  shows you a bit more of the specific commit, such as date and time  

`git checkout -b branch-name SHA-1` creates a new branch, switches to it, and resets project folders to that specific commit state.

Now you can work on your project, for example: reproduce work at this earlier timepoint. If you wish to save any of your work, such as scripts, figures/tables or reports, do this by copying them over to a new directory outside of your project folder. Modified versions of old script, if needed, can be included in the master HEAD afterwards.

When finished, move back to master and (if you don't need it anymore) delete the temporary branch.

`git checkout master`
`git branch -d branch-name`

`git log --oneline` doesn't show this history, but `git reflog` does.

---

## Project documentation

Here I document my daily work in detail.

### Actual date, written as YYYY-MM-DD

<insert detailed description of todays work>
<Bulletpoints are okay>
