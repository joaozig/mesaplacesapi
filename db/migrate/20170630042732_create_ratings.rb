class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :grade
      t.text :comments
      t.references :place, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
