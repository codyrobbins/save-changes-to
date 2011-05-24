module CodyRobbins
  module CreateNew
    module InstanceMethods
      # Creates a new instance of an ActiveRecord model and assigns it to an instance variable.
      #
      # * You pass the name of the model to create to the method.
      # * The key in `params` assumed to contain the attributes of the model is extrapolated from the model name. For example, if the model is `User` then this key would be `:user`.
      # * The instance variable that the new instance is assigned to will be named according to the model. For example, if the model is `User` then the instance variable will be `@user`.
      #
      # @param name [Symbol, String] The name of the model to create.
      # @return Returns the new instance of the model.
      #
      # @example The following two actions are equivalent.
      #
      #     class UserController < ApplicationController
      #       # The usual Rails way.
      #       def create
      #         @user = User.new(params[:user])
      #       end
      #
      #       # Using create-new.
      #       def create
      #         create_new(:user)
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
