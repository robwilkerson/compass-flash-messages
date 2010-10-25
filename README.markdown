# Compass Flash Messages

A simple [Compass](http://compass-style.org/) extension that provides easy and attractive styling for flash messages. And, c'mon, who among us doesn't like easy _and_ attractive?

## Installation

You can't. Yet. I'm still learning how to build an extension, so be patient.

## Usage

The extension packages both default classes and mixins. If you're okay with using the default classes--they're semantic--you can just do this:

    ... existing layout/page content ...
    
    <div class="(success|info|warning|error|validation)">
      Your flash message content here
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