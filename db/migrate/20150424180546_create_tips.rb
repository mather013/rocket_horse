class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.integer  :id,         :null => false
      t.integer  :meeting_id, :null => false
      t.datetime :race_time
      t.string   :horse_name
      t.string   :odds
      t.string   :information
      t.timestamps
    end
  end
end
