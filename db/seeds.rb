require "faker"
require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# user = User.create(first_name: '', last_name: '', nickname: '', address: '',
# bio: "",
# email: Faker::Internet.email(domain: 'customdomain.com') , password: '123456'
puts "destroy friendships"
Friendship.destroy_all

# claudio@domain.com , steffi@domain.com , roger@domain.com , ron@domain.com


puts 'destroying avatar'
User.all.each do |user|
  user.avatar.purge
end


puts 'destroying users'
User.destroy_all

puts 'destroying picture'
Dog.all.each do |dog|
  dog.photos.purge
end

puts 'destorying dogs'
Dog.destroy_all

puts 'creating users'
steffi = User.create(first_name: 'Steffanie', last_name: 'Hofner', nickname: 'Steffi', address: 'Singerstraße 41 10243 Berlin',
                     bio: '36,  love long walks and in summer going to one of Berliner lakes',
                     email: 'steffi@domain.com', password: '123456')
file = URI.open("https://com-thehopeline-www.s3.amazonaws.com/LIVE7_NEW/LIVE/wp-content/uploads/2019/07/09170701/happy-single-women-outside-by-sunflowers.jpg")
steffi.avatar.attach(io: file, filename: "steffi.jpg", content_type: "image/jpg")

petra = User.create(first_name: 'Petra', last_name: 'Orlo', nickname: 'Petra', address: 'Grünberger Str. 44 10245 Berlin',
                    bio: '26,  enjoying in bike rides through Berlin or going to nature',
                    email: Faker::Internet.email(domain: 'customdomain.com'), password: '123456')
file = URI.open("https://i.insider.com/55c3721cdd08954d7f8b45ae?width=1136&format=jpeg")
petra.avatar.attach(io: file, filename: "petra.jpg", content_type: "image/jpg")

sven = User.create(first_name: 'Sven', last_name: 'Meyer', nickname: 'Sven', address: 'Dunckerstraße 21 10437 Berlin',
                   bio: '41, a single father of 12 year old girl and my best friend Charlie.',
                   email: Faker::Internet.email(domain: 'customdomain.com'), password: '123456')
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/41_year_old_man_with_partial_gray_hair.jpg/185px-41_year_old_man_with_partial_gray_hair.jpg")
sven.avatar.attach(io: file, filename: "sven.jpg", content_type: "image/jpg")

sonya = User.create(first_name: 'Sonya', last_name: 'Thibald', nickname: 'Sonya', address: 'Leinestraße 3 12049 Berlin',
                    bio: "20, I'm new in Berlin, just started with my economy studies at FU and we (I and Snoopy) are looking for some new friends to meet.",
                    email: Faker::Internet.email(domain: 'customdomain.com'), password: '123456')
file = URI.open("https://i2-prod.walesonline.co.uk/incoming/article12256409.ece/ALTERNATES/s1200c/JWR_ech_011216helen_05.jpg")
sonya.avatar.attach(io: file, filename: "sonya.jpg", content_type: "image/jpg")

andrea = User.create(first_name: 'Andrea', last_name: 'Schmidt', nickname: 'Andrea', address: 'Karl-Marx-Straße 67 12043 Berlin',
                     bio: "29, Hey lovelies, me & Balto are always open to meet new interesting people and doggies. Ping us for a walk! :)",
                     email: Faker::Internet.email(domain: 'customdomain.com'), password: '123456')
file = URI.open("https://static.onecms.io/wp-content/uploads/sites/20/2020/12/10/stephanie-lynn-smith.jpg")
andrea.avatar.attach(io: file, filename: "andrea.jpg", content_type: "image/jpg")

claudio = User.create(first_name: 'Claudio', last_name: "Falconi", nickname: 'Claudio', address: 'Prinzenstraße 31 10969 Berlin',
                      bio: "32, I like quality people, good techno and well behaved dogs.",
                      email: 'claudio@domain.com', password: '123456')
file = URI.open("https://d1bvpoagx8hqbg.cloudfront.net/259/55bb6a30f942bee52881886b5ac48a53.jpg")
claudio.avatar.attach(io: file, filename: "claudio.jpg", content_type: "image/jpg")

