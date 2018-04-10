require 'spec_helper'

describe CommandLine do
  let(:workdir) { 'spec/tmp' }

  context "without arguments" do
    it "shows usage" do
      expect{ described_class.execute }.to output_fixture 'cli/usage'
    end
  end

  describe '%{command_name}' do
    let(:argv) { %%w[%{command_name}] }

    it 'works' do
      # ...
    end
  end
end
