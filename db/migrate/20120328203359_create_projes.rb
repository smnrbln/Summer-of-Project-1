class CreateProjes < ActiveRecord::Migration
  def change
    create_table :projes do |t|
      t.string :title
      t.text   :content

      t.timestamps
    end
  end
end
