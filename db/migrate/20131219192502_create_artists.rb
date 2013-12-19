class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :phone_no
      t.string :birthplace
      t.integer :style_id, null: false

      t.timestamps
    end
  end
end
