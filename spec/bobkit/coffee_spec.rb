require 'spec_helper'

describe CoffeeBridge do
  before :all do
    FileUtils.rm_rf 'tmp/spec'
  end

  before :each do
    coffee_folder 'spec/fixtures/coffee'
    js_output_folder 'tmp/spec'
  end

  it "compiles coffee" do
    result = compile_coffee 'main'    
    expect(result).to match /alert\('Hello Bob'\)/
  end

  it "compiles coffee to file" do
    outfile = "#{js_output_folder}/main.js"
    expect(File.exist?(outfile)).to be false

    compile_coffee 'main', output: 'main'

    expect(File.exist?(outfile)).to be true
    expect(File.read(outfile)).to match /alert\('Hello Bob'\)/
  end
end