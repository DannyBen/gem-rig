require 'spec_helper'

describe 'bin/%{gem_name}' do
  context "without arguments" do
    it "shows usage" do
      expect(`bin/%{gem_name}`).to match_fixture('cli/usage')
    end
  end

  context "without --help" do
    it "shows extended usage" do
      expect(`bin/%{gem_name} --help`).to match_fixture('cli/help')
    end
  end

  describe '%{command_name}' do
    it "works" do
      expect(`bin/%{gem_name} %{command_name}`).to match_fixture('cli/%{command_name}')
    end
  end

end
