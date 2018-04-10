require 'colsole'
require 'super_docopt'

require 'tsm-%{gem_name}/version'

require 'tsm-%{gem_name}/commands/%{command_name}'

module TSM::%{gem_name_camel}
  # Handles command line execution using docopt.
  class CommandLine < SuperDocopt::Base
    version VERSION
    docopt File.expand_path 'docopt.txt', __dir__
    subcommands [:%{command_name}]

    include Commands::%{command_name_camel}
  end
end
