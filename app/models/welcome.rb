class Welcome < ActiveRecord::Base
  attr_accessible :img,:choose
  has_attached_file :img
end
