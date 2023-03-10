require 'spec_helper'

describe Scope do
  it 'sets a scope with hash' do
    scope = described_class.new name: 'Jessica'
    expect(scope.name).to eq 'Jessica'
  end

  it 'sets a scope with object' do
    user = SpecUser.new
    scope = described_class.new user
    expect(scope.name).to eq user.name
  end

  it 'raises an exception on invalid key' do
    scope = described_class.new name: 'Jessica'
    expect { scope.email }.to raise_error NoMethodError
  end

  it 'returns correct respond_to? on hash' do
    scope = described_class.new name: 'Jessica'
    expect(scope.respond_to? :name).to be true
  end

  it 'returns correct respond_to? on object' do
    user = SpecUser.new
    scope = described_class.new user
    expect(scope.respond_to? :email).to be true
  end

  it 'returns false on respond_to? non existing method' do
    scope = described_class.new name: 'Jessica'
    expect(scope.respond_to? :email).to be false
  end
end
