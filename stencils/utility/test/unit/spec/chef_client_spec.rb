require_relative 'spec_helper'

describe '|{ cookbook['name'] }|::|{ options['name'] }|' do
  let(:chef_run) do
    ChefSpec::Runner.new.converge('|{ cookbook['name'] }|::|{ options['name'] }|')
  end

  it 'includes the chef-client default recipe' do
    expect(chef_run).to include_recipe('chef-client')
  end

  it 'includes the chef-client::config' do
    expect(chef_run).to include_recipe('chef-client::config')
  end

  it 'includes the chef-client::delete_validation' do
    expect(chef_run).to include_recipe('chef-client::delete_validation')
  end
end
