require 'spec_helper'

describe SlimOptions do
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
end