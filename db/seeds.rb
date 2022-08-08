
puts "Create Roles..."
r1 = Role.create(character_name: "Tom Wick")
r2 = Role.create(character_name: "Bob Wick")
r3 = Role.create(character_name: "Sean Wick")
r4 = Role.create(character_name: "Sam Wick")


puts "Create Audition...."

Audition.create(actor: "Tom Hanks", location: "Los Angeles", phone: 5105555555, hired: false , role_id: r1.id)
Audition.create(actor: "Bob Hanks", location: "New York", phone: 5104444444, hired: true , role_id: r2.id)
Audition.create(actor: "Timothy Hanks", location: "Neveda", phone: 5103333333, hired: true , role_id: r2.id)
Audition.create(actor: "John Hanks", location: "Florida", phone: 5102222222, hired: false , role_id: nil)


puts "Seeding Complete"