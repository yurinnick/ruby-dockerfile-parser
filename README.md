Dockerfile_parser
==================

[![Code Climate](https://codeclimate.com/github/yurinnick/ruby-dockerfile-parser/badges/gpa.svg)](https://codeclimate.com/github/yurinnick/ruby-dockerfile-parser)

Dockerfile parser gem written on pure Ruby, outputs Array of Hashes. See example below.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dockerfile_parser'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dockerfile_parser

## Usage

example.rb

```ruby

require 'dockerfile_parser'

puts DockerfileParser.load('Dockerfile')
```

Dockerfile

```Dockerfile

FROM debian:jessie
MAINTAINER Nikolay Yurin <yurinnick@outlook.com>

RUN apt-get update && \
    apt-get install -y nginx

RUN rm -rf /var/lib/apt/lists/* && \
    chown -R www-data:www-data /var/lib/nginx

VOLUME /var/www/html
WORKDIR /etc/nginx
COPY site-example.conf /etc/nginx/sites-available/site-example.conf
COPY index.html.tmpl /var/www/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
```

output

```ruby
[
    {:command=>"FROM",       :params=>["debian", "jessie"]}
    {:command=>"MAINTAINER", :params=>"Nikolay Yurin <yurinnick@outlook.com>"}
    {:command=>"RUN",        :params=>["apt-get update", 
                                       "apt-get install -y nginx"]}
    {:command=>"RUN",        :params=>["rm -rf /var/lib/apt/lists/*", 
                                       "chown -R www-data:www-data /var/lib/nginx"]}
    {:command=>"VOLUME",     :params=>"/var/www/html"}
    {:command=>"WORKDIR",    :params=>"/etc/nginx"}
    {:command=>"COPY",       :params=>{:src=>"site-example.conf", 
                                       :dst=>"/etc/nginx/sites-available/site-example.conf"}}
    {:command=>"COPY",       :params=>{:src=>"index.html", 
                                       :dst=>"/var/www/html/index.html"}}
    {:command=>"EXPOSE",     :params=>80}
    {:command=>"CMD",        :params=>["nginx", "-g", "daemon off;"]}
]
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it (https://github.com/yurinnick/dockerfile-parser/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
