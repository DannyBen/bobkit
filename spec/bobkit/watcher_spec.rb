require 'spec_helper'

describe Watcher do
  before :all do
    FileUtils.rm_rf 'tmp/spec'
  end

  before :each do
    templates_folder 'tmp/spec'
  end

  it "should watch for change" do
    processed = []
    thread = Thread.new(filewatcher, processed) do
      filewatcher.watch(0.1){ |f,e| processed << f }
    end
    sleep 0.2
    
    create_file "#{templates_folder}/watchme.txt", 'hello'
    sleep 0.2
    
    expect(processed[0]).to match /watchme.txt/
    filewatcher.stop
  end

end