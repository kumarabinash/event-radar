class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :event_type
      t.text :address
      t.decimal :lat, :precision => 12, :scale => 7
      t.decimal :lng, :precision => 12, :scale => 7
      t.datetime :expiry_datetime

      t.timestamps null: false
    end
  end
end
