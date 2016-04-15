require 'spec_helper'

describe FileHelpers do
  before :all do
    FileUtils.rm_rf 'tmp/spec'
  end

  it "creates a file with its parent folders" do
    file = 'tmp/spec/we/are/the/champions.txt'
    
    create_file file, 'Queen'
    
    expect(File.exist?(file)).to eq true
    expect(File.read(file)).to eq 'Queen'
  end

  it "creates a folder for a file" do
    file = 'tmp/spec/keep/on/trying.txt'
    dir  = File.dirname file
    
    create_folder_for file
    
    expect(File.directory?(dir)).to eq true
  end
end