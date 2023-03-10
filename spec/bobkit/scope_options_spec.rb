require 'spec_helper'

describe ScopeOptions do
  before :each do
    use_defaults
  end

  after :all do
    use_defaults
  end

  it 'sets a scope' do
    scope user: 'Nikita'
    expect(scope.user).to eq 'Nikita'
  end
end
