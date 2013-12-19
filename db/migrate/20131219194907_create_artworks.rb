class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.integer :artist_id, null: false
      t.date :created_date
      t.date :available_date
      t.decimal :cost
      t.integer :type_id, null: false
      t.boolean :available, null: false
      t.boolean :sold, null: false
      t.integer :collection_id

      t.timestamps
    end
  end
end
