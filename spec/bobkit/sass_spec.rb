require 'spec_helper'

describe SassBridge do
  before :all do
    FileUtils.rm_rf 'tmp/spec'
  end

  before :each do
    styles_folder 'spec/fixtures/styles'
    css_output_folder 'tmp/spec'
  end

  it "compiles css" do
    result = compile_css 'main'    
    expect(result).to match /h1 .big/
  end

  it "compiles css to file" do
    outfile = "#{css_output_folder}/main.css"
    expect(File.exist?(outfile)).to be false

    compile_css 'main', output: 'main'

    expect(File.exist?(outfile)).to be true
    expect(File.read(outfile)).to match /h1 .big/
  end

  it "supports import with globbing" do
    result = compile_css 'parent'
    expect(result).to match /h2 .child/
    expect(result).to match /h3 .grandchild/
  end
end