class AddAttachmentPhotoToFamilies < ActiveRecord::Migration
  def self.up
    change_table :families do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :families, :photo
  end
end
