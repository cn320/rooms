class Room < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :room_id, :status, :volume
end
