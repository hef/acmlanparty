class RenameEventInstanceCol < ActiveRecord::Migration
  def self.up
     rename_column( "events", "instance", "instance_id" )
  end

  def self.down
      rename_column( "events", "instance_id", "instance" )
  end
end
