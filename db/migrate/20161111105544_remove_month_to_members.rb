class RemoveMonthToMembers < ActiveRecord::Migration[5.0]
  def change
    remove_column :members, :month, :string
  end
end
