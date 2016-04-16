require 'spec_helper'

describe LocationOptions do
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

  it "has a default coffee folder" do
    expect(coffee_folder).to eq "coffee"
  end

  it "sets a coffee folder" do
    coffee_folder "my_coffee"
    expect(coffee_folder).to eq "my_coffee"
  end

  it "has a default output folder" do
    expect(output_folder).to eq "output"
  end

  it "sets an output folder" do
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

  it "has a default js output folder" do
    expect(js_output_folder).to eq "output/js"
  end

  it "sets a js output folder" do
    js_output_folder "my_js_output"
    expect(js_output_folder).to eq "my_js_output"
  end

  it "has a default assets folder" do
    expect(assets_folder).to eq "assets"
  end

  it "sets an assets folder" do
    assets_folder "my_assets"
    expect(assets_folder).to eq "my_assets"
  end

  it "has a default assets output folder" do
    expect(assets_output_folder).to eq "output/assets"
  end

  it "sets an assets output folder" do
    assets_output_folder "my_assets"
    expect(assets_output_folder).to eq "my_assets"
  end
end