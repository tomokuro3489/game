class CreateRegisterTags < ActiveRecord::Migration[6.1]
  def change
    create_table :register_tags do |t|
      t.references :register, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
