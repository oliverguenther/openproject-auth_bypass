module OpenProject::AuthBypass
  module Patches
    module SysControllerPatch

      def self.included(base)
        base.class_eval do
          unloadable

          include ActionController::HttpAuthentication::Basic
          include InstanceMethods

          alias_method_chain :require_basic_auth, :bypass

        end
      end

      module InstanceMethods

        private

        def require_basic_auth_with_bypass
          @authenticated_user = find_user_from_basic_auth
          return true if @authenticated_user

          render_authorization_required
        end
        
        ##
        # Return the user from the username parameter
        # in the basic auth header.
        def find_user_from_basic_auth
          authenticate_with_http_basic do |login, _|
            return User.find_by_login(login)
          end
        end
        
        def render_authorization_required
          response.headers['WWW-Authenticate'] = 'Basic realm="Repository Authentication"'
          render text: 'Authorization required', status: 401
          false
        end
      end

    end
  end
end

SysController.send(:include, OpenProject::AuthBypass::Patches::SysControllerPatch)
