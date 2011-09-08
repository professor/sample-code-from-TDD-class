class CreateRollercoasters < ActiveRecord::Migration
  def self.up
    create_table :rollercoasters do |t|
      t.string :name
      t.string :speed
      t.string :height
      t.integer :year
      t.integer :theme_park_id

      t.timestamps
    end
  end

  def self.down
    drop_table :rollercoasters
  end
end
