
Introduction
=============

Machine Learning cheatsheet was created as a way to study and collect code snippets.
Some equation are written in rst format. However, Github does not support inline formulas.
A hack was used to make them visible based on this discussion here:

.. raw:: html

    <h9 align="center">
    <a href="https://gist.github.com/a-rodin/fef3f543412d6e1ec5b6cf55bf197d7b">A hack for showing LaTeX formulas in Github markdown</a>
    </h9>

Cheat Sheet
============

- `Supervised (in progress) <docs/notes/supervised/supervised_ml.rst>`_
- `Unsupervised (in progress) <docs/notes/unsupervised_ml.rst>`_
- `Reinforcement Learning (in progress) <docs/notes/reinforcement_learning_ml.rst>`_


Getting Started
================

This workspace utilizes Docker to create a containerized service with all the required dependencies to
run the python jupyter practice examples. To get started, follow the three main steps

- Verify that Docker and Docker-Compose are installed.

.. code-block:: bash

    # this project used Docker version 20.10.5
    $ docker --version

    # this project used docker-compose version 1.29.1
    $ docker-compose --version


- In the root of the project, build the image and container

.. code-block:: bash

    $ docker-compose up


- Docker will initialize the jupyter service and expose it to the host machine. In the CLI, the docker service will output the URL to open the jupyter notebook in the browser.
- Lastly, the user can choose and edit in their desired editor. Any new or existing files that are added/modified are automatically updated in the active container and notebook (refresh browser).

Acknowledgement
================

- Udacity Introduction to Machine Learning
- Grokking Machine Learning Book