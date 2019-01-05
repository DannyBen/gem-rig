require 'mister_bin'
require 'colsole'

module %{gem_name_camel}
  module Commands
    class Base < MisterBin::Command
      include Colsole
    end
  end
end