class CreateSponsors < ActiveRecord::Migration
  def self.up
	create_table "sponsors", :force => true do |t|
		t.column :name,				:string
		t.column :url,				:string
		t.column :img_small,		:string
		t.column :img_full,			:string
		t.column :alttext,			:string	
	end
  end

  def self.down
  end
end
