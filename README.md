# README
[![Build Status](https://travis-ci.org/gregmolnar/invoicer.png)](https://travis-ci.org/gregmolnar/invoicer) [![Code Climate](https://codeclimate.com/github/gregmolnar/invoicer.png)](https://codeclimate.com/github/gregmolnar/invoicer)
[![Dependency Status](https://gemnasium.com/gregmolnar/invoicer.png)](https://gemnasium.com/gregmolnar/invoicer)

A simple invoicing tool for freelancers built with Rails 4.

## Install

* clone the repo `git clone git@github.com:gregmolnar/invoicer.git`
* setup the database config from one of the sample files in `config`
* run `bundle install`
* run `rake db:create db:migrate db:seed`
* start the server `rails s`
* visit `localhost:3000` and login with `admin@example.com` and `password`

## Contributing

1. Open an Issue to talk about it. We can discuss whether it's the right
  direction or maybe help track down a bug, etc.
1. Fork the project, and make a branch to work on your feature/fix. Master is
  where you'll want to start from.
1. Write a test for the feature you are about to add
1. Run the tests
1. Send a Pull Request.

If you don't know how to fix something, even just a Pull Request that includes a
failing test can be helpful. If in doubt, make an Issue to discuss.

