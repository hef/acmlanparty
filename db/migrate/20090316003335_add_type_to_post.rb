class AddTypeToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :type, :string, :default => :news_item
  end

  def self.down
    remove_column :posts, :type
  end
end
