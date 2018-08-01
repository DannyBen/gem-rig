require '%{gem_name}'

help "Write summary here"

usage "%{gem_name} %{command_name} ..."
usage "%{gem_name} %{command_name} (-h|--help|--version)"

option "--flag", "Description"

param "PARAM", "Description"

example "%{gem_name} %{command_name} ..."

action do |args|
  # Implementation here
end

