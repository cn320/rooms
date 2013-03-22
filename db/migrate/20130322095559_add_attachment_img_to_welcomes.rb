class AddAttachmentImgToWelcomes < ActiveRecord::Migration
  def self.up
    change_table :welcomes do |t|
      t.attachment :img
    end
  end

  def self.down
    drop_attached_file :welcomes, :img
  end
end
