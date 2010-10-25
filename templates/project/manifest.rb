description "A simple extension for Compass that provides easy, attractive styling for flash messages."

image 'success.png'
image 'info.png'
image 'warning.png'
image 'error.png'
image 'validation.png'

help %Q{
Provides a partial with default, semantic classes as well as mixins for those who prefer to apply the styles in a different manner.
}

welcome_message %Q{
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
  This is an important (success|info|warning|error|validation) message your users need to see
</div>

<div id="my-custom-error-block">
  This is an important (success|info|warning|error|validation) message your users need to see
</div>

... existing layout/page content ...

Enjoy.
}
