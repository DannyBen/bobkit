require 'spec_helper'

describe SassBridge do
  before :all do
    FileUtils.rm_rf 'tmp/spec'
  end

  before do
    styles_folder 'spec/fixtures/styles'
    css_output_folder 'tmp/spec'
  end

  it 'compiles css' do
    expect(compile_css 'main').to match(/h1 .big/)
  end

  it 'compiles css and source map to file' do
    outfile = "#{css_output_folder}/main.css"
    expect(File).not_to exist(outfile)

    compile_css 'main', output: 'main'

    expect(File).to exist outfile
    expect(File).to exist "#{outfile}.map"
    expect(File.read outfile).to match(/h1 .big/)
  end

  it 'supports import with globbing' do
    result = compile_css 'parent'
    expect(result).to match(/h2 .child/)
    expect(result).to match(/h3 .grandchild/)
  end
end
