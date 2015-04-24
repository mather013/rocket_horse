class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.integer  :id,            :null => false
      t.integer  :racecourse_id, :null => false
      t.string   :event
      t.datetime :date
      t.timestamps
    end
  end
end
