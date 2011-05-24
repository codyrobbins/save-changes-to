Save Changes To for Rails
=========================

This Rails plugin makes a `save_changes_to` method available in `ApplicationController` which takes the name of an ActiveRecord model and updates the attributes of an instance of that model an appropriately named instance variable in the controller with the attributes in `params` corresponding to the model name.

Full documentation is at [RubyDoc.info](http://rubydoc.info/gems/save-changes-to).

Example
-------

The following

    class UserController < ApplicationController
      def update
        save_changes_to(:user)
      end
    end

is the equivalent of

    class UserController < ApplicationController
      def update
        @user.update_attributes(params[:user])
      end
    end

Colophon
--------

### Tested with

* Rails 3.0.5 — 20 May 2011

### Contributing

* [Source](https://github.com/codyrobbins/save-changes-to)
* [Bug reports](https://github.com/codyrobbins/save-changes-to/issues)

To send patches, please fork on GitHub and submit a pull request.

### Credits

© 2011 [Cody Robbins](http://codyrobbins.com/). See LICENSE for details.

* [Homepage](http://codyrobbins.com/software/save-changes-to)
* [Follow me on Twitter](http://twitter.com/codyrobbins)