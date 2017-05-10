# User.create!(name:  "Example User",
#              email: "exampl@railstutorial.org",
#              password:              "foobar",
#              password_confirmation: "foobar",
#              activated: true,
#              activated_at: Time.zone.now)

# 99.times do |n|
#   name  = Faker::Name.name
#   email = "example-#{n+1}@railstutorial.org"
#   password = "password"
#   User.create!(name:  name,
#               email: email,
#               password:              password,
#               password_confirmation: password,
#               activated: true,
#               activated_at: Time.zone.now)
# end

weight = ["Dumbell-Flys", "Cable-Flys", "BenchPress", "Curls", "Squats", "Decline-Bench", "Incline-Bench", "Hammer-curls", "Leg-Press"]

for i in weight

    Exercise.create!(name: i,
                     category: "WeightLifting",
                     intensity_level: 1 + rand(2),
                     time: 3 + rand(5),
                     link_to_exercise: "https://www.youtube.com/user/MDUSAweightlifting")
end

cardio = ["Running", "Jumping-Jacks", "Sprints", "Hill-Sprints", "Burpees"]

for i in cardio

    Exercise.create!(name: i,
                     category: "Cardio",
                     intensity_level: 1 + rand(2),
                     time: 20 + rand(10),
                     link_to_exercise: "https://www.youtube.com/watch?v=NKtDEgKKtwc")
end

yoga = ["Cat", "Down-Dog", "Rag-Doll", "Tree", "BackBend", "Balancing-Stick", "Lotus", "Sage-Pose", "Bow"]

for i in yoga

    Exercise.create!(name: i,
                     category: "Yoga",
                     intensity_level: 1 + rand(2),
                     time: 20 + rand(10),
                     link_to_exercise: "https://www.youtube.com/channel/UCFKE7WVJfvaHW5q283SxchA")
end

