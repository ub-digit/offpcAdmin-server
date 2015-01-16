require 'rails_helper'

RSpec.describe Machine, :type => :model do
  it "should save a complete item" do
    machine = Machine.new workstation_id:"12345", serialnumber: "a789123h345", model:"7800dc", mac_address: "00:12:A5:34:45:65", description:"en kort beskrivning", deleted_at:2014-01-16
    expect(machine.save).to be_truthy
  end
  it "should require model" do
    machine = Machine.new workstation_id:"12345", serialnumber: "a789123h345", mac_address: "00:12:A5:34:45:65", description:"en kort beskrivning", deleted_at:2014-01-16
    expect(machine.save).to be_falsey
  end
  it "should require mac_address" do
    machine = Machine.new workstation_id:"12345", serialnumber: "a789123h345", model:"7800dc", description:"en kort beskrivning", deleted_at:2014-01-16
    expect(machine.save).to be_falsey
  end
  it "should require serialnumber" do
    machine = Machine.new workstation_id:"12345", model:"7800dc", mac_address: "00:12:A5:34:45:65", description:"en kort beskrivning", deleted_at:2014-01-16
    expect(machine.save).to be_falsey
  end
  it "needs mac_address to consist of six colonseparated hex numbers <=FF (A)" do
    machine = Machine.new workstation_id:"12345", serialnumber: "a789123h345", model:"7800dc", mac_address: "0Q:12:A5:p4:45:65", description:"en kort beskrivning", deleted_at:2014-01-16
    expect(machine.save).to be_falsey
  end
  it "needs mac_address to consist of six colonseparated hex numbers <=FF (B)" do
    machine = Machine.new workstation_id:"12345", serialnumber: "a789123h345", model:"7800dc", mac_address: "00:12:5065:00", description:"en kort beskrivning", deleted_at:2014-01-16
    expect(machine.save).to be_falsey
  end
end
