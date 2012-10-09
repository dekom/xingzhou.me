#! /bin/sh

rvm --create gemset use xingzhou.me
compass compile .
jekyll --no-server
shotgun
