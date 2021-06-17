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
The error between the point and the point of the predicted line in the y-axis (misclassified points).
The smaller the error, the closer the predicted line is to the data

- Mean Absolute Error:
    The VERTICAL distance between the point and line, where y is the point and y hat is the point of the line.
    The absolute distance makes sure that the distance stays positive regardless of been negative.

    .. raw:: html

        <img src="https://render.githubusercontent.com/render/math?math=ERROR=\frac{\sum_{i=n}^{N}|y[i]-{\hat{y}}[i]|}{N}">


- Mean Square Error:
    The SQUARE distance between the point and line, where y is the point and y hat is the point of the line.
    The error is the average of areas of all the squares. A constant 1/2 is multiplied for convenience

    .. raw:: html

        <img src="https://render.githubusercontent.com/render/math?math=ERROR=\frac{\sum_{i=n}^{N}(y[i]-{\hat{y}}[i])^2}{2N}">


Gradient (Derivative) Descent:
--------------------------------
The gradient descent is a method to descent from high to low error by using the derivative of the error function as the step

.. image:: examples/GradientDescentExample/gradient_descent_derivation.png
   :width: 800


The gradient descent with respect to the predicted line algorithm.
NOTE that the derivative of the error with respect to w or b is highlighted in orange.
The equation shows an instance of one point. However, this is the sum of all square errors. Thus, the sum of all gradient errors as denoted in the final calculation.

.. image:: examples/GradientDescentExample/gradient_descent_application.png
   :width: 800


Multiple Linear Regression:
---------------------------

A technique for when you are comparing more than two variables using linear regression


When the outcome to predict depends on one variable,
then this is a 2 dimensional space, and 1 regression line problem
We fit a prediction line where x is the variable and y hat is the outcome:

    .. raw:: html

        <img src="https://render.githubusercontent.com/render/math?math={\hat{y}}=w_{1}x%2bb">

In contrast, when the outcome to predict depends on more than one variable,
then this is a n-dimensional space, and n-1 dimensional hyperplane problem
We fit a prediction plane (multiple lines) where x's are the variables, and y hat is the outcome:

    .. raw:: html

        <img src="https://render.githubusercontent.com/render/math?math={\hat{y}}=w_{1}x_{1}%2bw_{2}x_{2}%2b...%2bw_{n-1}x_{n-1}%2bb">

Polynomial Regression:
-----------------------

A technique for relationships between variables (dataset) that aren't linear.

The process to train a polynomial regression model is very similar to linear regression model.
The main difference is that a new parameters (hyperparameters) are introduced: the degree of a polynomial.
This parameter is determined prior to training the model.


Hyperparamater: Any parameter set before the training process
Parameter: Any parameter that the model creates or modified during the training process

- Underfitting vs Overfitting:

    The number of degree of a polynomial is determined by making sure the model creates a line that doesn't
    underfit or overfit the datasets.

    .. raw:: html

        <img src="https://render.githubusercontent.com/render/math?math={\hat{y}}=w_{1}x_{1}%2bw_{2}x_{2}%2b...%2bw_{n-1}x_{n-1}%2bb">

    - Underfitting occurs when the model is too simple in comparison to the complex data, and the model is never able to learn the complexities of the dataset
        - Ex: A model that produces a line to fit a quadratic dataset. The line misses some datasets
    - Overfitting occurs when the model is too complex in comparison to the simple data, and the model memorizes the data instead of learning it well.
        - Ex: A model that produces a polynomial line of degree of 10 to fit a quadratic dataset. The line hits all datasets, but misses the point that the dataset is quadratic
    - A good model is one that doesn't underfit or overfit, and is able to make good predictions on new data that it hasn't seen
        - Ex: A model that produces a polynomial line of degree of 2 to fit a quadratic dataset.

    A technique to not underfit or overfit is to split the dataset with
    training, validation and testing sets (60-20-20 split or an 80-10-10 split)

    - The training set is used to train all the models.

    - The validation set is used to determine which model to use
        - Underfitting model is found when the error with respect to the validation data is large (performs poorly).
        - Overfitting model is found when the error with respect to the validation data is large (performs poorly).
        - A good model is found when the error with respect to the validation data is low (does well).

    - The testing set is used to know how well the model did. If this fails, start from scratch.


    In summary, if both (training and validation) errors are high, then it underfits. If both errors are low, then it is a good
    model. If the training error is low and the testing error is high, then it overfits.

    - model complexity graph:

    .. image:: examples/scikit-polynomial-regression/model-complexity-graph.png
       :width: 800

Regularization:
----------------

Regularization is a technique used to avoid overfitting the models.
The technique measure both performance and complexity of the model at the same time.
Performance is measured as the error with respect to the dataset while complexity is measured
as the sum of the coefficients in L1 or L2 norm, with the exception of the constant coefficient.

- Performance measured (REGRESSION ERROR):
    - Error function: Absolute error or Square error
- Complexity measurement (REGULARIZATION TERM):
    Warning: Scale before regularization occurs if the features (datasets) vary in dynamic range by a lot. For example, if one is between 0-10 and another is between 0-1,000,000, then the small feature will be punished the most
    - Lasso regression: Creates a model with fewer coefficients (makes most zero) (more simple model)
        - L1 norm: the sum of the absolute values of the coefficients
    - Ridge regression: Creates a model with smaller coefficients, but rarely turn them into zero (more complex model)
        - L2 norm: the sum of the square of the coefficients
- Lambda (REGULARIZATION PARAMETER)
    - Lambda: a hyperparameter (a heuristic knob) to attenuate the REGULARIZATION TERM. Values to try: 10, 1, 0.1, 0.01


REGULARIZATION ERROR = REGRESSION ERROR + lambda*REGULARIZATION TERM
Lasso regression error = REGRESSION ERROR + lambda*( L1 norm )
Ridge regression error = REGRESSION ERROR + lambda*( L2 norm )

Regularization error creates a model with low error (performance), and low complexity

    - Underfitting
        - REGULARIZATION ERROR = 1000 unitless error + 1 complexity error = 10001
    - Ideal Model
        - REGULARIZATION ERROR = 1 unitless error + 100 complexity error= 101 <--- smallest
    - Overfitting
        - REGULARIZATION ERROR = 0 unitless error + 1000 complexity error= 1000

Scaling:
---------

- Standardizing:
    df["height_standard"] = (df["height"] - df["height"].mean()) / df["height"].std()

- Normalizing (between 0 to 1):
    df["height_normal"] = (df["height"] - df["height"].min()) /     \
                          (df["height"].max() - df['height'].min())`

