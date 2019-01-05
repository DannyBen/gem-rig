module %{gem_name_camel}
  module Commands
    class %{command_name_camel}Cmd < Base
      summary "..."
      help "..."
      usage "%{gem_name} %{command_name} ..."
      usage "%{gem_name} %{command_name} (-h|--help)"
      option "-l --long", "..."
      param "DIR", "..."
      example "%{gem_name} %{command_name}"

      def run
        p args
      end
    end
  end
end
