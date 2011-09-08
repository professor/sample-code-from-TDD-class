class CreateThemeParks < ActiveRecord::Migration
  def self.up
    create_table :theme_parks do |t|
      t.string :name
      t.integer :year

      t.timestamps
    end
  end

  def self.down
    drop_table :theme_parks
  end
end
