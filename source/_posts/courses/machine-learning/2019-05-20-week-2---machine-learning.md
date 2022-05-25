---
layout: post
title: "Week 2   Machine Learning"
permalink: week-2---machine-learning
date: 2019-05-20
comments: true
description: "Week 2 - Machine Learning"
keywords: ""
categories:

tags:

---

![Machine Learning](/images/machine-learning.png)

### <span>Multivariate linear gradient</span>

##### hypothesis function
* Multiple features, single out come variables.
* Definition of hypothesis function
  * h<sub>&theta;</sub>(x) = &theta;<sub>0</sub> + &theta;<sub>1</sub>x<sub>1</sub> + &theta;<sub>2</sub>x<sub>2</sub> ... + &theta;<sub>n</sub>x<sub>n</sub>
  * x<sub>0 = 1
  * h<sub>&theta;</sub>(x) = &theta;<sub>0</sub>__x<sub>0</sub>__ + &theta;<sub>1</sub>x<sub>1</sub> + &theta;<sub>2</sub>x<sub>2</sub> ... + &theta;<sub>n</sub>x<sub>n</sub>
  * x = (N+1) vector, &theta; = (N+1) vetor
  * h<sub>&theta;</sub>(x) = &theta;<sup>T</sup>x

##### Multivariate linear regression

![Multivariate Linear Regression](/images/multivariate-linear-regression.png)

##### Feature scaling
* If ranges for various features vary quite a bit, leads to skewed chart, leading to slow rate of convergence.
* To speed up speed of convergence scale all features so that ranges for all are between 0 to 1.
* Example - Feature 1 = potential values 0 to 10000. ScaledFeature 1 = (Feature 1)/10000 = potential values 0 to 1.
* If features can have negative values then potential values will be -1 to 1

##### Mean normalization
* All features having similar mean (zero) helps with rate of convergence.
* Normalize all features so that the mean is at zero.

##### Formula to do feature scaling and mean normalization

>x<sub>i</sub> = (x<sub>i</sub>-&mu;<sub>i</sub>)/S<sub>i</sub>

* &mu<sub>i</sub> = average value of the feature.
* S<sub>i</sub> = Max Value - Min Value for the feature
* Features a range of -0.5 to 0.5

##### Practical tips for gradient descent
* Best way to debug if gradient descent is working is by plotting J(&theta;) for number of iterations.
* Learning rate too small = slow convergence
* Learning rate too high = J(&theta;) may not converge.
* Try &alpha; = 0.001, 0.003, 0.01, 0.03, 0.1, 0.3, 1...

##### Polynomial regression

![Polynomial Regression](/images/polynomial-regression.png)

##### Normal Equation

&theta; = (X<sup>T</sup>X)<sup>-1</sup>X<sup>T</sup>y

| Gradient descent                | Normal Equation                              |
| ------------------------------- | -------------------------------------------- |
| Need to choose learning rate    | Dont need to choose learning rate            |
| Needs many iterations           | No need to iterate                           |
| O(kn)<sup>2</sup>               | O(n<sup>3</sup>) to calculate X<sup>T</sup>X |
| Works well even when n in large | Slow if n is very large                      |
