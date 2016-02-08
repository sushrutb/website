---
layout: post
title: Tinder meets realestate
date: '2015-10-12 06:50:14'
---

#### Or How I used technology to simplify house search

My fiancée and I are moving out of our current rental and looking for a new one in Melbourne. Finding houses that we both like is tedious. Initially we were sending each other links and then discussing if we both liked it or not. Once we liked a house we wanted to keep track of open inspection time. Or schedule a inspection with agent. 

Instead of doing all this, I decided to code a simple solution with out having to deploy an app or maintain a server and so on.

> Basic requirement for the app is to be extremely easy to use and automate as much as possible.

So keeping above in mind, this is what I ended doing.

######Step 0 - Create requirements

* Make a list of suburbs which worked for both of us.
* Make a list of requirements - Number of parking spots, bedrooms and so on.

######Step 1 - Code a simple scrapper

I have used [jsoup](http://jsoup.org) a lot in the past. My previous shopping search engine app used it extensively. So I used that again to code a simple scrapper and attribute extractor. Scrapper runs everyday and fetches data from [realestate.com.au](http://realestate.com.au). 

######Step 2 - Database
I had no intention of hosting all this data myself or maintain a schema. I anyways wanted to try out [firebase](http://firebase.io) and hence decided to just use that.
Scrapper created in Step 1, validates the data, adds hygiene to it and then pushes it to a firebase collection.

######Step 3 - Build a UI

Instead of maintaining a database or something which is cumbersome to maintain, I decided to just create two separate pages with same content but injected with hardcoded userids. I use one link and she uses another link. Pages themselves are built using [Foundation 5](http://foundation.zurb.com) and work flawlessly on mobile.
![](/content/images/2015/10/Screenshot-2015-10-12-18-23-36.png)

We both give thumbs-up or down to the houses we like. 
>Creating a tinder like experience has been the key idea behind this exercise.

These pages, along little bit of Javascript and UI artefacts are all hosted on [dropbox](https://db.tt/NeUOFrM)! 

> By outsourcing content hosting to Dropbox, I did not have to be worried about up time. Even if it is just supporting my partner as a user, it is still lot of work and creates a dependency. Ultimately the app had to be useful and uptime is the most important part of that.
######Step 4
We both look at the houses in our spare time and like/unlike them. Every time we like/unlike a house, that information is pushed to firebase. A script runs everyday which just does a set intersection to find the houses we have both liked. 
######Step 5 - Create calendar event
I have created a shared google calendar "Inspection times" which will have all the "events" related to house search. The script in Step 4 also pushes events to this calendar. Scrapper extracts open inspection times from the house listing and then create events with time, location, agent information and adds that to the shared calendar.

It has been an interesting problem to solve technically, even though most of the tech part was just wiring up off-the-shelf components. 

Thank you [@thinrhino](https://twitter.com/thinrhino) for proof reading.