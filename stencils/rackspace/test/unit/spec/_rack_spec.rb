require_relative 'spec_helper'

describe '|{ cookbook['name'] }|::|{ options['name'] }|' do
  let(:chef_run) do
    ChefSpec::Runner.new.converge('|{ cookbook['name'] }|::|{ options['name'] }|')
  end

  it 'includes the sudo recipe' do
    expect(chef_run).to include_recipe('sudo')
  end

  it 'creates the rack group' do
    expect(chef_run).to create_group('rack')
  end

  it 'creates the rack user' do
    expect(chef_run).to create_user('rack')
  end

  it 'creates the rack home directory' do
    expect(chef_run).to create_directory('/home/rack')
  end

  it 'creates the rack .ssh directory' do
    expect(chef_run).to create_directory('/home/rack/.ssh')
  end

  it 'creates the rach authorized keys file' do
    expect(chef_run).to create_remote_file('/home/rack/.ssh/authorized_keys')
  end
end
