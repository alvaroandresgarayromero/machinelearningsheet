
Introduction
=============

Machine Learning cheatsheet was created as a way to study and collect code snippets

Cheat Sheet
============

- `Supervised <docs/notes/supervised/supervised_ml.rst>`_
- `Unsupervised <docs/notes/unsupervised_ml.rst>`_
- `Reinforcement Learning <docs/notes/reinforcement_learning_ml.rst>`_


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