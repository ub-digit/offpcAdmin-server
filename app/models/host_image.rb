class HostImage < ActiveRecord::Base
  validates_presence_of :version
  validates_presence_of :distribution_path
end
