.. meta::
    :description lang=en: Notes related to find a linear regression that best fits the data
    :keywords: Python, Python3 Cheat Sheet

==============================
Linear Regression
==============================

.. contents:: Table of Contents
    :backlinks: none


Error Function:
-------------------
The error between the point and the point of the predicted line in the y-axis.
The smaller the error, the closer the predicted line is to the data

- Mean Absolute Error:
    The VERTICAL distance between the point and line, where y is the point and y' is the point of the line.
    The absolute distance makes sure that the distance stays positive regardless of been negative.

    .. math::
     ERROR = SUM( |y[0]-y[0]'| + |y[n]-y[n]'| + ... + |y[N-1]-y[N-1]'| ) / N

- Mean Square Error:
    The SQUARE distance between the point and line, where y is the point and y' is the point of the line.
    The error is the average of areas of all the squares. A constant 1/2 is multiplied for convenience

    .. math::
     ERROR = (1/2N) * SUM( (y[0]-y[0]')^2 + ((y[n]-y[n]')^2 + ... + (y[N-1]-y[N-1]')^2 )

Gradient (Derivative) Descent:
--------------------------------
The gradient descent is a method to descent from high to low error by using the derivative of the error function as the step

.. image:: gradient_desncet_derivation.jpg
   :width: 600