.. meta::
    :description lang=en: Notes related to the branch of classification
    :keywords: Python, Python3 Cheat Sheet

==============================
Classification
==============================

.. contents:: Table of Contents
    :backlinks: none


Definition
----------------

The aim to predict a state or category (true/false, yes/no)


Perceptron Classifier
-----------------------

The general form of the equation of a perceptron classifier is

    .. raw:: html

        <img src="https://render.githubusercontent.com/render/math?math=ax_1%2bbx_2%2bc=0">

where a is the score for x1, b is the score for x2, and c is the bias.
Note that x1 and x2 are the axis of the plane where 1 and 2 are the units/datatype. The perceptron equation forms a line
that best separates the datasets


The equation also defines the a positive and negative zone step(x) is a step function
where the positive/negative classification can be expressed as

    - step(x) = 1 if x >= 0
    - step(x) = 1 if x < 0

    .. raw:: html

        <img src="https://render.githubusercontent.com/render/math?math={\hat{y}}=step(ax_1%2bbx_2%2bc)">