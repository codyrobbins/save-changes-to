module CodyRobbins
  module SaveChangesTo
    class Railtie < Rails::Railtie
      initializer('cody_robbins.save_changes_to') do
        ActiveSupport.on_load(:action_controller) do
          include(InstanceMethods)
        end
      end
    end
  end
end