katja = User.create(first_name: 'Katja ', last_name: "Bachmann", nickname: 'Katja', address: 'Boxhagener Str. 80 10245 Berlin',
                    bio: "29, if you're looking for new doggie buddies, reach out, and let's meet!",
                    email: Faker::Internet.email(domain: 'customdomain.com'), password: '123456')
file = URI.open("https://i.dailymail.co.uk/1s/2020/03/30/05/26569840-8166251-image-a-41_1585543065876.jpg")
katja.avatar.attach(io: file, filename: "katja.jpg", content_type: "image/jpg")

roger = User.create(first_name: 'Roger ', last_name: "Cicero", nickname: 'Roger', address: 'Krüllsstraße 11 12435 Berlin',
                    bio: "37, I love to take long walks with my buddy Pongo. We're open to meet occasionally and other dogs and people.",
                    email: 'roger@domain.com', password: '123456')
file = URI.open("https://media.istockphoto.com/photos/he-feels-at-home-in-the-kitchen-picture-id507448333?k=20&m=507448333&s=612x612&w=0&h=-aKNnfyc4EHeDyfk3nXoQ51cXMryDzTkIerSdSf34r0=")
roger.avatar.attach(io: file, filename: "roger.jpg", content_type: "image/jpg")

anita = User.create(first_name: 'Anita ', last_name: "Iglesias", nickname: 'Anita', address: 'Kiefholzstraße 42 12435 Berlin',
                    bio: "35, Hi, I'm Anita, a fashion designer based in Berlin. My and my dalmatian Perdita love to go parks and meet other friendly doggies and their people.",
                    email: Faker::Internet.email(domain: 'customdomain.com'), password: '123456')
file = URI.open("https://media.istockphoto.com/photos/confident-businesswoman-over-gray-background-picture-id682897825?k=20&m=682897825&s=612x612&w=0&h=k1YWeDssr4GP-n7li1CAOCN2l_YRIycvq37sK1PP6is=")
anita.avatar.attach(io: file, filename: "anita.jpg", content_type: "image/jpg")

anja = User.create(first_name: 'Anja', last_name: "Bauer", nickname: 'Anja', address: 'Kol. Zur Windmühle 378 12349 Berlin',
                   bio: "33, we love to meet up in comy bars and hang out with friends. If you wanna join us, message us!",
                   email: Faker::Internet.email(domain: 'customdomain.com'), password: '123456')
file = URI.open("https://www.silive.com/resizer/VbWpGZEmZMXbbI5VHogUGUUsKbo=/1280x0/smart/cloudfront-us-east-1.images.arcpublishing.com/advancelocal/YHSH3IEJ5NEIFBP7CVP6M4PSXA.JPG")
anja.avatar.attach(io: file, filename: "anja.jpg", content_type: "image/jpg")

ron = User.create(first_name: 'Ron', last_name: "Winne", nickname: 'Ron', address: 'Glaßbrennerstraße 13 10439 Berlin',
                  bio: "41, I'm a professional writer and I love to take long walks with my Princess. We are always looking for new friends to meet. ",
                  email: 'ron@domain.com', password: '123456')
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/MoBen.jpg/469px-MoBen.jpg")
ron.avatar.attach(io: file, filename: "ron.jpg", content_type: "image/jpg")

silvia = User.create(first_name: 'Silvia ', last_name: "Bergmann", nickname: 'Silvia ', address: 'Wedekindstraße 14 10243 Berlin',
                     bio: "56, proud mother of my Bessy. We love to walk around Spree and meet other dogs in the parks.",
                     email: Faker::Internet.email(domain: 'customdomain.com'), password: '123456')
file = URI.open("https://s.yimg.com/uu/api/res/1.2/nGgS4rTVZ60MXdQXRernUg--~B/aD05MzM7dz03MDA7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/en/who_what_wear_581/46535154b88eef8bfe22df8fd569cd22")
silvia.avatar.attach(io: file, filename: "silvia.jpg", content_type: "image/jpg")

