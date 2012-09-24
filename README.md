# SafeTextilize

A simple gem for sanitizing Textile content. Usually when integrating Textile in for example a blog, it should filter out elements that break your site, like for example script, style and link tags.
On the other hand, it should allow video iframes from Youtube and Vimeo. This gem tries to provide a sanitize configuration for properly handling these use cases.

## Installation

Add this line to your application's Gemfile:

    gem 'safe_textilize'

And then execute:

    $ bundle

## Usage

The safe_textilize helper method can be found in the module SafeTextilize::Helper. It can be included anywhere. In a Rails app, you would usually include this helper
in the application_controller:

    class ApplicationController < ActionController::Base
      helper SafeTextilize::Helper
    end
  
The safe_textilize method accepts multiple arguments. The first should contain the text to be textilized, while all other arguments are
directly passed to RedCloth. Please see the RedCloth documentation for configuration options.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
