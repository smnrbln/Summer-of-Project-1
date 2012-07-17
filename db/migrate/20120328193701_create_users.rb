class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :ad
      t.string :soyad
      t.string :email
      t.string :tel
      t.string :okulno
      t.string :type

      t.timestamps
    end
  end
end
