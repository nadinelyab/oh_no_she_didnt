class RemoveGossipFromComments < ActiveRecord::Migration
  def change
    remove_reference :comments, :gossip_id, index: true, foreign_key: true
  end
end
