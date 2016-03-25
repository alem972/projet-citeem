# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
thin = Silhouette.create(silhouette: "mince")
average = Silhouette.create(silhouette: "normale")
fit = Silhouette.create(silhouette: "sportive")
chubby = Silhouette.create(silhouette: "un peu enveloppée")
fat = Silhouette.create(silhouette: "forte")

amerindian = EthnicOrigin.create(origins: "amerindien")
arab = EthnicOrigin.create(origins: "arabe")
asian = EthnicOrigin.create(origins: "asiatique")
caucasian = EthnicOrigin.create(origins: "caucasien")
hispanic = EthnicOrigin.create(origins: "hispanique")
mixed = EthnicOrigin.create(origins: "metisse")
african = EthnicOrigin.create(origins: "africain")

man = Gender.create(gender: "homme")
woman = Gender.create(gender: "femme")

bald_hair = HairStyle.create(style: "chauve")
short_hair = HairStyle.create(style: "courts")
mid_long_hair = HairStyle.create(style: "mi-longs")
long_hair = HairStyle.create(style: "longs")
curly_hair = HairStyle.create(style: "frisés")

brown_hair = HairColor.create(color: "bruns")
black_hair = HairColor.create(color: "noirs")
blonde_hair = HairColor.create(color: "blonds")
red_hair = HairColor.create(color: "roux")
colored_hair = HairColor.create(color: "colorés")

blue_eyes = Eye.create(color: "bleus")
brown_eyes = Eye.create(color: "marrons")
hazelnut_eyes = Eye.create(color: "noisettes")
grey_eyes = Eye.create(color: "gris")
black_eyes = Eye.create(color: "noirs")
green_eyes = Eye.create(color: "verts")

richard = User.create(
	nickname: "Richard",
	birthday: DateTime.new(1981,03,11),
	height: 180,
	email: "richard@wcs.fr",
	password: "12345678",
	eye_id: brown_eyes.id,
	hair_color_id: black_hair.id,
	hair_style_id: mid_long_hair.id,
	gender_id: man.id,
	silhouette_id: thin.id,
	ethnic_origins_id: asian.id)

melanie = User.create(
	nickname: "Mélanie",
	birthday: DateTime.new(1992,12,07),
	height: 180,
	email: "melanie@wcs.fr",
	password: "12345678",
	eye_id: brown_eyes.id,
	hair_color_id: black_hair.id,
	hair_style_id: mid_long_hair.id,
	gender_id: woman.id,
	silhouette_id: chubby.id,
	ethnic_origins_id: african.id)

benjamin = User.create(
	nickname: "Benjamin",
	birthday: DateTime.new(1989,01,24),
	height: 180,
	email: "benjamin@wcs.fr",
	password: "12345678",
	eye_id: green_eyes.id,
	hair_color_id: brown_hair.id,
	hair_style_id: mid_long_hair.id,
	gender_id: man.id,
	silhouette_id: thin.id,
	ethnic_origins_id: caucasian.id)

valentin = User.create(
	nickname: "Valentin",
	birthday: DateTime.new(1995,03,24),
	height: 180,
	email: "valentin@wcs.fr",
	password: "12345678",
	eye_id: hazelnut_eyes.id,
	hair_color_id: black_hair.id,
	hair_style_id: short_hair.id,
	gender_id: man.id,
	silhouette_id: thin.id,
	ethnic_origins_id: caucasian.id)

suzy = User.create(
	nickname: "Suzy",
	birthday: DateTime.new(1997,03,11),
	height: 160,
	email: "suzy@wcs.fr",
	password: "12345678",
	eye_id: brown_eyes.id,
	hair_color_id: brown_hair.id,
	hair_style_id: long_hair.id,
	gender_id: woman.id,
	silhouette_id: average.id,
	ethnic_origins_id: caucasian.id)

# message1 = Message.create(content: "Salut !", author_id: richard.id, user_id: melanie.id)
# message2 = Message.create(content: "Coucou", author_id: melanie.id, user_id: richard.id)
# message3 = Message.create(content: "Et de trois", author_id: richard.id, user_id: melanie.id)
