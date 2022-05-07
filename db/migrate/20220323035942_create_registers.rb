class CreateRegisters < ActiveRecord::Migration[6.1]
  def change
    create_table :registers do |t|
      t.string :name
      t.string :image
      t.string :genre
      t.string :sport
      t.integer :eve
      t.text :about

      t.timestamps
    end
  end
end
