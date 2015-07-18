class AddStartsDateTimeToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :starts_datetime, :datetime
  	rename_column :events, :expiry_datetime, :expires_datetime
  end
end