.. meta::
    :description lang=en: Notes related to Support Vector Machines and Kernel Method
    :keywords: Python, Python3 Cheat Sheet

=================================================
Support Vector Machines (SVM) and Kernel Method
=================================================

.. contents:: Table of Contents
    :backlinks: none


Definition
------------

SVM is another type of classification model (similar to the perceptron model,
which uses a linear boundary to separate the dataset). However, SVM
finds a line boundary that is located as far as possible form the points in the
dataset with the aid of two parallel lines. The image below shows that
classifier 2 is the desired one.

The kernel method can be coupled with an SVM to classify datasets using
non-linear boundaries.

.. image:: examples/support_vector_machines/svm_overall.png
   :width: 400

SVM Error Function
-------------------

The goal is to minimize the error function by using gradient descent
in order to maximize classification and distance between the lines

.. raw:: html

    <img src="https://render.githubusercontent.com/render/math?math=Error=ClassificationError+MarginError">


- Classification Error

    Penalizes points that are misclassified


    The classification error is the absolute sum of y from points that fall
    on the incorrect area of the classification line. In this example,
    blue points that fall on the red area, and red points that fall on the
    blue area.

    .. image:: examples/support_vector_machines/classification_error_1.png
       :width: 400

    .. image:: examples/support_vector_machines/classification_error_2.png
       :width: 400


- Margin Error:

    Penalizes lines that are too close to each other

    The margin error is identical to L2 normalization regularization.
    The sum of the square of the coefficients with the exception of the constant coefficient.

    .. image:: examples/support_vector_machines/marginError.png
       :width: 400

    .. image:: examples/support_vector_machines/marginError2.png
       :width: 400

- C parameter:

    The C parameter is used to attenuate the outcome. It is defined as

    .. raw:: html

        <img src="https://render.githubusercontent.com/render/math?math=Error=(C)(ClassificationError)+MarginError">

    - Large C will penalize the classification error. Therefore, the model needs to work harder to classify the points, and thus produce better classification.

    - Small C will not penalize the classification error as much. Therefore, lead to more chance of error.

    .. image:: examples/support_vector_machines/c-parameter.png
       :width: 400