module %{gem_name_camel}::Commands
  module %{command_name_camel}

    def %{command_name}
      Handler.new(args).execute
    end

    class Handler
      attr_reader :args

      include Colsole

      def initialize(args)
        @args = args
      end

      def execute
        # ...
      end
    end
  end
end
