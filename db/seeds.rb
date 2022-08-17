Actor.destroy_all
Character.destroy_all
Show.destroy_all
Network.destroy_all

puts 'Creating actors...'


Actor.create(first_name: "dan", last_name: "stone")
Actor.create(first_name: "larry", last_name: "robbins")
Actor.create(first_name: "jane", last_name: "wick")
Actor.create(first_name: "jackie", last_name: "white")
Actor.create(first_name: "sally", last_name: "stevens")
Actor.create(first_name: "patu", last_name: "goblin")

puts 'Creating networks...'
Network.create(call_letters: 'ABC', channel: 7)
Network.create(call_letters: 'NBC', channel: 4)
Network.create(call_letters: 'TBS', channel: 24)


puts 'Creating shows...'
days = ["sun", "mon","tues","weds"]
seasons = ["spring", "summer", "fall", "winter"]
genres = ["sitcom", "drama", "fantasy/sci-fi", "horror"]

Show.create(name: "s1", day: days.sample, season: seasons.sample, genre: genres.sample, network_id: Network.pluck(:id).sample) 
Show.create(name: "s2", day: days.sample, season: seasons.sample, genre: genres.sample, network_id: Network.pluck(:id).sample) 
Show.create(name: "s3", day: days.sample, season: seasons.sample, genre: genres.sample, network_id: Network.pluck(:id).sample) 
Show.create(name: "s4", day: days.sample, season: seasons.sample, genre: genres.sample, network_id: Network.pluck(:id).sample) 
Show.create(name: "s5", day: days.sample, season: seasons.sample, genre: genres.sample, network_id: Network.pluck(:id).sample) 
Show.create(name: "s6", day: days.sample, season: seasons.sample, genre: genres.sample, network_id: Network.pluck(:id).sample)

phrases = ["yahoo", "wowza", "thats me", "potato"]

puts 'Creating characters...'
Character.create(name: "c1", actor_id: Actor.pluck(:id).sample, show_id: Show.pluck(:id).sample, catchphrase: phrases.sample)
Character.create(name: "c2", actor_id: Actor.pluck(:id).sample, show_id: Show.pluck(:id).sample, catchphrase: phrases.sample)
Character.create(name: "c3", actor_id: Actor.pluck(:id).sample, show_id: Show.pluck(:id).sample, catchphrase: phrases.sample)
Character.create(name: "c4", actor_id: Actor.pluck(:id).sample, show_id: Show.pluck(:id).sample, catchphrase: phrases.sample)
Character.create(name: "c5", actor_id: Actor.pluck(:id).sample, show_id: Show.pluck(:id).sample, catchphrase: phrases.sample)
Character.create(name: "c6", actor_id: Actor.pluck(:id).sample, show_id: Show.pluck(:id).sample, catchphrase: phrases.sample)
Character.create(name: "c7", actor_id: Actor.pluck(:id).sample, show_id: Show.pluck(:id).sample, catchphrase: phrases.sample)
Character.create(name: "c8", actor_id: Actor.pluck(:id).sample, show_id: Show.pluck(:id).sample, catchphrase: phrases.sample)
Character.create(name: "c9", actor_id: Actor.pluck(:id).sample, show_id: Show.pluck(:id).sample, catchphrase: phrases.sample)
Character.create(name: "c10", actor_id: Actor.pluck(:id).sample, show_id: Show.pluck(:id).sample, catchphrase: phrases.sample)

puts 'Done seeding!'