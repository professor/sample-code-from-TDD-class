class Rollercoaster < ActiveRecord::Base

  validates_presence_of :name, :theme_park_id
  belongs_to :theme_park

end
