require 'spec_helper'

describe 'monit::unicorn' do
  let(:chef_run) { ChefSpec::Runner.new(:platform => 'centos', :version => '6.4').converge described_recipe }

  it 'creates /etc/monit.conf' do
    expect(chef_run).to render_file('/etc/monit.conf').with_content('include /etc/monit.d/*.conf')
  end
  it 'creates /etc/monit.d' do
  end
end
