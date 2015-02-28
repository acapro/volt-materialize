# Volt::Materialize

Adds Materialize to your Volt app!

## Installation

Add this line to your application's Gemfile:

    gem 'volt-materialze'

Add the bootstrap component to your application's `app/main/config/dependencies.rb`:

    component 'materialze'

And then execute:

    $ bundle

## Usage

Now you can use Materializecss in your application's views. For more information on how to use it visit http://materializecss.com/

### Javascript Components

Certain elements (for example the tooltip) need to be initialised since they are added dynamically in Volt.  Since Volt uses Opal, this will need to be translated.  This can be done inside of your controller:

`app/main/controllers/main_controller.rb`:

    def index
      # Add code for when the index view is loaded
      Document.ready? do
        if RUBY_PLATFORM == 'opal'
          # run some JS code
          `$('.tooltipped').tooltip({delay: 50});`
        end      
      end
    end

`app/main/views/main/index.html`:

    <a class="btn tooltipped" data-position="bottom" data-delay="50" data-tooltip="I am tooltip">Hover me!</a>

This requires Volt -v '0.8.27.beta3' or higher.

## Changelog

0.0.3 - Fixes fonts and icon loading issue
0.0.1 - Add materialize alpha release v0.95.3

## Contributing

1. Fork it ( http://github.com/acapro/volt-materialize/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request