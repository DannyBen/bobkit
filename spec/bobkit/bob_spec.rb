require 'spec_helper'

describe Bob do
  subject { described_class.new }

  it "has all methods from Tasks" do
    expect(subject).to respond_to :render
    expect(subject).to respond_to :copy_asset
  end
end