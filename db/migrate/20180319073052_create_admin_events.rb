class CreateAdminEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_events do |t|
      t.string :title
      t.datetime :starttime
      t.datetime :endtime
      t.boolean :all_day
      t.string :description
      t.integer :admin_event_series_id

      t.timestamps
    end
  end
end
