class CreateFeedings < ActiveRecord::Migration[6.0]
  def change
    create_table :feedings do |t|
      t.string :food
      t.string :datetime

      t.timestamps
    end
  end
end
