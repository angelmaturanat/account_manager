class AddMovements < ActiveRecord::Migration[5.1]
  def change
    create_table :movements do |t|
      t.text :description
      t.decimal :amount
      t.boolean :income
      t.references :movement_type
      t.references :account
      t.references :user
      t.references :currency
      t.timestamps
    end
  end
end
