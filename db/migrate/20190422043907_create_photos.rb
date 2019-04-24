class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.integer :profile_id
      t.string :pics
      t.timestamps
    end
  end
end
