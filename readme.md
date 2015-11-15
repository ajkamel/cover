# Cover

[![Code Climate](https://codeclimate.com/github/ajkamel/cover/badges/gpa.svg)](https://codeclimate.com/github/ajkamel/cover)
[![Circle CI](https://circleci.com/gh/ajkamel/cover.svg?style=svg)](https://circleci.com/gh/ajkamel/cover)

This app is a collaborative project used to recreate a service similar to GoodReads.  Our goals were to follow Ruby best practices and is being reviewed as members of Thoughtbot's Upcase developer forum.  Try our [demo](http://cover-app.herokuapp.com/).

## Getting Started

After you have cloned this repo, run this setup script to set up your machine
with the necessary dependencies to run and test this app:

    % ./bin/setup

To setup seed data run

    % rake db:seed

It assumes you have a machine equipped with Ruby, Postgres, etc. If not, set up
your machine with [this script].

[this script]: https://github.com/thoughtbot/laptop

After setting up, you can run the application using [foreman]:

    % foreman start

If you don't have `foreman`, see [Foreman's install instructions][foreman]. It
is [purposefully excluded from the project's `Gemfile`][exclude].

[foreman]: https://github.com/ddollar/foreman
[exclude]: https://github.com/ddollar/foreman/pull/437#issuecomment-41110407

## Guidelines

Use the following guides for getting things done, programming well, and
programming in style.

* [Protocol](http://github.com/thoughtbot/guides/blob/master/protocol)
* [Best Practices](http://github.com/thoughtbot/guides/blob/master/best-practices)
* [Style](http://github.com/thoughtbot/guides/blob/master/style)

## Contributors

* [Samnang](https://github.com/samnang)
* [Evan](https://github.com/evan-007)
* [Ash](https://github.com/ajkamel)
