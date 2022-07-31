class AddQuestionToPerfumes < ActiveRecord::Migration[6.1]
  def change
    add_column :perfumes, :question2, :string
  end
end
