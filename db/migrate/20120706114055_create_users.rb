class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.string :surname
      t.string :email
      t.string :phone
      t.string :s_number

      t.timestamps
    end
  end
end
