---
layout: post
title: "Week 8   Machine Learning"
permalink: week-8---machine-learning
date: 2019-07-01 10:41:42
comments: true
description: "Week 8 - Machine Learning"
keywords: ""
categories:

tags:

---

### <span>Unsupervised learning </span>
* Data does not have labels (y values)
* Clustering is a way to find structures with in data sets.
* Applications of clustering
  * Market segmentation
  * Astronomy
  * Computer clusters
  * Social network analysis.

##### K-means algorithm

![K-means algorithm](/images/kmeans.png)

##### Fine tuning k-means
* Use randomly chosen inputs from input data set as initial centroids.
* Run k means multiple times with different randomly chosen centroids to reduce chance of getting stuck in local optima.
* Use elbow method to find optimum number of clusters. Although elbow method is quite ineffective for most real world problems.
* Deciding number of clusters requires human insight into the problem domain.

##### Dimensionality reduction
* Useful to reduce number of features to 2-3 to aid in visualizing data. May not necessarily be used to write machine learning algorithms.
* Compression - to save disk space, specially with computer vision.
* Speed up learning algorithm by reducing number of features without losing variance.

> Don't use PCA to solve overfitting.

##### Principal Component analysis

![Principal Component Analysis](/images/pca.png)


##### How to choose number of Principal components

![Choosing k](/images/choosing-k.png)
