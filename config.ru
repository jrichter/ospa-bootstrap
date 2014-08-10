# -*- coding: utf-8 -*-
require 'rubygems'
require 'bundler/setup'
require 'bootstrap-sass'
require File.expand_path '../app.rb', __FILE__

run App.new
