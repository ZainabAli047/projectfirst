class AddAvatarToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :my_avatar, :string
  end
end
