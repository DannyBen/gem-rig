require 'spec_helper'

describe 'bin/%{gem_name}' do
  subject { MisterBin::Runner.new '%{gem_name}', basedir: 'bin' }

  it "shows list of commands" do
    expect{ subject.run }.to output_fixture('cli/commands')
  end

  context "on exception" do
    it "errors gracefuly" do
      expect(`bin/%{gem_name} command that errors 2>&1`).to match_fixture('cli/exception')
    end
  end
end
