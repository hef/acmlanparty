class RenameTableInstancesToLanParties < ActiveRecord::Migration
  def self.up
    rename_table(instances,lan_parties)
  end

  def self.down
    rename_table(instances,lan_parties)
  end
end
