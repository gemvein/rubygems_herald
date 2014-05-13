Rubygems Herald
===========

[![GitHub version](https://badge.fury.io/gh/gemvein%2Frubygems_herald.svg)](http://badge.fury.io/gh/gemvein%2Frubygems_herald)
[![Build Status](https://travis-ci.org/gemvein/rubygems_herald.svg)](https://travis-ci.org/gemvein/rubygems_herald)
[![Coverage Status](https://coveralls.io/repos/gemvein/rubygems_herald/badge.png)](https://coveralls.io/r/gemvein/rubygems_herald)

For organizations that want to market a gem in style, Rubygems Herald syncs your gems' data via the RubyGems.org API so that your software marketing website stays up to date with the latest information about your gems.

Installation
----------------------------

First, add the gem to your Gemfile

    gem 'rubygems_herald'

Next, run the following commands

    > bundle install
    > rails g rubygems_herald:install
    > rake db:migrate

Edit the initializer to set the names of the gems that Rubygems Herald should fetch.

Contributing to Rubygems Herald
----------------------------
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright
---------

Copyright (c) 2014 Gem Vein. See LICENSE.txt for further details.

