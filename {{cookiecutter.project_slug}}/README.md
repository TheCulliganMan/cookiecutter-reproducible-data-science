{{cookiecutter.project_slug}}
==============================

{{cookiecutter.project_short_description}}

Usage
-----
1. To start a new science project: `cookiecutter gh:TheCulliganMan/cookiecutter-reproducible-data-science`  Follow cookiecutter's instructions to get your project set up. Then enter the directory.

2. First thing you should probably do is `mv config/secrets_example config/secrets` and set the proper values for the project.  Docker-compose won't work without this.

3. Build the application and the notebook `./scripts/build-scripts/build-all.sh`.

4. After projects are built, use the run scripts `./scripts/run-scripts/run-notebook.sh` or `./scripts/run-scripts/run-development.sh` (to run app and notebook concurrently) or `./scripts/run-scripts/run-application.sh` (to run a prod app without volume mounts).

5. Tests can be created at `./tests`. To run them `./scripts/test-scripts/run-tests.sh`.


This template isn't meant to constrain the developer or data scientist, just make reproducable code easier to write.  Please make sure that your run scripts and test scripts are self contained.  Running the application should be as easy as hitting the enter button.  This makes maintainence much easier and more enjoyable for all parties.

Happy Programming!

Project Structure
-----------------

```
.
├── AUTHORS.md
├── LICENSE
├── README.md
├── bin                <- compiled code
├── config             <- Configuration files, e.g., for doxygen or for your model if needed
├── dockerfiles        <- docker files
├── data
│   ├── external       <- Data from third party sources.
│   ├── interim        <- Intermediate data that has been transformed.
│   ├── processed      <- The final, canonical data sets for modeling.
│   └── raw            <- The original, immutable data dump.
├── docs               <- Documentation, e.g., doxygen or scientific papers (not tracked by git)
├── notebooks          <- Jupyter notebooks
├── reports            <- For a manuscript source, e.g., LaTeX, Markdown, etc., or any project reports
│   └── figures        <- Figures for the manuscript or reports
├── scripts (Should run start ==> finish with no human intervention, anybody should be able to run these with little to no training.)
│   ├── build-scripts  <- build scripts for the applications
│   ├── run-scripts    <- run scripts for the applications 
│   └── test-scripts   <- test scripts for the applications
└── src                <- Source code for this project
    ├── data           <- scripts and programs to process data
    ├── external       <- Any external source code, e.g., pull other git projects, or external libraries
    ├── models         <- Source code for your own model
    ├── tools          <- Any helper scripts go here
    └── visualization  <- Scripts for visualisation of your results, e.g., matplotlib, ggplot2 related.
```
