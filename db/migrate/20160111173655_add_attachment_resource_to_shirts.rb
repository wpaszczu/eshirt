class AddAttachmentResourceToShirts < ActiveRecord::Migration
  def self.up
    change_table :shirts do |t|
      t.attachment :resource
    end
  end

  def self.down
    remove_attachment :shirts, :resource
  end
end
