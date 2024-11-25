class CreateExams < ActiveRecord::Migration[8.0]
  def change
    create_table :exams do |t|
      t.references :user, null: false, foreign_key: true
      t.string :subject
      t.decimal :score

      t.timestamps
    end
  end
end
