class Welcome < ActiveRecord::Base
  attr_accessible :img
  has_attached_file :img
end