max = User.create(first_name: 'Max', last_name: "Springer", nickname: 'Max', address: 'Adolfstraße 313347 Berlin',
                  bio: "26, my dog Rex and are training everyday in one of Wedding's park, if you are up for some fun time, send us a message and join us!",
                  email: Faker::Internet.email(domain: 'customdomain.com'), password: '123456')
file = URI.open("https://i.pinimg.com/originals/1c/53/6a/1c536ac192c849089144825b84bfbd54.jpg")
max.avatar.attach(io: file, filename: "max.jpg", content_type: "image/jpg")

rita = User.create(first_name: 'Rita', last_name: "Böttcher", nickname: 'Rita', address: 'Annenstr. 10179 Berlin',
                   bio: "41, love to go styling and shopping  trough the city!",
                   email: Faker::Internet.email(domain: 'customdomain.com'), password: '123456')
file = URI.open("https://media.istockphoto.com/photos/vertical-portrait-of-mature-50-years-asian-business-woman-on-grey-picture-id1317784597?k=20&m=1317784597&s=612x612&w=0&h=GtUx4-8vd3U50-6_uhP1p59HH9sz1iwPxbAyHhmMz_E=")
rita.avatar.attach(io: file, filename: "rita.jpg", content_type: "image/jpg")

richard = User.create(first_name: 'Richard', last_name: "Dicksen", nickname: 'Richard', address: 'Sredzkistraße 1 10435 Berlin',
                      bio: "24, I'm in the forest as often i can, love to be out there in the nature!",
                      email: Faker::Internet.email(domain: 'customdomain.com'), password: '123456')
file = URI.open("https://i.pinimg.com/originals/43/cb/64/43cb64a4bd7ae3afc067eeba5252b03d.jpg")
richard.avatar.attach(io: file, filename: "richard.jpg", content_type: "image/jpg")

maria = User.create(first_name: 'Maria', last_name: "Reichelt", nickname: 'Maria', address: 'Dorotheenstr. 30 10117 Berlin',
                    bio: "31, Proud Mother loves to spend time with many people, exspecily dog owners",
                    email: Faker::Internet.email(domain: 'customdomain.com'), password: '123456')
file = URI.open("https://beautyspb.com/netcat_files/multifile/1967/1653/1653_Ekaterina_Russian_beauty_6_.jpg")
maria.avatar.attach(io: file, filename: "maria.jpg", content_type: "image/jpg")

dolores = User.create(first_name: 'Dolores ', last_name: "Tetjev", nickname: 'Dolores', address: 'Andreasstr. 10243 Berlin',
                      bio: "39, Dog stylistin and owner since over 20 years",
                      email: Faker::Internet.email(domain: 'customdomain.com'), password: '123456')
file = URI.open("https://i.pinimg.com/474x/4b/8b/2e/4b8b2eff80a8e6a55b37eb8e4364f948.jpg")
dolores.avatar.attach(io: file, filename: "dolores.jpg", content_type: "image/jpg")

dexter = User.create(first_name: 'Dexter', last_name: "Tysen", nickname: 'Dexter', address: 'Fischerinsel 16 10179 Berlin',
                     bio: "49, Did my Biology Phd on Dogs, love to go in the nature, and parcipate in dog shows.",
                     email: Faker::Internet.email(domain: 'customdomain.com'), password: '123456')
file = URI.open("https://media.istockphoto.com/photos/smiling-middle-age-man-with-pinstripe-suit-coat-picture-id185260228?k=20&m=185260228&s=612x612&w=0&h=t6GnJDr4Z21NhTVNI-5CJdowmoZrccjw6we4ladbasw=")
dexter.avatar.attach(io: file, filename: "dexter.jpg", content_type: "image/jpg")

lisa = User.create(first_name: 'Lisa ', last_name: "Schneider", nickname: 'Lisa', address: 'Keibelstr. 6 10178 Berlin',
                   bio: "19, Student of BWL orginal from bavaria now new in Berlin looking for new friends who love dogs as much i do ;)",
                   email: Faker::Internet.email(domain: 'customdomain.com'), password: '123456')
