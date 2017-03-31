class CreateTrackedThings < ActiveRecord::Migration[5.0]
  def change
    create_table :tracked_things do |t|
      t.string :time_of_thing
      t.string :notes

      t.timestamps
    end
  end
end
