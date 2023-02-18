# simple_planning
Run different planner using docker. To quickly test and benchmark your pddl on different planner.

Included planner:
 - FF v2.3 with enhancements from University Saarland (See website of [Prof. Dr. Jörg Hoffmann](https://fai.cs.uni-saarland.de/hoffmann/ff.html) original source can be downloaded [here](https://fai.cs.uni-saarland.de/hoffmann/ff/FF-v2.3.tgz)), released under GNU General Public License 3
 - popf from [here](https://github.com/fmrico/popf), which is used by KCL planning group / [ROSPlan](https://kcl-planning.github.io/ROSPlan/) released under GNU General Public License 2
 - popf2 from [here](https://github.com/mortacious/popf2), as described in ICAPS 2010 paper ["Forward-Chaining Partial-Order Planning."](https://ojs.aaai.org/index.php/ICAPS/article/view/13403/13252), released under GNU General Public License 3

**simple_planning** was initiated and is currently developed at the [Robotics Innovation Center](http://robotik.dfki-bremen.de/en/startpage.html) of the [German Research Center for Artificial Intelligence (DFKI)](http://www.dfki.de) in Bremen.

![](doc/images/DFKI_Logo_e_schrift.jpg)

## Motivation
Unify how to call a planer and benchmark different planner quickly.

### Installation
just install docker and docker-compose, then run `docker-compose build`.

## Getting Started
Just modify the `problem.pddl` and `domain.pddl` in the pddl-folder accordingly then build and run the docker-container for the planner you want to use (Example: `docker-compose run ff`, see docker-compose.yml for all planner and their details).

the pddl-folder is linked to your docker container so you can modifiy the files without the need of rebuilding the container.
The output is written on the terminal.

## Contributing

Please use the [issue tracker](https://github.com/brean/simple_planning/issues) to submit bug reports and feature requests. Please use merge requests as described [here](/CONTRIBUTING.md) to add/adapt functionality. 

## License

simple_planning is distributed under the [3-clause BSD license](https://opensource.org/licenses/BSD-3-Clause).

## Funding

simple_planning has been developed in the research project [Knowledge4Retail](https://robotik.dfki-bremen.de/en/research/projects/knowledge4retail/) (Grant number 01MK20001B) funded by the German Aerospace Center (DLR) with funds from the German	Federal Ministry for Economic Affairs and Climate Action (BMWK) and the German Aerospace Center e.V. (DLR).

## Maintainer / Authors / Contributers

Andreas Bresser, andreas.bresser@dfki.de

Copyright 2023, DFKI GmbH / Robotics Innovation Center

