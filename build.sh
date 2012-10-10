#! /bin/sh

rvm --create gemset use xingzhou.me

compass watch . &

jekyll --no-server --auto &

shotgun
