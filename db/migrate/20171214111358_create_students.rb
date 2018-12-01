class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :admnno
      t.string :name
      t.string :rollno
      t.string :gender
      t.string :dept
      t.string :password

      t.timestamps null: false
    end
  end
end
