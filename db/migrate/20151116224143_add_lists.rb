class AddLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :song
      t.string :author
      t.string :url
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
