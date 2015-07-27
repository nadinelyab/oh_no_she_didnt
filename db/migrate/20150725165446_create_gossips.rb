class CreateGossips < ActiveRecord::Migration
  def change
    create_table :gossips do |t|
      t.string :celebrity_name
      t.string :title
      t.string :author
      t.string :date_published
      t.integer :gossip_scale

      t.timestamps null: false
    end
  end
end
