puts "let's make some aliens"

20.times do 
    Alien.create(
    name: Faker::Books::Dune.character,
    earth_disguise_name: Faker::DcComics.name, 
    home_planet:Faker::Space.planet, 
    light_years_to_home_planet: rand(100..100000000))
end

puts "ok, now we'll make some earthlings"

20.times do 
    Earthling.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    job: Faker::Job.title
    )
end

puts "and now, we visit"

100.times do 
    Visitation.create(
    alien: Alien.all.sample,
    earthling: Earthling.all.sample
    )
end

puts "all done!"

#