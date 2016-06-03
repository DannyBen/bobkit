require 'spec_helper'

describe MarkdownBridge do

  before :all do
    FileUtils.rm_rf 'tmp/spec'
  end

  before :each do
    markdown_folder 'spec/fixtures/markdown'
    templates_folder 'spec/fixtures/templates'
    output_folder 'tmp/spec'
  end

  it "compiles markdown" do
    result = markdown 'article'
    expect(result).to include "<h1>Hello</h1>"
    expect(result).to include "<p>World</p>"
  end

  context "with layout" do
    it "compiles markdown to file" do
      outfile = "#{output_folder}/article.html"
      expect(File.exist?(outfile)).to be false

      markdown 'article', layout: :default, output: 'article'

      expect(File.exist?(outfile)).to be true
      expect(File.read(outfile)).to include "<h1>Hello</h1>"
      expect(File.read(outfile)).to include "<p>World</p>"
    end
  end

end