file = URI.open("https://d1bvpoagx8hqbg.cloudfront.net/259/c6035f5ba4f7e370dd277f5b1bbb94c9.jpg")
lisa.avatar.attach(io: file, filename: "lisa.jpg", content_type: "image/jpg")

valerie = User.create(first_name: 'Valerie', last_name: "Walter", nickname: 'Valerie', address: 'Sredzkistr. 10435 Berlin',
                      bio: "23, Working in the office the whole day need someone to walk me and my dog so that we come out ;)",
                      email: Faker::Internet.email(domain: 'customdomain.com'), password: '123456')
file = URI.open("https://d1bvpoagx8hqbg.cloudfront.net/259/2cc0565c71e26db75d0ba0a858147e56.jpg")
valerie.avatar.attach(io: file, filename: "valerie.jpg", content_type: "image/jpg")

anna = User.create(first_name: 'Anna', last_name: "Reiters", nickname: 'Anna', address: 'Behrenstr. 10117 Berlin',
                   bio: "27, I'm a Stylitsin with my first dog, look to connect to over owner the learn more and have fun.",
                   email: Faker::Internet.email(domain: 'customdomain.com'), password: '123456')
file = URI.open("https://i.guim.co.uk/img/media/19f5cb37d9dc2bec3eb5d28c2879b99de1c2956d/0_95_5207_3123/master/5207.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=799ef38ebff3cd5ad8b8e9fba96ec80a")
anna.avatar.attach(io: file, filename: "anna.jpg", content_type: "image/jpg")

vera = User.create(first_name: 'Vera', last_name: "Pavlov", nickname: 'Vera', address: 'Annenstr. 4 10179 Berlin',
                   bio: "25, I love to be out in nature with felix, looking for new wander routes around berlin that a good with dogs.",
                   email: Faker::Internet.email(domain: 'customdomain.com'), password: '123456')
file = URI.open("https://images.in.locan.to/Mallu-Single-Girl-age-25-DIRECT-PAYMENT-3500-ROOM-FREE/vap_5166716362.jpg")
vera.avatar.attach(io: file, filename: "vera.jpg", content_type: "image/jpg")

angelica = User.create(first_name: 'Angelica', last_name: "Fechter", nickname: 'Angelica', address: 'Deutsch-Kroner-Ring 25 12349 Berlin',
                       bio: "29, I'm a proud Dog Mommy since i'm 14. I cannot stop talking about Dogs when i meet other people and love to meet other people that do that too.",
                       email: Faker::Internet.email(domain: 'customdomain.com'), password: '123456')
file = URI.open("https://beautyspb.com/netcat_files/generated/181/1549/580x820/1522/8b0b608598a46487ecdc85c0f2faf509.jpg?crop=0%3A0%3A0%3A0&hash=7df6d17e0468449c8881a300fb11cd83&resize_mode=0&wm_m=0")
angelica.avatar.attach(io: file, filename: "angelica.jpg", content_type: "image/jpg")

ina = User.create(first_name: 'Ina', last_name: "Drechsler", nickname: 'Ina', address: 'Kuglerstraße 3 10439 Berlin',
                  bio: "31, I'm working with localy Animal shellter as foster mom for animals, adopeted one of them myself. Looking for a permament friend for People who a interest in fostering.",
                  email: Faker::Internet.email(domain: 'customdomain.com'), password: '123456')
file = URI.open("https://images.in.locan.to/Mallu-Single-Girl-age-25-DIRECT-PAYMENT-3500-ROOM-FREE/vap_5166716362.jpg")
ina.avatar.attach(io: file, filename: "ina.jpg", content_type: "image/jpg")

tom = User.create(first_name: 'Tom', last_name: "Kupferberg", nickname: 'Tom', address: 'Ibisweg 12351 Berlin',
                  bio: "30, I'm new in Berling together with Jerry looking forward for new connections and Fun!",
                  email: Faker::Internet.email(domain: 'customdomain.com'), password: '123456')
file = URI.open("https://photos2.spareroom.co.uk/images/flatshare/listings/large/30/04/30045397.jpg")
tom.avatar.attach(io: file, filename: "tom.jpg", content_type: "image/jpg")

