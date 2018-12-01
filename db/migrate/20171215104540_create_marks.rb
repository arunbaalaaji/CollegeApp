class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.integer :admnno
      t.integer :c1
      t.integer :c2
      t.integer :c3
      t.integer :c4
      t.integer :c5

      t.timestamps null: false
    end
  end
end
