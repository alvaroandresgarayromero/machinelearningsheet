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


- DECISION TREE: A machine learning model based on yes/no questions and represented by a binary tree.
The tree has a root node, decision nodes, leaf nodes, and branches.
- ROOT NODE: The topmost node of the tree. It contains the first yes/no question. For convenience we refer to
it as the root.
- DECISION NODE: Each yes/no question in our model is represented by a decision node, with two branches
emanating from it (one for the ‘yes’ answer, and one for the ‘no’ answer).
- LEAF NODE: A node that has no branches emanating from it. These represent the decisions we take after
traversing the tree. For convenience, we refer to them as leaves.
- BRANCH: The two edges emanating from each decision node, corresponding to the ‘yes’ and ‘no’ answers to
the question in the node. By convention, the branch to the left corresponds to ‘yes’, and the branch to the right
to ‘no’.
- DEPTH: The number of levels in the decision tree. Alternatively, it is the number of branches on the longest
path from the root node to a leaf node.

How to determine decision nodes
---------------------------------

- Accuracy:
    test

- Entropy:

- Gini impurity:


Entropy
--------


Classification Decision Tree
-----------------------------

The leaf corresponds to a prediction 'yes' or 'no' class

Regression Decision Tree
--------------------------

The leaf corresponds to a prediction value such as 4, 8.2 or -199.

