---
layout: post
title: "Week 10   Machine Learning"
permalink: week-10---machine-learning
date: 2019-07-10 07:49:11
comments: true
description: "Week 10 - Machine Learning"
keywords: ""
categories:

tags:

---

### <span>Large Scale Machine Learning</span>

_Try out the learning algorithm which much smaller sample size, and see if it suffers from high variance problem when small size is small. Only then having many more samples will help._

##### Stochastic Gradient Descent

![Stochastic Gradient Descent](/images/stochasticgr.png)

##### Mini batch Gradient Descent

![Mini batch Gradient descent](/images/minibatchgr.png)

##### Notes on stochastic and mini mini batch
* Plot cost averaged over 1000 iterations or similar number.
* If the curve is steadily decreasing, then algorithm is converging, if not adjust appropriate parameters such as learning rate.
* You can use dynamic learning rate. Where learning rate becomes smaller and smaller as number of iterations increase.

##### Map Reduce
