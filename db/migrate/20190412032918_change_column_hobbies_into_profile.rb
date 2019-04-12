class ChangeColumnHobbiesIntoProfile < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :hobbies, :string
    add_column :profiles, :hobbies, :string, array: true, default: []
  end
end
