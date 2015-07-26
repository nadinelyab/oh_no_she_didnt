class RemoveGossipIdFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :gossip_id, :string
  end
end
