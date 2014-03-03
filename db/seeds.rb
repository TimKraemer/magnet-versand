# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
#/images/image.png
#

Image.create!(url: "public/1scheiben-stab.gif")
Image.create!(url: "public/2quader-wuerfel.gif")
Image.create!(url: "public/3Kugel.gif")
Image.create!(url: "public/4Ring-vollmagnet.gif")
Image.create!(url: "public/5senkung_vollmagnet.gif")
Image.create!(url: "public/6flachgreifer_bohrung.gif")
Image.create!(url: "public/7senkung_flachgreifer.gif")
Image.create!(url: "public/8flachgreifer_buchse.gif")
Image.create!(url: "public/9flachgreifer_gewinde.gif")
Image.create!(url: "public/10Konus.gif")
Image.create!(url: "public/11trap.png")
Image.create!(url: "public/12beta_seg.png")
Image.create!(url: "public/13loaf_72.png")

Attribute.create!(Att1: "H", Att2: "D")
Attribute.create!(Att1: "H", Att2: "L", Att3: "B")
Attribute.create!(Att1: "D")
Attribute.create!(Att1: "H", Att2: "D", Att3: "d1")
Attribute.create!(Att1: "H", Att2: "h3", Att3: "D", Att4: "d2", Att5: "d3")
Attribute.create!(Att1: "H", Att2: "h2", Att3: "D", Att4: "d4", Att5: "d5")
Attribute.create!(Att1: "H", Att2: "h3", Att3: "D", Att4: "d2", Att5: "d3")
Attribute.create!(Att1: "H", Att2: "h1", Att3: "h4", Att4: "h6", Att5: "D", Att6: "d6", Att7: "m")
Attribute.create!(Att1: "H", Att2: "h1", Att3: "h4", Att4: "h6", Att5: "D", Att6: "m")
Attribute.create!(Att1: "H", Att2: "d2", Att3: "d3")
Attribute.create!(Att1: "t", Att2: "h", Att3: "a", Att4: "b")
Attribute.create!(Att1: "R", Att2: "r", Att3: "A", Att4: "h")
Attribute.create!(Att1: "h", Att2: "a", Att3: "b", Att4: "R")

Pole.create!(Slot1: "H (Axial)", Slot2: "D (Diametral)")
Pole.create!(Slot1: "H (Axial)")
Pole.create!(Slot1: "H (Axial)")
Pole.create!(Slot1: "H (Axial)", Slot2: "D (Diametral)")
Pole.create!(Slot1: "H (Axial)")
Pole.create!(Slot1: "H (Axial)")
Pole.create!(Slot1: "H (Axial)", Slot2: "D (Diametral)")
Pole.create!(Slot1: "H (Axial)")
Pole.create!(Slot1: "H (Axial)")
Pole.create!(Slot1: "H (Axial)", Slot2: "D (Diametral)")
Pole.create!(Slot1: "Axial (N/S)", Slot2: "Axial (S/N)", Slot3: "Equatorial(N/S)", Slot4: "Equatorial (S/N)")
Pole.create!(Slot1: "Axial", Slot2: "Diametral (S/N)", Slot3: "Diametral (N/S)", Slot4: "segmental")
