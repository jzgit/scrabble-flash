class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.integer :duration
      t.integer :score

      t.timestamps
    end
  end
end
