.. meta::
    :description lang=en: Notes related to find a linear regression that best fits the data
    :keywords: Python, Python3 Cheat Sheet

==============================
Linear Regression
==============================

.. contents:: Table of Contents
    :backlinks: none


Square Trick:
---------------

Let a point be in location (p,q).

.. math::
 (p,q)

Move the line closer to the point where ALPHA step (learning rate) is 0.01:

.. math::
 y = m1(x) + b1


Result:

- Determine q' which is the point of the line:

.. math::
 y = m1(x) + b1

 q' = m1(p) + b1

- Where qdelta is the distance between the line and point in the y-axis. Note that qdelta can be negative or positive if the point is above or below the line
.. math::
 qdelta = q - q'

- Therefore, slope m1 can move closer to the point by rotating the line. Note that slope is (ydelta/xdelta). So adding to the slope causes the line to rotate counterclockwise. Otherwise, sub is the clockwise.

.. math::
 m2 = m1 + (ALPHA)*p*(qdelta)

- Therefore, the y-intercept b1 can move up or down

.. math::
 b2 = b1 + (ALPHA)*(qdelta)

- The new equation of the line closer to the point:

.. math::
 y = m2(x) + b2


Mean Function:
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
