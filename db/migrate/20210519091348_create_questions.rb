class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :correct,    null: false
      t.text :wrong_1,    null: false
      t.text :wrong_2,    null: false
      t.text :wrong_3,    null: false
      t.text :hint,       null: false

      t.timestamps
    end
  end
end
