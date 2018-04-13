require 'colsole'
require 'super_docopt'

require 'tsm-%{gem_name}/version'

require 'tsm-%{gem_name}/commands/%{command_name}'

<<<<<<< HEAD:bin=yes/lib/%{gem_name}/command_line.rb
module %{gem_name_camel}
=======
module TSM::%{gem_name_camel}
>>>>>>> e07f7e57ec05ce0ec620f6613a541a5c18823120:bin=yes/lib/tsm-%{gem_name}/command_line.rb
  # Handles command line execution using docopt.
  class CommandLine < SuperDocopt::Base
    version VERSION
    docopt File.expand_path 'docopt.txt', __dir__
    subcommands [:%{command_name}]

    include Commands::%{command_name_camel}
  end
end
