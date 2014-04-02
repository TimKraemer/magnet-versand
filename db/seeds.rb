# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html

dimensions = {}
["H", "h1", "h2", "h3",  "h4", "h6", "D", "d1", "d2", "d3", "d4","d5",
	"d6","L","B", "m","t","h","a","b","R","r","A","h"].each do |attr|
	dimensions[attr] = Dimension.create(dime: attr)
end

poleAttributes = {}
["H (Axial)", "D (Diametral)" , "Axial (N/S)" , "Axial (S/N)","Equatorial (N/S)", 
	"Equatorial (S/N)", "Axial", "Diametral (S/N)",	"Diametral (N/S)", "segmental",
	 "Norden oben", "Norden unten"].each do |attr|
	poleAttributes[attr] = Pole.create(pol: attr)
end


[
	{attributes: {image_url: "public/1scheiben-stab.gif", category: "scheiben-stab"}, attrsrels: ["H", "D", "d3"], poles:["H (Axial)", "D (Diametral)"]},
	{attributes: {image_url: "public/2quader-wuerfel.gif", category: "quader-wuerfel"}, attrsrels: ["D", "L" , "B"], poles:["H (Axial)"]},
	{attributes: {image_url: "public/3Kugel.gif", category: "Kugel"}, attrsrels: ["D"], poles:["H (Axial)"]},
	{attributes: {image_url: "public/4Ring-vollmagnet.gif", category: "Ring-vollmagnet" }, attrsrels: ["H","D","d1"], poles:["H (Axial)", "D (Diametral)"]},
	{attributes: {image_url: "public/5senkung_vollmagnet.gif", category: "senkung-vollmagnet"}, attrsrels: ["H","h3","D","d2","d3"], poles:["H (Axial)"]},
	{attributes: {image_url: "public/6flachgreifer_bohrung.gif", category: "flachgreifer-bohrung"}, attrsrels: ["H","h2","D","d4","d5"], poles:["H (Axial)"]},
	{attributes: {image_url: "public/7senkung_flachgreifer.gif", category: "senkung-flachgreifer"}, attrsrels: ["H","h3","D","d2","d3"], poles:["H (Axial)", "D (Diametral)"]},
	{attributes: {image_url: "public/8flachgreifer_buchse.gif", category: "flachgreifer-buchse"}, attrsrels: ["H","h1","h4","h6","D","d6","m"], poles:["H (Axial)"]},
	{attributes: {image_url: "public/9flachgreifer_gewinde.gif", category: "flachgreifer-gewinde"}, attrsrels: ["H","h1","h4","h6","D","d6","m"], poles:["H (Axial)"]},
	{attributes: {image_url: "public/10Konus.gif", category: "Konus"}, attrsrels: ["H","d2","d3"], poles:["H (Axial)", "D (Diametral)"]},
	{attributes: {image_url: "public/11trap.png", category: "Trapez"}, attrsrels: ["t","h","a","b"], poles:["Axial (N/S)", "Axial (S/N)", "Equatorial (N/S)", "Equatorial (S/N)"]},
	{attributes: {image_url: "public/12beta_seg.png", category: "Beta-seg"}, attrsrels: ["R","A","h","r"], poles:["Axial", "Diametral (N/S)", "Diametral (S/N)","segmental"]},
	{attributes: {image_url: "public/13loaf_72.png", category: "loaf"}, attrsrels: ["h","a","b","R"], poles:["Norden oben", "Norden unten"]}
].each do |data|
	magnet = Magnet.create(data[:attributes])
	data[:attrsrels].each do |foo|
		magnet.magnet_dimensions.create(magnet_id: magnet.id ,dimension_id: dimensions[foo].id)
	end
	data[:poles].each do |bar|
		magnet.magnet_poles.create(magnet_id: magnet.id ,pole_id: poleAttributes[bar].id)
	end
end

