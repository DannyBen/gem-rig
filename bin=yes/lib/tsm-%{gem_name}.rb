require 'tsm-%{gem_name}/%{class_name}'
require 'tsm-%{gem_name}/command_line'

include TSM

module TSM::%{gem_name_camel}
  module Commands
  end
end
