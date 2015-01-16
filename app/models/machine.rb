class Machine < ActiveRecord::Base
  validates_presence_of :serialnumber
  validates_presence_of :model
  validates_presence_of :mac_address
  #validates_format_of   :mac_address, :with => /([a-z0-9]{2}:){6}/i, :on => :create
  #validates_format_of   :mac_address, :with => /([a-f0-9]{2}:){5}[a-f0-9]{2}/i, :on => :create
  validates_format_of   :mac_address, :with => /([a-f0-9][a-f0-9]?:){5}[a-f0-9][a-f0-9]?/i, :on => :create
  #validates_format_of   :mac_address, :with => /[a-f0-9][a-f0-9]:[a-f0-9][a-f0-9]:[a-f0-9][a-f0-9]:[a-f0-9][a-f0-9]:[a-f0-9][a-f0-9]:[a-f0-9][a-f0-9]/i, :on => :create
end
