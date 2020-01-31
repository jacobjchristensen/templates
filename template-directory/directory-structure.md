# Project organization

## Tree outline of subdirectories

```
.
├── 1-management
│   ├── 1-proposals
│   ├── 2-finance
│   ├── 3-project-descriptions
│   ├── 4-meetings
│   └── 5-reports
├── 2-ethics-governance
│   ├── 1-applications
│   ├── 2-approvals
│   └── 3-consent-forms
├── 3-data-collection
│   ├── data-input
│   │   ├── clinic
│   │   ├── dexa
│   │   ├── diet
│   │   ├── omics
│   │   │   ├── bioanalyzer
│   │   │   ├── cdna
│   │   │   ├── lda
│   │   │   ├── microarray
│   │   │   ├── nanodrop
│   │   │   ├── nanostring
│   │   │   ├── plex
│   │   │   └── sequencing
│   │   └── questionnaires
│   ├── information-sheets
│   ├── organize-logistics
│   ├── questionnaires
│   └── study-protocols
│       ├── clinical-measurements
│       ├── lab-omics
│       └── lab-sampling
├── 4-analysis-01
│   ├── data
│   │   ├── external
│   │   ├── literature
│   │   ├── processed
│   │   └── raw
│   │       ├── clinic
│   │       ├── dexa
│   │       ├── diet
│   │       ├── omics
│   │       │   ├── bioanalyzer
│   │       │   ├── cdna
│   │       │   ├── lda
│   │       │   ├── microarray
│   │       │   ├── nanodrop
│   │       │   ├── nanostring
│   │       │   ├── plex
│   │       │   └── sequencing
│   │       └── questionnaires
│   ├── results
│   │   ├── figures
│   │   │   ├── pdf
│   │   │   └── png
│   │   ├── interactive
│   │   ├── reports
│   │   │   ├── html
│   │   │   └── pdf
│   │   └── tables
│   └── scripts
└── 5-documentation
    ├── manuscript-01
    │   ├── feedback-co-authors
    │   ├── feedback-journals
    │   ├── figures
    │   ├── repository
    │   │   └── reports
    │   └── tables
    ├── manuscript-02
    │   ├── feedback-co-authors
    │   ├── feedback-journals
    │   ├── figures
    │   ├── repository
    │   │   └── reports
    │   └── tables
    ├── posters
    ├── presentations
    └── publicity
```
<br>

### The specific parts

```
.
├── 1-management
│   ├── 1-proposals
│   ├── 2-finance
│   ├── 3-project-descriptions
│   ├── 4-meetings
│   └── 5-reports
```

Here we keep all files related to *managing and planning the research project*. For example: project background, project proposals, descriptions and plans, funding applications, budget, and project meetings and reports (on a management-level; not details related to specific analyses or sub-projects).

<br>
```
├── 2-ethics-governance
│   ├── 1-applications
│   ├── 2-approvals
│   └── 3-consent-forms
```

Here we keep all files related to *legislative and ethical requirements and privacy issues in the research project*. For example: applications for ethical approval, insurance, and participant information sheets (e.g. consent forms).

<br>
```
├── 3-data-collection
│   ├── data-input
│   │   ├── clinic
│   │   ├── dexa
│   │   ├── diet
│   │   ├── omics
│   │   │   ├── bioanalyzer
│   │   │   ├── cdna
│   │   │   ├── lda
│   │   │   ├── microarray
│   │   │   ├── nanodrop
│   │   │   ├── nanostring
│   │   │   ├── plex
│   │   │   └── sequencing
│   │   └── questionnaires
│   ├── information-sheets
│   ├── organize-logistics
│   ├── questionnaires
│   └── study-protocols
│       ├── clinical-measurements
│       ├── lab-omics
│       └── lab-sampling
```

Here we keep files for *data collection*:

- *information-sheets*: includes invitation letters (age-adjusted ++), travel directions, information about dietary registration and questionnaires ++, CRF for phone interview and for visits (1, 2 ++), RD prescription, health card, evaluation form, info in case biochemistry indicating disease (e.g. info letters to participant, letter to GP), reminders (sms, mail ++), requisitions (biochemistry ++). Note that "higher-order information", such as ethics application and approval, and consent form, is kept under management/ or ethics-governance/.

