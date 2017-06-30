class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :identifier
      t.string :name
      t.string :vicinity

      t.timestamps null: false
    end
  end
end
