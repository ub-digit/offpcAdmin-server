require 'rails_helper'

RSpec.describe HostImage, :type => :model do
  it "should save a complete item" do
    image = HostImage.new distribution_path: "diststräng", version: "versionssträng"
    expect(image.save).to be_truthy
  end
  it "should require distribution_path" do
    image = HostImage.new version: "versionssträng"
    expect(image.save).to be_falsey
  end
  it "should require version" do
    image = HostImage.new distribution_path: "diststräng"
    expect(image.save).to be_falsey
  end
end
