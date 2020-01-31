# File organization

Information taken from the following sources:

- [Christine Malinowski, MIT Libraries](https://libraries.mit.edu/data-management/files/2014/05/FileOrg_20160121.pdf)
- [Karl Bromans website](https://kbroman.org/steps2rr/pages/organize.html)
- [Rmarkdown at RStudio website](https://rmarkdown.rstudio.com/authoring_bibliographies_and_citations.html)

## The key principles of file organization - the 5 C's

- Clear
- Concise
- Consistent
- Correct
- Conformant

## What do we mean by file organization?

- File structures: where to put data so you can find it
- File naming: what to call data so you know what it is
- File versioning: keeping track of data

### 1. File structures

#### Hierarchical file structures

- Avoid overlapping categories
- Don't let your folders get too big
- Don't let your structures get too deep

#### Create a systematic folder structure

- Define the types of data and file formats
- Include important contextual information (dates, collection method, collectors, ...)
- Organize folders by meaningful categories:
  - Primary/secondary/tertiary
  - Subject/collection method/time
- Choose a directory naming convention
- Follow the 5 C's

### 2. File naming

#### Discover your files

- Order dates beginning with the year to enable sorting by date (e.g., YYYYMMDD)
- Embed metadata in your files (if possible)
- Add shortcuts to files within other relevant folders

#### Naming conventions should be descriptive

Consider including:

- Unique identifier (ie. Project Name or Grant # in folder name)
- Project or research data name
- Conditions (Lab instrument, Solvent, Temperature, etc.)
- Run of experiment (sequential)
- Date (in file properties too)
- Version #

#### Naming conventions should be consistent

- Maintain order
- Include the same information

Conventions:

- Limit the file name to 32 characters
- When using sequential numbering, use leading zeros to allow for multi-digit versions
- Don’t use special characters
- Use only one period and use it before the file extension
- Avoid using generic data file names that may conflict when moved from one location to another

It is possible to rename files and folders in batch/bulk

Also, generally the project should comply with [the tidyverse style guide](https://style.tidyverse.org/). 

### 3. File versioning

- Use ordinal numbers for version (e.g. of data-collection data versions)
  - data_v1.1.1
  - data_v1.1.2 (minor changes)
  - data_v1.2.1 (major changes)
  - data_v2.1.1 (breaking changes)
- Use dates to distinguish between successive versions
  - data_20181210
  - data_20181101
- Avoid "\_final" labels
- Put older versions in a separate folder (or simply delete if obsolete)
- Use Git
