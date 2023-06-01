class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :data
      t.string :location

      t.timestamps
    end
  end
end
