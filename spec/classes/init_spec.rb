require 'spec_helper'
describe 'Docker' do
  context 'with default values for all parameters' do
    it { should contain_class('Docker') }
  end
end
