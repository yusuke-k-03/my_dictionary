class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.integer :question_id
      t.text :text

      t.timestamps
    end
  end
end
