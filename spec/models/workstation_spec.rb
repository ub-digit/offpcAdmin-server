require 'rails_helper'

RSpec.describe Workstation, :type => :model do
  it "should save a complete item" do
    image = Workstation.new name:"WS-namn", sigel: "Gm", floor:"1", room: "302", description:"en kort beskrivning", deleted_at:2014-01-16
    expect(image.save).to be_truthy
  end
  it "should require sigel" do
    image = Workstation.new name:"WS-namn", floor:"1", room: "302", description:"en kort beskrivning", deleted_at:2014-01-16
    expect(image.save).to be_falsey
  end
  it "should require floor" do
    image = Workstation.new name:"WS-namn", sigel: "Gm", room: "302", description:"en kort beskrivning", deleted_at:2014-01-16
    expect(image.save).to be_falsey
  end
  it "should require room" do
    image = Workstation.new name:"WS-namn", sigel: "Gm", floor:"1", description:"en kort beskrivning", deleted_at:2014-01-16
    expect(image.save).to be_falsey
  end
end
