class AddStoryToGossip < ActiveRecord::Migration
  def change
    add_column :gossips, :story, :string
  end
end
