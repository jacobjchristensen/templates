# README

Write simple scripts to fetch relevant figures and tables into the manuscript subfolders. Then write the manuscript using Rmarkdown tools. Also, use journal styles to create a nice-looking output for submission.

## Using a citation manager

- For production of manuscripts in Rmarkdown, use BibTeX citations
- Keep literature organized centrally in Zotero citation manager
- In this directory, organize articles as best you can in *collections*, at least by manuscripts
  - You can also add more tags to each article, so that these can be filtered later on
  - Export collections as *Better BibTeX*, and tick *Keep updated*
  - This create a local BibteX file (with the *.bib* extension) that organizes your references for a specific project
- Add a reference to the .bib file in the YAML header of your manuscript: *bibliography: project-bibliography.bib*.
- Specify a CSL 1.0 style to change citation style: *csl: biomed-central.csl*.
  - Styles can be browsed [here](https://github.com/citation-style-language/styles) and [here](https://git.framasoft.org/msaby/styles/tree/master/dependent): download to project directory and refer in YALM header
- Cite normally:
  - Blah blah [see @doe99, pp. 33-35; also @smith04, ch. 1].
  - Blah blah [@doe99, pp. 33-35, 38-39 and *passim*].
  - Blah blah [@smith04; @doe99].
  - Smith says blah [-@smith04]. (suppress mention of the author)
  - @smith04 says blah. (in-text citations)
  - @smith04 [p. 33] says blah. (in-text citations)

## Equator network

Use checklists from [the Equator network](https://www.equator-network.org/): 

- CONSORT for RCTs
- STROBE for observational studies
- PRISMA for systematic reviews

