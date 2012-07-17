class AddProjeIdToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :proje_id, :string
  end
end
