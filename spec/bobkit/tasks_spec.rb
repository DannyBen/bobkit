require 'spec_helper'

describe Tasks do
  before :each do
    use_defaults
  end

  after :all do
    use_defaults
  end

  it "has default slim options" do
    expect(slim_options[:pretty]).to eq true
  end

  it "sets slim options" do
    slim_options pretty: false
    expect(slim_options[:pretty]).to eq false
  end

  it "has default scss options" do
    expect(scss_options[:cache]).to eq true
  end

  it "sets slim options" do
    scss_options cache: false
    expect(scss_options[:cache]).to eq false
  end

  it "sets a scope" do
    scope user: 'Nikita'
    expect(scope.user).to eq 'Nikita'
  end

end