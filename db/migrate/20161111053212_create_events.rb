class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_title
      t.string :venu
      t.date :date
      t.string :discription
      t.string :invitees
      t.string :status

      t.timestamps null: false
    end
  end
end
