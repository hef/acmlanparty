class CreateSponsors < ActiveRecord::Migration
  def self.up
    create_table :sponsors do |t|
      t.string :name
      t.string :description
      t.string :url
      t.string :img_small
      t.string :img_full
      t.string :alttext

      t.timestamps
    end
  end

  def self.down
    drop_table :sponsors
  end
end
