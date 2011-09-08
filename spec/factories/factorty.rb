Factory.define :rollercoaster do |r|
  r.name "Maverick"
#  r.theme_park_id 1
  r.association :theme_park, :factory => :theme_park
end

Factory.define :maverick, :class => Rollercoaster do |m|
  m.name "Maverick"
  m.speed "100 km/h"
  m.height "52 m"
  m.year "1999"
end

Factory.define :theme_park, :class => ThemePark do |t|
  t.name "Magic Mountain"
end