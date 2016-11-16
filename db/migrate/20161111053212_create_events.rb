class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_title
      t.string :venu
      t.date :date
      t.string :discription
      t.string :invitees, array: true, default: []
      t.string :status
      t.integer :owner_id

      t.timestamps null: false
    end
  end
end
