# This will delete any existing rows from the Museum and Artist tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting Artist/Museum data..."
Artist.destroy_all
Museum.destroy_all

puts "Creating museums..."
moma = Museum.create(name: "MOMA", city: "NYC")
louvre = Museum.create(name: "The Louvre", city: "Paris")
accademia = Museum.create(name: "Accademia Gallery", city: "Florence")
british_museum = Museum.create(name: "The British Museum", city: "London")
prado = Museum.create(name: "Museo Nacional de Prado", city: "Madrid")

puts "Creating artists..."
van_gogh = Artist.create(first_name: "Vincent", last_name: "Van Gogh", birthyear: 1853, style: "impressionism")
dali = Artist.create(first_name: "Salvador", last_name: "Dali", birthyear: 1904, style: "surrealism")
khalo = Artist.create(first_name: "Frida", last_name: "Khalo", birthyear: 1907, style: "magical realism")
pollock = Artist.create(first_name: "Jackson", last_name: "Pollock", birthyear: 1912, style: "abstract expressionism")
rembrandt = Artist.create(first_name: "Rembrandt", last_name: "Harmenszoon", birthyear: 1606, style: "baroque")

puts "Creating paintings..."

# create an easy method to get a random museum
def random_museum
  Museum.all[rand(Museum.all.length)]
end

Painting.create(title: "Starry Night", price_in_us_dollars: 1000, museum: random_museum, artist: van_gogh)
Painting.create(title: "Chopped Ears", price_in_us_dollars: 6000, museum: random_museum, artist: van_gogh)
Painting.create(title: "The Something of Time", price_in_us_dollars: 2000, museum: random_museum, artist: dali)
Painting.create(title: "Droopy Stuff", price_in_us_dollars: 7000, museum: random_museum, artist: dali)
Painting.create(title: "Lots of Pain or Something", price_in_us_dollars: 3000, museum: random_museum, artist: khalo)
Painting.create(title: "Splattered Paint to the Max!", price_in_us_dollars: 4000, museum: random_museum, artist: pollock)
Painting.create(title: "Girl Being a Girl (Why Are Classicists So Obsessed With Preteens?)", price_in_us_dollars: 5000, museum: random_museum, artist: rembrandt)

puts "Deleting your entire github"
sleep 1
puts "Haha jk!"
puts "Seeding completed..."
