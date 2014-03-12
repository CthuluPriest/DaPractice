class Authorization < ActiveAdmin::AuthorizationAdapter

      def authorized?(action, subject = nil)
        true
        if action == :update || action == :destroy || action == :create
            user.role == "Администратор"
          else
            true
          end
      end

  end