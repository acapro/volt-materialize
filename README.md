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

Requires Volt -v '0.8.27.beta3' or higher.

Materialize requires javascript components to be initialized when added dynamically.  In Volt this can be achieved by using controller actions.  Using {action}_ready ensures the instantiation gets fired after the view is rendered.

`app/main/controllers/main_controller.rb`:

    def index_ready
      # Initialize the tooltip when the index view is ready
      `$('.tooltipped').tooltip(); 
    end

`app/main/views/main/index.html`:

    <a class="btn tooltipped" data-position="bottom" data-delay="50" data-tooltip="I am tooltip">Hover me!</a>

You can also use Opal's `Document.ready?` for views that stay rendered (for example a navbar) directly inside the controller.

`app/main/controllers/main_controller.rb`:

    Document.ready? do
      # Initialize the tooltip
      `$('.tooltipped').tooltip();` 
    end

`app/main/views/main/main.html`:

    <nav>
      <div class="nav-wrapper container">
        <ul class="left hide-on-med-and-down">
          <li><a href="#" class="tooltipped" data-position="bottom" data-delay="50" data-tooltip="I am tooltip">Nav Link</a></li>
        </ul>
      </div>
    </nav>

## Changelog

0.0.4 - Added documentation for Javascript Components

0.0.3 - Fixes fonts and icon loading issue

0.0.1 - Add materialize alpha release v0.95.3

## Contributing

1. Fork it ( http://github.com/acapro/volt-materialize/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request