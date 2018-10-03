require_relative '../spec_helper'

describe package('nginx'), :if => os[:family] == 'redhat' do
  it { should_be_installed }
end

describe package('squid'), :if => os[:family] == 'redhat' do
  it { should_be_installed }
end

describe service('nginx'), :if => os[:family] == 'redhat' do
  it { should_be_enabled }
  it { should_be_running }
end

describe service('squid'), :if => os[:family] == 'redhat' do
  it { should_be_enabled }
  it { should_be_running }
end

describe service('node-exporter'), :if => os[:family] == 'redhat' do
  it { should_be_enabled }
  it { should_be_running }
end

describe port(3128) do
  it { should_be_listening }
end

describe port(9090) do
  it { should_be_listening }
end
