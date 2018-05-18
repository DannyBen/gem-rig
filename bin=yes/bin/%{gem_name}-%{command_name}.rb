require '%{gem_name}'
require '%{gem_name}/version'

version %{gem_name_camel}::VERSION

help "Write summary here"

usage "%{gem_name} %{command_name} ..."
usage "%{gem_name} %{command_name} (-h|--help|--version)"

option "--flag", "Description"

param "PARAM", "Description"

example "%{gem_name} %{command_name} ..."

action do |args|
  # Implementation here
end

