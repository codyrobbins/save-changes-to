module CodyRobbins
  module CreateNew
    module InstanceMethods
      # Updates the attributes of an instance of a model in an appropriately named instance variable in the controller with the attributes in `params` corresponding to the model name.
      #
      # * You pass the name of the model to update to the method.
      # * The key in `params` assumed to contain the attributes of the model is extrapolated from the model name. For example, if the model is `User` then this key would be `:user`.
      # * The instance variable that is updated is assumed to be named according to the model. For example, if the model is `User` then the instance variable will be `@user`.
      #
      # @param name [Symbol, String] The name of the model to update.
      # @return [boolean] Whether the update was successful.
      #
      # @example The following two actions are equivalent.
      #
      #     class UserController < ApplicationController
      #       # The usual Rails way.
      #       def update
      #         @user.update_attributes(params[:user])
      #       end
      #
      #       # Using save-changes-to.
      #       def update
      #         save_changes_to(:user)
      #       end
      #     end
      def save_changes_to(name)
        model = instance_variable(name)
        attributes = params[name]

        model.update_attributes(attributes)
      end
    end
  end
end
