class CreateInstances < ActiveRecord::Migration
  def self.up
    create_table :instances do |t|
      t.datetime :start
      t.datetime :end
      t.string :title
      t.text :description
      t.text :location

      t.timestamps
    end
  end

  def self.down
    drop_table :instances
  end
end
