class AddRaporToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :rapor, :string
  end
end
