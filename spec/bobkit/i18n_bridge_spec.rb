require 'spec_helper'

describe I18nBridge do
  before :each do
    locales_folder 'spec/fixtures/locales'
  end

  after :all do
    use_defaults
  end

  it "sets I18n locale" do
    locale :fr
    expect(I18n.locale).to eq :fr
  end

  it "provides access to t()" do
    locale :fr
    expect(t('common.hello')).to eq "Bonjour"
  end

  it "provides access to l()" do
    locale :en
    time = Time.parse "September 1, 2016"
    expect(l(time)).to eq "Thursday, September 1, 00:00"
  end

end