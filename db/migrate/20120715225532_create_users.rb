class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :ad
      t.string :soyad
      t.string :email
      t.string :telno
      t.string :okulno

      t.timestamps
    end
  end
end
