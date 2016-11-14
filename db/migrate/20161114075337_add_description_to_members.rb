class AddDescriptionToMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :description, :text
  end
end