puts 'creating dogs'
kiki = Dog.create(name: 'Kiki', gender: 'male', age: 6, breed: 'Chihuahua', bio: "loves to play with other dogs but doesn't like small and loud kids. Multiple winner of regional and international tournaments. ", user: steffi)
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Chihuahua1_bvdb.jpg/330px-Chihuahua1_bvdb.jpg")
kiki.photo.attach(io: file, filename: "kiki.jpg", content_type: "image/jpg")

fifi = Dog.create(name: 'Fifi', gender: 'female', age: 5, breed: 'Chihuahua', bio: "super smart and beautiful lady, loves long bike rides through Berlin. Winner of AKC 2019 Championship ", user: steffi)
file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.72FP_8zCk7I8Aw980Z1D0gHaJ4%26pid%3DApi&f=1")
fifi.photo.attach(io: file, filename: "fifi.jpg", content_type: "image/jpg")

dolly = Dog.create(name: 'Dolly', gender: 'female', age: 8, breed: 'Border Collie', bio: "Snoopy loves people and other dogs! He's my BFF and my soulmate.", user: petra)
file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.GdbhzHseuyKQ5JKnFaRMRgHaFU%26pid%3DApi&f=1")
dolly.photo.attach(io: file, filename: "dolly.jpg", content_type: "image/jpg")

charlie = Dog.create(name: 'Charlie', gender: 'male', age: 11, breed: 'Border Collie', bio: "has full pedigree and a couple of medals from his young days. Loves swimming in lakes.", user: sven)
file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.ALoSCxE4YXFLxjQYXGNOwgDYEg%26pid%3DApi&f=1")
charlie.photo.attach(io: file, filename: "charlie.jpg", content_type: "image/jpg")

snoopy = Dog.create(name: 'Snoopy', gender: 'male', age: 5, breed: 'beagle', bio: "Snoopy loves people and other dogs! He's my BFF and my soulmate.", user: sonya)
file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.U5EQQ6SOMoxV6qr34pJBCwHaE7%26pid%3DApi&f=1")
snoopy.photo.attach(io: file, filename: "snoopy.jpg", content_type: "image/jpg")

balto = Dog.create(name: 'Balto', gender: 'male', age: 7, breed: 'Alaskan Malmut', bio: "is the kindest soul in the universe. WIll scan you and give you the unique therapy that you need.", user: andrea)
file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.7h-9xcLKVVo4g84PD6JYTwHaFj%26pid%3DApi&f=1")
balto.photo.attach(io: file, filename: "balto.jpg", content_type: "image/jpg")

tony = Dog.create(name: 'Tony', gender: 'male', age: 5, breed: 'Dobermann', bio: "is a born winner! Multiple winner of different AKC championships", user: claudio)
file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.zhA9f2_Y-h75fMelbs1xFAHaFE%26pid%3DApi&f=1")
tony.photo.attach(io: file, filename: "tony.jpg", content_type: "image/jpg")

adela = Dog.create(name: 'Adela', gender: 'female', age: 5, breed: 'Dogo Argentino', bio: "winner of 2018 AKC regional championship, very good girl!", user: katja)
file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.nhMEaHc3Y7PDNjhe5ZkvfAHaE0%26pid%3DApi&f=1")
adela.photo.attach(io: file, filename: "adela.jpg", content_type: "image/jpg")

pongo = Dog.create(name: 'Pongo', gender: 'male', age: 8, breed: 'Dalmatian', bio: "very social and friendly sweet being!", user: roger)
file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.jbl027Sp3PbTw0OuGIRjxAHaJ4%26pid%3DApi&f=1")
pongo.photo.attach(io: file, filename: "pongo.jpg", content_type: "image/jpg")

perdita = Dog.create(name: 'Perdita', gender: 'female', age: 5, breed: 'Dalmatian', bio: "Perdita (5, female) she's a queen, no doubt about it! :)", user: anita)
file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.jbl027Sp3PbTw0OuGIRjxAHaJ4%26pid%3DApi&f=1")
perdita.photo.attach(io: file, filename: "perdita.jpg", content_type: "image/jpg")

