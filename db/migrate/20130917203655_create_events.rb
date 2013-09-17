class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.float :latitude
      t.float :longitude
      t.string :location
      t.integer :organiser_id
      t.integer :event_type_id

      t.timestamps
    end
  end
end