- *organize-logistics/*: includes project overview (long- and short-term calendar overviews), visit flow charts (what to do on each visit ++).

- *study-protocols/*: lab protocols (blood sampling, preparation, mRNA analyses, Nanostring, etc), clinical measurements (blood pressure, weight, height).

- *questionnaires/*: the questionnaires that participants are going to fill out, if any.

- *data-input*: here we plot and gather all the data to electronic format. Herein, version control is done by naming and dating the files appropriately. All intermediate file stages are stored. For large genomics files, usually only one file; for phenotypical data, usually many intermediate files. **All modifications is done on a branch or higher version of the current file.**

<br>
```
├── 4-analysis-01
│   ├── data
│   │   ├── external
│   │   ├── literature
│   │   ├── processed
│   │   └── raw
│   │       ├── clinic
│   │       ├── dexa
│   │       ├── diet
│   │       ├── omics
│   │       │   ├── bioanalyzer
│   │       │   ├── cdna
│   │       │   ├── lda
│   │       │   ├── microarray
│   │       │   ├── nanodrop
│   │       │   ├── nanostring
│   │       │   ├── plex
│   │       │   └── sequencing
│   │       └── questionnaires
```

This is the *sub-project-specific data analysis folder*. Rename "analysis-01" to something meaningful, e.g. a technology-centered name ("bprhs-metabolomics-snps") or relevant acronym ("metXsnp"), a research question-centered ("gene-environment-metabolites-age-phenotype") or relevant acronym for that ("GxEmet-age"), or something similar.

- *data/*: this folder is **ignored by git**, as it will likely contain some very large raw or intermediate data files.

  - *raw/*: raw data. *We do not touch the current version* - **current version is read-only**. These data files are usually `cp`-d from the *data-collection/data-input/* folder.

  - *processed/*: for processed data files, including .csv, .txt, .RData, .rds, and so on.

  - *external/*: for processed data retrieved from external sources (such as website-tools), for example output generated from CIRBERSORT, DAVID or similar.

  - *literature/*: project-relevant data retrieved from the literature, such as from articles (main or supplemental data), or databases (e.g. genome browsers).


*Note that this folder could be one of _many_ resulting from a single main project (and a single data collection phase)!*

- In the main project directory, you could add more *04-analysis* folders, which then become sub-projects.
- Names of sub-projects should correspond to names in the *documentation/* folder.
- This is highly relevant for managing the work of many people simultaneously, such as master and PhD students.

<br>
```
│   ├── results
│   │   ├── figures
│   │   │   ├── pdf
│   │   │   └── png
│   │   ├── interactive
│   │   ├── reports
│   │   │   ├── html
│   │   │   └── pdf
│   │   └── tables
```

Here we keep all result output:

- *reports/*: contains the latest version of reports (notebooks) in various formats, in which code and documentation is embedded with figures and tables, directly in one single file. They are named according to the script they were derived from.

- *figures/*: contains figures printed directly from the reports. png figures derive from the html reports, and pdf figures derive from the pdf reports.

- *tables/*: is table output.

- *interactive/*: contains dashboards (that must run from an active R session). These are meant to load data from the data/ directory, and create relevant graphics for interactive visualizations. This is particularly relevant for exploratory data analysis: bivariate visualizations of phenotype/dietary data, PCA, heatmaps, standard clustering (kmeans and hierarchical clustering), and the like.

<br>
```
│   └── scripts
```

Contains all types of *scripts*, such as:

- *.Rmd*: for most of the code
- *.R*: mainly for self-defined functions
- *.sh*: mainly for file management

<br>
```
└── 5-documentation
    ├── manuscript-01
    │   ├── feedback-co-authors
    │   ├── feedback-journals
    │   ├── figures
    │   ├── repository
    │   │   └── reports
    │   └── tables
    ├── manuscript-02
    │   ├── feedback-co-authors
    │   ├── feedback-journals
    │   ├── figures
    │   ├── repository
    │   │   └── reports
    │   └── tables
    ├── posters
    ├── presentations
    └── publicity
```

This is where we keep organized all documents related to disseminating and documenting your research findings to the scientific and wider community. Also, this serves as a short- and long-term repository for the specific sub-projects/manuscripts.

- *manuscript/*-folders: contain everything related to the production of manuscripts, including manuscript figures and tables. These can be `cp`-d from the results/ folder.

  - Manuscripts are written in .Rmd, and knitted to .pdf or .docx for final polish prior to distributing to co-authors or prior to submitting. We cite using Zotero and and a sub-project-specific *Better BibTeX* .bib file. We keep the .tex files for archive. We will accumulate a lot of feedback: store these in subfolders, and provide suitable names with version and dates.

  - *repository/*: contains a README.md that describes manuscript analyses including what version of the raw data are used, and relevant git SHA-1 IDs that can be used to retrieve the entire analysis project folder to the state it was at time of submission/publishing. Also, here we keep `cp`-d html notebook reports that represent physical versions (including the underlying .Rmd scripts) at time of publishing. They should suffice for a high level of reproducibility. Also, here we keep a short tutorial (user documentation) of how to reproduce a few of the analyses.

- *posters/*: contains posters.

- *presentations*: contains presentations, including .pptx, ioslides ++. A final presentation should also be created when manuscript is accepted for publication; name this properly (e.g. "firstauthor-journal-year-date").

- *publicity*: contains media coverage and publicity (if any), such as newspaper interviews, articles, and the like.
