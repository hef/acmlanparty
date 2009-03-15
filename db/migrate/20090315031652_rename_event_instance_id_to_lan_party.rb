class RenameEventInstanceIdToLanParty < ActiveRecord::Migration
  def self.up
	rename_column( "events", "instance_id", "lan_party_id" )
  end

  def self.down
	rename_column( "events", "lan_party_id", "instance_id" )
  end
end
