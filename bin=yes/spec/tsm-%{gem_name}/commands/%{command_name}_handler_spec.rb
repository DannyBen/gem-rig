require 'spec_helper'

describe Commands::Build::%{command_name_camel}Handler do
  let(:args) {{ 'key' => 'value' }}
  subject { described_class.new args }

  describe '#execute' do
    let(:workdir) { 'spec/tmp' }

    context "some context" do
      let(:args) {{ 'new' => 'args' }}
      
      it 'does something' do
        # ...
      end
    end
  end
  
end
