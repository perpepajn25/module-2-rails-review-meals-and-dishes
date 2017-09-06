class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :meals do |t|
      t.string :name
      t.date :date
      t.string :location

      t.timestamps
    end
  end
end
