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

The general form of the equation for a line in a 2D plane perceptron classifier is

    .. raw:: html

        <img src="https://render.githubusercontent.com/render/math?math=ax_1%2bbx_2%2bc=0">

where a is the score (weight) for x1, b is the score (weight) for x2, and c is the bias.
Note that x1 and x2 are the axis of the plane where 1 and 2 are the units/datatype. The perceptron equation forms a line
that best separates the datasets


A step function can then be used to define how to turn the scores into a prediction:

    - step(x) = 1, if x >= 0, Accept
    - step(x) = 0, if x < 0, Reject

    .. raw:: html

        <img src="https://render.githubusercontent.com/render/math?math={\hat{y}}=step(ax_1%2bbx_2%2bc)">

Similarly, the general form of the equation for a 2D plane in a 3D plane perceptron classifier is

    .. raw:: html

        <img src="https://render.githubusercontent.com/render/math?math=ax_1%2bbx_2%2bcx_3%2bd=0">

Similarly, the general form of the equation for a n-1 dimensional hyperplane in a n-dimensional plane perceptron classifier is

    .. raw:: html

        <img src="https://render.githubusercontent.com/render/math?math=ax_1%2bbx_2%2bw_nx_n%2bd=0">

.. image:: examples/perceptron/perception_diagram_v2.png
   :width: 400


- Move a line closer to the point where the weight is now been represented with w:

.. raw:: html

    <img src="https://render.githubusercontent.com/render/math?math=linearfunct=x_1w_1%2bx_2w_2%2bb">

.. raw:: html

    <img src="https://render.githubusercontent.com/render/math?math={\hat{y}}(linearfunct)=step(linearfunct)">


- If the point (x_1,x_2) is classified negative, but the point has a positive label, add to move the line closer

.. raw:: html

    <img src="https://render.githubusercontent.com/render/math?math=Classified%20Negative:%20{\hat{y}}=0">


.. raw:: html

    <img src="https://render.githubusercontent.com/render/math?math=w_i=w_i%2bx_i*learningRate">


.. raw:: html

    <img src="https://render.githubusercontent.com/render/math?math=b=b%2bb*learningRate">

- If the point (x_1,x_2) is classified positive, but it has a negative label, subtract to move the line closer

.. raw:: html

    <img src="https://render.githubusercontent.com/render/math?math=Classified%20Positive:%20{\hat{y}}=1">


.. raw:: html

    <img src="https://render.githubusercontent.com/render/math?math=w_i=w_i-x_i*learningRate">


.. raw:: html

    <img src="https://render.githubusercontent.com/render/math?math=b=b-b*learningRate">