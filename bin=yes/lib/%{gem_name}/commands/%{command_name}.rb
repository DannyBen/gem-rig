module %{gem_name_camel}
  module Commands
    class %{command_name_camel} < MisterBin::Command
      include Colsole

      summary "..."
      help "..."
      usage "%{gem_name} %{command_name} ..."
      usage "%{gem_name} %{command_name} (-h|--help)"
      option "-l --long", "..."
      param "DIR", "..."
      example "%{gem_name} %{command_name}"

      def run(args)
        # Implement
      end
    end
  end
end
