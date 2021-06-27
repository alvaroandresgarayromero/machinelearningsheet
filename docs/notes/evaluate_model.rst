.. meta::
    :description lang=en: Collect useful snippets related to evaluating/verification model techniques
    :keywords: Python, Python3 Cheat Sheet

==============================
Evaluating a model
==============================

.. contents:: Table of Contents
    :backlinks: none


Description
------------

Techniques to evaluate model performance

Accuracy
---------

Measures how often the classifier makes the correct prediction. It’s the ratio of the number of correct predictions to the total number of predictions (the number of test data points).

This score can range from 0 to 1, with 1 being the best possible score.

Precision
----------

Tells us what proportion of messages we classified as spam, actually were spam. It is a ratio of true positives (words classified as spam, and which actually are spam) to all positives (all words classified as spam, regardless of whether that was the correct classification). In other words, precision is the ratio of

[True Positives/(True Positives + False Positives)]

This score can range from 0 to 1, with 1 being the best possible score.

Recall (sensitivity)
----------------------

Tells us what proportion of messages that actually were spam were classified by us as spam. It is a ratio of true positives (words classified as spam, and which actually are spam) to all the words that were actually spam. In other words, recall is the ratio of

[True Positives/(True Positives + False Negatives)]

This score can range from 0 to 1, with 1 being the best possible score.

F1 Score
---------


The weighted average of the precision and recall scores.

This score can range from 0 to 1, with 1 being the best possible score.