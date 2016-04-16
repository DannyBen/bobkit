require 'spec_helper'

describe Assets do
  before :all do
    FileUtils.rm_rf 'tmp/spec'
  end

  before :each do 
    FileUtils.rm_rf 'tmp/spec'
    assets_folder 'spec/fixtures/assets'
    output_folder 'tmp/spec'
  end

  after :each do
    use_defaults
  end

  it "copies a file" do
    target = "#{assets_output_folder}/more/bobcat.jpg"

    copy_asset 'more/bobcat.jpg'

    expect(File.exist?(target)).to eq true
  end

  it "copies a folder" do
    target = "#{assets_output_folder}/zip_files"

    copy_asset 'zip_files'

    expect(File.directory?(target)).to eq true
    expect(File.exist?("#{target}/fakezip.txt")).to eq true
  end

  it "copies with explicit target" do
    target = "put/me/down.jpg"

    copy_asset 'more/bobcat.jpg', target

    expect(File.exist?("#{output_folder}/#{target}")).to eq true
  end
  
end