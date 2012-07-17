class AddGroupIdToProjes < ActiveRecord::Migration
  def change
    add_column :projes, :group_id, :string
  end
end