winnie = Dog.create(name: 'Winnie', gender: 'female', age: 11, breed: 'Dachshund', bio: " very social and friendly sweet being!", user: anja)
file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.M5W3ZPG1OahYi7NuaK-wIQHaE8%26pid%3DApi&f=1")
winnie.photo.attach(io: file, filename: "winnie.jpg", content_type: "image/jpg")

princess = Dog.create(name: 'Princess', gender: 'female', age: 10, breed: 'Irish Setter', bio: "very lovely being. Current German AKC champion.", user: ron)
file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.Z64BaGuCXgIfeaPGQFt5-AHaHa%26pid%3DApi&f=1")
princess.photo.attach(io: file, filename: "princess.jpg", content_type: "image/jpg")

bessy = Dog.create(name: 'Bessy', gender: 'female', age: 13, breed: 'Schnauzer', bio: " is a lady and loves good and friendly people and other dogs", user: silvia)
file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP._CfdGuTRH5ymGacVxgircAHaFR%26pid%3DApi&f=1")
bessy.photo.attach(io: file, filename: "bessy.jpg", content_type: "image/jpg")

rex = Dog.create(name: 'Rex', gender: 'male', age: 9, breed: 'German Shepherd', bio: " is a working dog with a social side. He's a regular visitor at AKC competitions and has quite awesome collection of medals.", user: max)
file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.teteWZC8EGODe69e0grjLAHaGE%26pid%3DApi&f=1")
rex.photo.attach(io: file, filename: "rex.jpg", content_type: "image/jpg")

viktor = Dog.create(name: 'Viktor', gender: 'male', age: 10, breed: 'Poodle', bio: "loves posing for pictures does not like to be ignored, winner of Berlin Style ship 2. year in a row.", user: rita)
file = URI.open("https://hundefunde.de/wp-content/uploads/2021/12/Pudel-_-600x400-1.jpg")
viktor.photo.attach(io: file, filename: "viktor.jpg", content_type: "image/jpg")

fleur = Dog.create(name: 'Fleur', gender: 'male', age: 10, breed: 'Poodle', bio: "loves posing for pictures does not like to be ignored, winner of Berlin Style ship 2. year in a row.", user: rita)
file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.jKu0KuC7FC1CT0oQifbBawAAAA%26pid%3DApi&f=1")
fleur.photo.attach(io: file, filename: "fleur.jpg", content_type: "image/jpg")

maxi = Dog.create(name: 'Maxi', gender: 'male', age: 3, breed: 'Samoyed', bio: "well behaved even in the nature without leash, always with me out there has more power than i am", user: richard)
file = URI.open("https://www.dehunderassen.de/uploads/thumbs/720x568-resize/dog/738/samojede-13403.jpg")
maxi.photo.attach(io: file, filename: "maxi.jpg", content_type: "image/jpg")

helena = Dog.create(name: 'Helena', gender: 'female', age: 5, breed: 'Newfoundland dog', bio: "loves other people, children in general and other dogs. She has the sweetest soul i ever saw in a dog", user: maria)
file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.5cIzGvbGxqEc7GpW2RI1ZQHaF5%26pid%3DApi&f=1")
helena.photo.attach(io: file, filename: "helena.jpg", content_type: "image/jpg")

caesar = Dog.create(name: 'Caesar', gender: 'male', age: 10, breed: 'Pug', bio: "no one wanted him due his diabetic would make it past 5 says said, 8 years ago!", user: dolores)
file = URI.open("https://vetstreet-brightspot.s3.amazonaws.com/2b/445130a10911e087a80050568d634f/file/Newfoundland-1-645mk062111.jpg")
caesar.photo.attach(io: file, filename: "caesar.jpg", content_type: "image/jpg")

julius = Dog.create(name: 'Julius', gender: 'male', age: 10, breed: 'Pug', bio: "no one wanted him due his diabetic would make it past 5 says said, 8 years ago!", user: dolores)
file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.36k26YUo359sq-c2SE3nfwHaFj%26pid%3DApi&f=1")
julius.photo.attach(io: file, filename: "julius.jpg", content_type: "image/jpg")

