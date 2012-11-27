---
layout: post
title: The Right Platform
date: October 10, 2012
---

It seems that I could never settle down on a proper framework for my personal
blogging website.  The goal for the ideal framework is slim codebase, fast
content serving, and deployable to Heroku. I've tried pre-built blogging
engines such as [enki][], a lightweight, barebone Ruby on Rails application.

While it fulfilled the requirement of deployment to Heroku and relatively slim
codebase (a Rails App could never have a *small* codebase), enki was tied to
the database.  This bothered me, since a simple blogging website needs not the
complexity of a database backend.  This is especially true for personal blogs
of unknown people. Enki, however, did highlight the benefit of using a markup
language to produce each post, instead of writing pure HTML.  It used
[Textile][] for the online editor.  Personally, I prefer markdown for pure
document production.

I then tried my hand at building a dynamic [Sinatra][] application that
compiles markdown into HTML per every request.  The remnants of that
application is [here][personal].  As you can see from the code repository, the
application is actually functional.  It dynamically compiles the markdown
files stored in `/docs` upon the request to the homonymous HTML file.  The
Sinatra app, therefore, has a slim codebase (much lighter than an Rails app)
and can be easily deployed to Heroku.  The issue is speed.  The dynamic
compilation of markdown documents into HTML is slow and unnecessary.  Static
files should be served statically.

[enki]: http://enkiblog.com/
