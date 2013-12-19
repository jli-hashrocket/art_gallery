class CreateArtworkTypes < ActiveRecord::Migration
  def change
    create_table :artwork_types do |t|
      t.string :name, null:false

      t.timestamps
    end
  end
end
