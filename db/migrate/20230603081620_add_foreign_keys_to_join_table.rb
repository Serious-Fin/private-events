class AddForeignKeysToJoinTable < ActiveRecord::Migration[7.0]
  def change
    add_reference :event_attendees, :attended_event, foreign_key: {to_table: :events}
    add_reference :event_attendees, :attendee, foreign_key: {to_table: :users}
  end
end
