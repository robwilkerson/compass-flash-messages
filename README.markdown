# Compass Flash Messages

A simple [Compass](http://compass-style.org/) extension that provides easy and attractive styling for flash messages. And, c'mon, who among us doesn't like easy _and_ attractive?

## Installation

Now:

1. Download the tagged archive
1. Extract the archive's content to `<compass_project_root>/extensions/flash-messages`
1. Navigate to your Compass project root
1. Install.

        $ compass install flash-messages

You should see something like this:

    exists sass
    exists ../img
    create ../img/success.png
    create ../img/info.png
    create ../img/warning.png
    create ../img/error.png
    create ../img/validation.png
    exists ../css

The paths may vary and you'll see additional output, but the gist is that five (5) images were installed in the images directory configured in the `images_dir` value of your `config.rb` file.

A gem-based install will be provided soon.

## Usage

The extension includes both default classes and mixins. If you're okay with using the default classes--they're semantic--you can just do this:

    ... existing layout/page content ...
    
    <div class="(success|info|warning|error|validation)">
      This is an important (success|info|warning|error|validation) message your users need to see
    </div>
    
    ... existing layout/page content ...
		
If you desperately want or need to use non-standard class names, you can just throw the mixins at the appropriate class name and decorate the mixin's style block with whatever you'd like:

    /** In your custom style sheet */
    @import flash-messages
    
    .my-custom-success-style
      +success
      // additional styling as desired
    
    #my-custom-error-block
      +error
      // additional styling as desired
    
    <!-- In your markup -->
    ... existing layout/page content ...
    
    <div class="my-custom-success-style">
      Your flash message success content here
    </div>
    
    <div id="my-custom-error-block">
      Your flash message error content here
    </div>
		
		... existing layout/page content ...