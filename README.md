# Blather

A demo application for **[Rails 3](http://edgeguides.rubyonrails.org/)** and **[Solr 1.4]()** with **[Sunspot 1.2rc2](http://outoftime.github.com/sunspot/).** Web hosting by [Heroku](http://heroku.com/) and search hosting by [Websolr](http://websolr.com/).

(Arbitrarily) in the style of [blather.newdream.net](http://blather.newdream.net/), of which I have fond memories.

## Getting started with Sunspot and Websolr

Want to see all of this in one single copy-pasteable block? Skip to "Delicious copypasta" below.

### Installing Sunspot with Bundler

First, add `sunspot_rails` to your `Gemfile`:

    gem 'sunspot_rails', '1.2rc2'

Next, run `bundle install` from the root of your application to install `sunspot_rails` and its dependencies.

### Configure Sunspot for Websolr

#### Using an environment variable

For applications hosted on Heroku, the URL to your index will be set to the `WEBSOLR_URL` environment variable. Create a Sunspot initializer at `config/initializers/websolr.rb` with the following line:

    Sunspot.config.solr.url = ENV['WEBSOLR_URL']

#### Using sunspot.yml

Alternatively, you can use `config/sunspot.yml` to configure Sunspot.

    rails generate sunspot_rails:install

This command will generate a default `config/sunspot.yml` which you may edit to provide the details for your production index. For example, update your production configuration to mimic the following, altering the path value to match the location of your index.

    production:
      solr:
        hostname: index.websolr.com
        port: 80
        path: /solr/0a1b2c3d4e
        log_level: WARNING
