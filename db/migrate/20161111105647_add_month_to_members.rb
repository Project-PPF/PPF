class AddMonthToMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :month, :string
  end
end
