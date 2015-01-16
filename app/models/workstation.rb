class Workstation < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :sigel
  validates_presence_of :floor
  validates_presence_of :room
end
