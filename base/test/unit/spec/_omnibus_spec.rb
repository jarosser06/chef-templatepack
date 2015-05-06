require_relative 'spec_helper'

describe '|{ cookbook['name'] }|::_omnibus' do
  let(:chef_run) do
    ChefSpec::Runner.new.converge('|{ cookbook['name'] }|::_omnibus')
  end

  it 'includes the omnibus_updater recipe' do
    expect(chef_run).to include_recipe('omnibus_updater')
  end
end
