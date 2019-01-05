module %{gem_name_camel}
  class CLI
    def self.router
      router = MisterBin::Runner.new version: VERSION,
        header: "Description Here"

      router.route '%{command_name}',    to: Commands::%{command_name_camel}Cmd

      router
    end
  end

end
