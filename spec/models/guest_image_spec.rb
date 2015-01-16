require 'rails_helper'

RSpec.describe GuestImage, :type => :model do
  it "should save a complete item" do
    image = GuestImage.new image_type:"imgtyp", distribution_path: "diststräng", size:12345, version: "versionssträng", deleted_at:2014-01-16
    expect(image.save).to be_truthy
  end
  it "should require distribution_path" do
    image = GuestImage.new image_type:"imgtyp", size:12345, version: "versionssträng", deleted_at:2014-01-16
    expect(image.save).to be_falsey
  end
  it "should require size" do
    image = GuestImage.new image_type:"imgtyp", distribution_path: "diststräng", version: "versionssträng", deleted_at:2014-01-16
    expect(image.save).to be_falsey
  end
  it "should require version" do
    image = GuestImage.new image_type:"imgtyp", distribution_path: "diststräng", size:12345, deleted_at:2014-01-16
    expect(image.save).to be_falsey
  end
end
