require 'spec_helper'

describe FileHelpers do
  before :all do
    FileUtils.rm_rf 'tmp/spec'
  end

  it 'creates a folder' do
    path = 'tmp/spec/rock/on'

    create_folder path

    expect(File.directory?(path)).to be true
  end

  it 'creates a folder for a file' do
    file = 'tmp/spec/keep/on/trying.txt'
    dir  = File.dirname file

    create_folder_for file

    expect(File.directory?(dir)).to be true
  end

  it 'creates a file with its parent folders' do
    file = 'tmp/spec/we/are/the/champions.txt'

    create_file file, 'Queen'

    expect(File.exist?(file)).to be true
    expect(File.read(file)).to eq 'Queen'
  end

  it 'copies a file' do
    target = 'tmp/spec/nested/folder/bob.png'

    copy_file 'spec/fixtures/assets/bob.png', target

    expect(File.exist?(target)).to be true
  end

  it 'copies a folder' do
    target = 'tmp/spec/deep/assets'

    copy_folder 'spec/fixtures/assets', target

    expect(File.directory?(target)).to be true
    expect(File.exist?("#{target}/bob.png")).to be true
  end
end
