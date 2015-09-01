class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name, limit: 60
      t.string :email, limit: 80
      t.string :phone, limit: 11
      t.string :status, limit: 1
      t.text :observation
      t.string :address
      t.string :document_number

      t.timestamps null: false
    end
    add_index :people, :name
    add_index :people, :email, unique: true
  end
end
