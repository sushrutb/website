---
layout: post
title: "Week 9   Machine Learning"
permalink: week-9---machine-learning
date: 2019-07-05 11:41:37
comments: true
description: "Week 9 - Machine Learning"
keywords: ""
categories:

tags:

---

### <span>Anomaly detection</span>

##### Applications
* Fraud detection in e-commerce
* Manufacturing - help in quality assurance by finding anomalous components.
* Monitoring computers in data centers

##### Algorithm

![Anomaly Detection Algorithm](/images/anomaly-detection.png)

##### Choosing parameters
* The algorithms works best if the feature has gaussian distribution.
* It will still work if distribution is not gaussian.
* Features can be transformed to so that their distribution looks more gaussian.
* For example
  * Feature x can be transformed using log(x), or log(x + c), or sqrt(x) etc.
* Do error analysis. If p(x) is similar for normal and anomalous examples, then need to find new features which can improve the algorithm.
* Choose features which take on very small or very large values in the event of an anomaly.

##### Multivariate gaussian distribution


| Original gaussian                                                                  | Multivariate gaussian                                                                                 |
| ---------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| Manually create features to capture anomalies, based on given raw set of features. | Automatically captures correlations between features                                                  |
| Computationally cheaper                                                            | Expensive to compute, does not scale well with number of features, due to calculating matrix inverse. |
| Works even in small training set.                                                  | Number of training examples has  to be greater than number of features. Should be m > 10n             |


### <span> Recommender systems</span>

##### Applications
* Movie, book recommendations.
* Shopping recommendations.

##### Content based recommender systems
* Essentially a deviation of linear regression.
* We find prediction parameters, &theta;, for each user in the system.
* Use above parameters to predict which movies the user will like.
* Requires availability of features based on content a movie such as degree of action, romance; which difficult to find in real world.

##### Collaborative filtering

![Collaborative Filtering](/images/cf-1.png)

![Collaborative Filtering](/images/cf-2.png)

![Collaborative Filtering](/images/cf-3.png)
