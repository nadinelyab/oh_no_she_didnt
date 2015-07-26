class AddGossipToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :gossip, index: true, foreign_key: true
  end
end
