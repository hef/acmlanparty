class CreateAttendees < ActiveRecord::Migration
  def self.up
    create_table :attendees do |t|
      t.integer :lan_party_id
      t.integer :user_id
      t.string :handle
      t.datetime :registered_at

      t.timestamps
    end
  end

  def self.down
    drop_table :attendees
  end
end
