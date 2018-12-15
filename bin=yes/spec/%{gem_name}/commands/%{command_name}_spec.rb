require 'spec_helper'

describe 'bin/%{gem_name}-%{command_name}' do
  subject { CLI.runner }

  context "without arguments" do
    it "shows short usage" do
      expect{ subject.run %%w[%{command_name}]}.to output_fixture('cli/%{command_name}/usage')
    end
  end

  context "with --help" do
    it "shows long usage" do
      expect{ subject.run %%w[%{command_name} --help] }.to output_fixture('cli/%{command_name}/help')
    end
  end

  context "with required arguments" do
    # Implement
  end
end
