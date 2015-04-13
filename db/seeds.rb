# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

animGenre = Genre.create(name: 'Film animowany')
komGenre = Genre.create(name: 'Komedia')
fanGenre = Genre.create(name: 'Fantasy')
horGenre = Genre.create(name: 'Horror')
akcGenre = Genre.create(name: 'Film akcji')
katasGenre = Genre.create(name: 'Film katastroficzny')

Film.create(title: 'Oculus', director: 'Mike Flanagan', genre_id: horGenre.id, description: 'Rodzeństwo spotyka się po latach od strasznej śmierci rodziców. Dziewczyna jest przekonana, że za traumatyczne wydarzenia w ich życiu są spowodowane przez stare lustro.')
Film.create(title: 'Piła', director: 'James Wan', genre_id: horGenre.id, description: 'Młody mężczyzna budzi się przykuty do rury w rozwalajacej się piwnicy. Po drugiej stronie pomieszczenia odkrywa innego przerażonego współwięźnia.')
Film.create(title: 'Opowieści z Narnii: Lew, Czarownica i Stara Szafa.', director: 'Andrew Adamson', genre_id: fanGenre.id, description: 'Czwórka dzieci - Piotr, Zuzanna, Edmund i Łucja odnajdują w staej szafie drogę do krainy zwanej Narnią.')
Film.create(title: 'Władca Pierścieni: Drużyna Pierścienia', director: 'Peter Jackson', genre_id: fanGenre.id, description: 'Kiedyś, na pamiętnej wyprawie pod Samotną Górę Bilbo Baggins zdobył przez przypadek pierścień. Pierścień, który należał do Saurona - władcy podziemia.')
Film.create(title: '2012', director: 'Roland Emmerich', genre_id: katasGenre.id, description: 'Rok 2012. Koniec świata zbliża się wielkimi krokami')
Film.create(title: 'Tragedia "Posejdona"', director: 'Ronald Neame, Irwin Allen', genre_id: katasGenre.id, description: 'Amerykański luksusowy statek "Posejdon" wypływa z Nowego Jorku do Grecji. Na Morzu śródziemnym rozpoczyna się katastrofa.')
Film.create(title: 'Król Lew', director: 'Rob Minkoff, Roger Allers', genre_id: animGenre.id, description: 'Film opowiada o losach Simby, młodego lwa, który - oskarżony o nieumyślne zabójstwo swojego ojca, króla Lwiej Skały - zostaje skazany na wygnanie.')
Film.create(title: 'Shrek', director: 'Vicky Jenson, Andrew Adamson', genre_id: animGenre.id, description: 'Jest to opowieść o dużym, zielonym ogrze o imieniu Shrek. Chce on za wszelką cenę odzyskać spokój na terenie swojej posiadłości na bagnach.')
Film.create(title: 'Maska', director: 'Chuck Russell', genre_id: komGenre.id, description: 'Stanley Ipkiss (Jim Carrey) jest nieśmiałym i niepozornym urzędnikiem bankowym. Jego banalne życie ulegnie, gdy pojawi się w nim pewna stara maska.')
Film.create(title: 'Kevin sam w domu', director: 'Chris Columbus', genre_id: komGenre.id, description: 'Rodzinka prawie spóźniła się na samolot, a w wyniku całego zamieszania zapomnieli o 8-letnim Kevinie. Od tej pory musi on sobie sam radzić w domu.')
Film.create(title: 'Terminator', director: 'James Cameron', genre_id: akcGenre.id, description: 'Tytułowy terminator (Arnold Schwarzenegger) jest androidem, który został wysłany w przeszłość w celu zlikwidowania Sary Connor (Linda Hamilton), matki przywódcy rebeliantów, nielicznych ludzi, którzy walczą w przyszłości z cyborgami o przetrwanie.')
Film.create(title: 'Transformers', director: 'Michael Bay', genre_id: akcGenre.id, description: 'Sam Witwicky jest zwykłym licealistą, mającym swoje życie i problemy. Nie ma jednak pojęcia, jak bardzo się odmieni jego życie, gdy pewnego dnia zakupi starego Chevroleta Camaro.')
