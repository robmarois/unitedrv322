class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :question

      t.timestamps
    end
  end
end
