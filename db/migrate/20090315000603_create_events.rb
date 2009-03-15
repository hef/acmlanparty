class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.integer :instance
      t.datetime :start
      t.datetime :end
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
