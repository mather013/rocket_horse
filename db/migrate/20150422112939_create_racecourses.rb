class CreateRacecourses < ActiveRecord::Migration
  def change
    create_table :racecourses do |t|
      t.integer :id,   :null => false
      t.string  :name, :null => false
      t.timestamps
    end
  end
end
