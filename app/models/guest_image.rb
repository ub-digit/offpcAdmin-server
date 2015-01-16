class GuestImage < ActiveRecord::Base
  validates_presence_of :version
  validates_presence_of :distribution_path
  validates_presence_of :size
end
