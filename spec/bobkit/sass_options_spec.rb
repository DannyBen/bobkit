require 'spec_helper'

describe SassOptions do
  before :each do
    use_defaults
  end

  after :all do
    use_defaults
  end

  it "has default scss options" do
    expect(scss_options[:cache]).to eq true
    expect(sass_options[:cache]).to eq true
  end

  it "sets scss options" do
    scss_options cache: false
    expect(scss_options[:cache]).to eq false
  end
end