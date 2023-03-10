require 'spec_helper'

describe Watcher do
  before :all do
    FileUtils.rm_rf 'tmp/spec'
  end

  before do
    templates_folder 'tmp/spec'
  end

  it 'watches for change' do
    processed = []
    Thread.new(filewatcher, processed) do
      filewatcher.watch { |f, _e| processed << f }
    end
    sleep 0.3

    create_file "#{templates_folder}/watchme.txt", 'hello'
    sleep 0.3

    path = processed[0].keys.first
    expect(path).to match(/watchme.txt/)
    filewatcher.stop
  end
end
