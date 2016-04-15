require 'spec_helper'

describe SlimExtra do
  before :all do
    FileUtils.rm_rf 'tmp/spec'
  end

  before :each do
    templates_folder 'spec/fixtures/templates'
    output_folder 'tmp/spec'
  end

  it "renders a simple partial" do
    result = render 'simple_partial'
    expect(result).to match /is a simple partial/
  end

  it "renders a partial with a hash scope" do
    result = render 'movie_partial', movie: 'Ace Ventura', actor: 'Jim Carrey'
    expect(result).to match /Movie: Ace Ventura/
    expect(result).to match /Actor: Jim Carrey/
  end

  it "renders a partial with an object scope" do
    scope SpecUser.new
    result = render 'user_partial'
    expect(result).to match /Name: James Brown/
    expect(result).to match /Email: james.brown@still-alive/
  end

  it "renders a partial to a file" do
    outfile = "#{output_folder}/simple.html"
    expect(File.exist?(outfile)).to be false

    render 'simple_partial', output: 'simple'

    expect(File.exist?(outfile)).to be true
    expect(File.read(outfile)).to match /is a simple partial/
  end
end