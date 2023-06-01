class FixSpellingErrorInEventModel < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :data
    add_column :events, :date, :string
  end
end
