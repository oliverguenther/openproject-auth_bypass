module OpenProject::AuthBypass
  class Engine < ::Rails::Engine
    engine_name :openproject_auth_bypass

    include OpenProject::Plugins::ActsAsOpEngine

    register 'openproject-auth_bypass',
      :author_url => 'https://github.com/oliverguenther/openproject-auth_bypass',
      :requires_openproject => '>= 4.1'

    patches [ :SysController ]
  end
end
