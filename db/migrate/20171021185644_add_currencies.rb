class AddCurrencies < ActiveRecord::Migration[5.1]
  def change
    create_table :currencies do |t|
      t.string :code
      t.string :name
      t.string :symbol
      t.decimal :exchange
      t.timestamps
    end
  end
end
