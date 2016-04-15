require 'spec_helper'

describe Actions do
  before :each do
    use_defaults
  end

  after :all do
    use_defaults
  end

  it "has a default templates folder" do
    expect(templates_folder).to eq "templates"
  end

  it "sets a templates folder" do
    templates_folder "my_templates"
    expect(templates_folder).to eq "my_templates"
  end

  it "has a default layouts folder" do
    expect(layouts_folder).to eq "templates/layouts"
  end

  it "sets a layouts folder" do
    layouts_folder "my_layouts"
    expect(layouts_folder).to eq "my_layouts"
  end

  it "has a default styles folder" do
    expect(styles_folder).to eq "styles"
  end

  it "sets a styles folder" do
    styles_folder "my_styles"
    expect(styles_folder).to eq "my_styles"
  end

  it "has a default output folder" do
    expect(output_folder).to eq "output"
  end

  it "sets a output folder" do
    output_folder "my_output"
    expect(output_folder).to eq "my_output"
  end

  it "has a default css output folder" do
    expect(css_output_folder).to eq "output/css"
  end

  it "sets a css output folder" do
    css_output_folder "my_css_output"
    expect(css_output_folder).to eq "my_css_output"
  end

  it "has default slim options" do
    expect(slim_options[:pretty]).to eq true
  end

  it "sets slim options" do
    slim_options pretty: false
    expect(slim_options[:pretty]).to eq false
  end

  it "has default scss options" do
    expect(scss_options[:cache]).to eq true
  end

  it "sets slim options" do
    scss_options cache: false
    expect(scss_options[:cache]).to eq false
  end

  it "sets a scope" do
    scope user: 'Nikita'
    expect(scope.user).to eq 'Nikita'
  end

end