.. meta::
    :description lang=en: Notes related to Ensembles
    :keywords: Python, Python3 Cheat Sheet

============
Ensembles
============

.. contents:: Table of Contents
    :backlinks: none


Definition
------------

Ensemble methods is a technique of building super-classifiers
by combining a set of weak learners classifiers. This discipline is
called ensemble learning. Weak learners doesn't mean they are bad
classifiers. Weak learners can be decision trees, perceptrons, SVMs.

- Why use ensembles?

    To combat bias and variance in models, and construct a model that meets in the middle.

    - High Bias model:
        When a model doesn't do a good job at fitting the data. For example,
        a linear regression model can work with a set of dataset and also work with
        a different set of dataset.

        .. image:: examples/ensembles/linear-regression-high-bias.png
           :width: 400

    - High Variance
        These models tend to overfit data, as they are too flexible.
        For example, Decision Trees fall in this category because
        they can have an large depth (split every point into its own branch if possible).

        .. image:: examples/ensembles/decision-tree-high-variance.png
           :width: 400



Bagging (Bootstrap Aggregating) Classifier
--------------------------------------------

The construction of a few classifiers in a random way, and then putting
them together.

    - Random Forest
        For example, random forest is a technique where we pick a random subset of the data
        and then build a decision tree that fits that subset. This is repeated
        again randomly. A classifier is then constructed by joining them,
        and making them vote together a certain prediction.
        The most voted prediction is the prediction that is picked.


        The example below shows 3 weak learners of one-node decision trees
        where the subset of data are chosen randomly.

        .. image:: examples/ensembles/random_forest.png
           :width: 400

AdaBoost (Adaptive boosting) Classifier
----------------------------------------

The construction of building classifiers is similar to bagging, but
the classifiers are not picked randomly. They are constructed in a smarter way,
by picking each model strategically to focus on the previous model's mistakes/weaknesses.
In other words, each learner tries to correctly classify the points in which the
previous classifiers have failed.

The example below shows the process each leaner undergoes for a one-node decision tree.
The first row are the learners classifications.
the second row are intermediate steps where the incorrect miss-classified data points
are weighted more for the next learner in order
for it to try harder to classify the bigger points.

        .. image:: examples/ensembles/adaboost_decision_tree.png
           :width: 400

The image below shows the weighted amount with values at the beginning of time,
and next learner. The first are the learners classification, and the second row
are intermediate steps as mentioned above. The incorrect points are re-weighted by
making the model a 50/50 model. This is accomplished by updating the weight by a factor
of correct/incorrect

        .. image:: examples/ensembles/adaboost_decision_tree_weighted.png
           :width: 400

- Weighing the model:

    - Truthful model (100% correct, 0% incorrect data points classification)

        Weight approaches infinity

    - Random model (50% correct, 50% incorrect data points classification)

        Weight around 0

    - total Liar model (0% correct, 100% incorrect data points classification)

        Weight approaches negative infinity

.. raw:: html

    <img src="https://render.githubusercontent.com/render/math?math=weight=ln\frac{accuracy}{1-accuracy}=ln\frac{num_correct}{num_incorrect}">

.. raw:: html

    <img src="https://render.githubusercontent.com/render/math?math=x_3=x_1^2">

- Combining the model

    The models are weighted respectively where the weight is positive in the positive
    region and negative in the negative region

    .. image:: examples/ensembles/combining_model_1.png
       :width: 400

    .. image:: examples/ensembles/combining_models.png
       :width: 400

Gradient Boosted Tree Classifier
----------------------------------

TODO

XGBoost (eXtreme Gradient Boosting)
----------------------------------------

TODO