voltaire = Dog.create(name: 'Voltaire', gender: 'male', age: 7, breed: 'Afghan Hound', bio: "loves long walks, winner of several competions", user: dexter)
file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.3VfmtdwYESGfvvoujPPVJAHaI7%26pid%3DApi&f=1")
voltaire.photo.attach(io: file, filename: "voltaire.jpg", content_type: "image/jpg")

ronda = Dog.create(name: 'Ronda ', gender: 'female', age: 3, breed: 'Aussiepom', bio: "likes to run and run, needs some playmates to get the power out of her", user: lisa)
file = URI.open("https://i.pinimg.com/736x/ee/d0/4e/eed04ed4edf928dc0d48dc93340dfb65.jpg")
ronda.photo.attach(io: file, filename: "voltaire.jpg", content_type: "image/jpg")

choco = Dog.create(name: 'Choco', gender: 'male', age: 1, breed: 'Pomchi', bio: "he gets lonely in my office hour and every time he meets people is like a new sunset for her, he is still a puppy so new friends should have some patience or a his age group.", user: valerie)
file = URI.open("https://thehappypuppysite.com/wp-content/uploads/2018/07/black-pomeranian-MK-long.jpg")
choco.photo.attach(io: file, filename: "choco.jpg", content_type: "image/jpg")

dora = Dog.create(name: 'Dora', gender: 'male', age: 4, breed: 'Labradoodle', bio: "Fall in love with him on first look, first dog so we learn about everything together.", user: anna)
file = URI.open("https://www.animals-digital.de/fileadmin/Bilder_und_Fotos/Hunde/Hunderassen/Labradoodle/Labradoodle-Welpen-16.jpg")
dora.photo.attach(io: file, filename: "dora.jpg", content_type: "image/jpg")

felix = Dog.create(name: 'Felix', gender: 'male', age: 6, breed: 'Puggle', bio: "Got him from a friend, he said he loves the outside as much as I, and he was, right loves to meet other dog not so adores kids.", user: vera)
file = URI.open("https://media.os.fressnapf.com/cms/2020/07/ratgeber_hund_rasse_portraits_puggle_1200x527.jpg?t=cmsimg_920")
felix.photo.attach(io: file, filename: "felix.jpg", content_type: "image/jpg")

hanna = Dog.create(name: 'Hanna', gender: 'female', age: 9, breed: 'Golden retriever', bio: "My third dog, absoluty ADORABLE, Meeting new People and their dogs means the world to her.", user: angelica)
file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.Y_IfiMx5bD2ZUWIxG1FT2gHaIG%26pid%3DApi&f=1")
hanna.photo.attach(io: file, filename: "hanna.jpg", content_type: "image/jpg")

katie = Dog.create(name: 'Katie', gender: 'female', age: 6, breed: 'Labrador black', bio: "adopted her after i had her as foster dog, some idiot left her at the supermarkt, Cutest Dog i've ever had.", user: ina)
file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.5fDh4_Ay3NGCUHYmYdJmigHaL9%26pid%3DApi&f=1")
katie.photo.attach(io: file, filename: "katie.jpg", content_type: "image/jpg")

katie = Dog.create(name: 'Katie', gender: 'female', age: 6, breed: 'Labrador black', bio: "adopted her after i had her as foster dog, some idiot left her at the supermarkt, Cutest Dog i've ever had.", user: ina)
file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.5fDh4_Ay3NGCUHYmYdJmigHaL9%26pid%3DApi&f=1")
katie.photo.attach(io: file, filename: "katie.jpg", content_type: "image/jpg")

jerry = Dog.create(name: 'Jerry', gender: 'male', age: 5, breed: 'Labrador brown', bio: "adopted him from a friend shortley before coming to Berlin. A little shy with new people but great with other dogs, the more the better", user: tom)
file = URI.open("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.52OAicEvLlHG4wa1C8yzFAHaE8%26pid%3DApi&f=1")
jerry.photo.attach(io: file, filename: "jerry.jpg", content_type: "image/jpg")
