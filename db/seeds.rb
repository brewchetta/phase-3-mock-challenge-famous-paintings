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
Painting.create(title: "Mona Lisa", price_in_us_dollars: 100, artist: van_gogh, museum: moma)
Painting.create(title: "Starry Night", price_in_us_dollars: 200, artist: van_gogh, museum: louvre)
Painting.create(title: "Droopy Painting 1", price_in_us_dollars: 300, artist: dali, museum: moma)
Painting.create(title: "Droopy Painting 2", price_in_us_dollars: 100, artist: dali, museum: louvre)
Painting.create(title: "Droopy Painting 3", price_in_us_dollars: 250, artist: dali, museum: accademia)

puts "Seeding completed..."
