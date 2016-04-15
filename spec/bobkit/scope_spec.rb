require 'spec_helper'

describe Scope do
  it "sets a scope with hash" do
    scope = Scope.new name: 'Jessica'
    expect(scope.name).to eq 'Jessica'
  end

  it "sets a scope with object" do
    user = SpecUser.new
    scope = Scope.new user
    expect(scope.name).to eq user.name
  end

  it "raises an exception on invalid key" do
    scope = Scope.new name: 'Jessica'
    expect { scope.email }.to raise_error NoMethodError
  end

  it "returns correct respond_to? on hash" do
    scope = Scope.new name: 'Jessica'
    expect(scope.respond_to? :name).to eq true
  end

  it "returns correct respond_to? on object" do
    user = SpecUser.new
    scope = Scope.new user
    expect(scope.respond_to? :email).to eq true
  end

  it "returns false on respond_to? non existing method" do
    scope = Scope.new name: 'Jessica'
    expect(scope.respond_to? :email).to eq false
  end
end
