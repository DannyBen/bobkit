require 'spec_helper'

describe SlimBridge do
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

  it "renders a simple partial from another partial" do
    result = render 'simple_render'
    expect(result).to match /is a simple partial/
  end

  it "renders a partial that calls another partial" do
    result = render 'babushka', name: 'Big Babushka'
    expect(result).to match /<h1>.*Big Babushka/m
    expect(result).to match /<h2>.*Medium Babushka/m
    expect(result).to match /<h3>.*Small Babushka/m
  end

  it "renders a partial to a file" do
    outfile = "#{output_folder}/simple.html"
    expect(File.exist?(outfile)).to be false

    render 'simple_partial', output: 'simple'

    expect(File.exist?(outfile)).to be true
    expect(File.read(outfile)).to match /is a simple partial/
  end

  context "with hash scope" do
    it "renders a partial" do
      result = render 'movie_partial', movie: 'Ace Ventura', actor: 'Jim Carrey'
      expect(result).to match /Movie: Ace Ventura/
      expect(result).to match /Actor: Jim Carrey/
    end
  end

  context "with object scope" do
    it "renders a partial" do
      scope SpecUser.new
      result = render 'user_partial'
      expect(result).to match /Name: James Brown/
      expect(result).to match /Email: james.brown@still-alive/
    end

    it "can access scope methods" do
      scope SpecYoutube.new
      result = render 'youtube_partial'
      expect(result).to match /Cat vs Printer/
      expect(result).to match /<video>large/
      expect(result).to match /YouTube footer/
    end
  end


end