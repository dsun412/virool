require 'spec_helper'

# Site has fields: 
describe Site do
  before { @site = Site.new(
    site_id: 1,
    platform: "Rails",
    country: "United States of America",
    state: "California",
    amount: 100,
    data: Time.now) }

  subject { @site }

  it { should respond_to(:platform) }
  it { should respond_to(:country) }
  it { should respond_to(:state) }
  it { should respond_to(:amount) }
  it { should respond_to(:data) }
  it { should respond_to(:site_id) }

  describe "when platform is not present" do
    before { @site.platform = "" }
    it { should_not be_valid }
  end

  describe "when country is not present" do
    before { @site.country = "" }
    it { should_not be_valid }
  end

  describe "when state is not present" do
    before { @site.state = "" }
    it { should_not be_valid }
  end

  describe "when amount is not present" do
    before { @site.amount = "" }
    it { should_not be_valid }
  end

  describe "when data is not present" do
    before { @site.data = "" }
    it { should_not be_valid }
  end

  describe "when site_id is not present" do
    before { @site.site_id = "" }
    it { should_not be_valid }
  end

  describe "when site_id is not positive" do
    before { @site.site_id = 0 }
    it { should_not be_valid }
  end

end
