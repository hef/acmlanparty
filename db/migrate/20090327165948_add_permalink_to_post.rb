class AddPermalinkToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :permalink, :string
    Page.find(:all).each(&:save)
  end

  def self.down
    remove_column :posts, :permalink
  end
end
