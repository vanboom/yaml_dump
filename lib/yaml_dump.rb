require "yaml_dump/version"

module YamlDump
  class Railtie < Rails::Railtie
    rake_tasks do
      load File.expand_path('../tasks/yaml_dump.rake', __FILE__ )
    end
  end
end
