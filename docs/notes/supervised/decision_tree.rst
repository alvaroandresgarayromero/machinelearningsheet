.. meta::
    :description lang=en: Notes related to decision trees
    :keywords: Python, Python3 Cheat Sheet

==============================
Decision Trees
==============================

.. contents:: Table of Contents
    :backlinks: none


Definition
------------

Decision trees are classification and regression models, which
are trained with labelled data.

- Classification are labeled with classes
- Regression are labeled with values

A decision tree is a binary tree with
a root node, and edges (two or zero branches).
Decision nodes are nodes that have two edges, and
leaf nodes are nodes with no edges.


- DECISION TREE: A machine learning model based on yes/no questions and represented by a binary tree. The tree has a root node, decision nodes, leaf nodes, and branches.
- ROOT NODE: The topmost node of the tree. It contains the first yes/no question. For convenience we refer to it as the root.
- DECISION NODE: Each yes/no question in our model is represented by a decision node, with two branches emanating from it (one for the ‘yes’ answer, and one for the ‘no’ answer).
- LEAF NODE: A node that has no branches emanating from it. These represent the decisions we take after traversing the tree. For convenience, we refer to them as leaves.
- BRANCH: The two edges emanating from each decision node, corresponding to the ‘yes’ and ‘no’ answers to the question in the node. By convention, the branch to the left corresponds to ‘yes’, and the branch to the right to ‘no’.
- DEPTH: The number of levels in the decision tree. Alternatively, it is the number of branches on the longest path from the root node to a leaf node.

How to determine decision nodes
---------------------------------

Between Feature_A and Feature_B, which one seems more decisive predicting the data?
Between a horizontal and vertical line, which one would cut the labeled data better?
In summary, a threshold needs to be determined that best predicts the labeled data.

- Accuracy: The fraction of a correctly classified data points over the total number of data points

    How often is the data model correct?

    Classifying by Feature_A (ex: classify data by gender. Is female?)
    - Classification 1: A, A, B -> majority is A, therefore A is recommended and correct 2/3
    - Classification 2: C, C, C -> majority is C, therefore C is recommended and correct 3/3
    - Accuracy of tree is correct 5 out of 6 times with accuracy of 83.33%

    Classifying by Feature_B (ex: classify data by age. Is young?)
    - Classification 1: A, B, A -> majority is A, therefore A is recommended and correct 2/3
    - Classification 2: B, B, C -> majority is B, therefore B is recommended and correct 2/3
    - Accuracy of tree is correct 4 out of 6 times with accuracy of 66.67%

- Gini impurity (gini index): A measure of diversity in a dataset

    - Low Gini Index - all elements are similar (preferred)
    - High Gini Index - all elements are different


- Entropy: A measure of diversity in a dataset where probability is how many times a in m element

    .. raw:: html

        <img src="https://render.githubusercontent.com/render/math?math=p_n=\frac{a_n}{m}">

    - Low entropy - all elements are similar/less diverse (preferred)
    - High entropy - all elements are different/more diverse


    .. raw:: html

        <img src="https://render.githubusercontent.com/render/math?math=Entropy=-p_1log_2(p_1)-p_2log_2(p_2)-...p_nlog_2(p_n)">


    .. raw:: html

        <img src="https://render.githubusercontent.com/render/math?math=EntropyAvg=\frac{Entropy}{m}">

- Informational Gain

    .. raw:: html

        <img src="https://render.githubusercontent.com/render/math?math=DeltaChild=\frac{m}{m+n}Entropy(child_1)%2b\frac{n}{m+n}Entropy(child_2)">


    .. raw:: html

        <img src="https://render.githubusercontent.com/render/math?math=InformatinalGain=Entropy(Parent)-DeltaChild">

Classification Decision Tree
-----------------------------

The leaf corresponds to a prediction 'yes' or 'no' class.


Regression Decision Tree
--------------------------

The leaf corresponds to a prediction value such as 4, 8.2 or -199.

