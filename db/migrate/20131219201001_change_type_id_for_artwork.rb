class ChangeTypeIdForArtwork < ActiveRecord::Migration
  def up
    add_column :artworks, :artwork_type_id, :integer, null:false
    remove_column :artworks, :type_id
  end

  def down
    add_column :artworks, :type_id, :integer, null:false
    remove_column :artworks, :artwork_type_id
  end
end
