class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :gender, null: false
      t.integer :role, null: false, default: 1
      t.string :number, null: false
      t.string :country, null: false
      t.timestamp :date_of_birth, null: false
      t.text :bio
      t.string :username, null: false, index: true

      t.timestamps
    end
  end
end
