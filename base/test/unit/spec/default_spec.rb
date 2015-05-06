require_relative 'spec_helper'

describe '|{ cookbook['name'] }|::default' do
  let(:chef_run) do
    ChefSpec::Runner.new.converge('|{ cookbook['name'] }|::default')
  end

  %w(
    chef-sugar-rackspace
    rackspace_support
    chef-client
    chef-client::config
    chef-client::delete_validation
  ).each do |recipe|
    it "includes recipe #{recipe}" do
      expect(chef_run).to include_recipe(recipe)
    end
  end
end
