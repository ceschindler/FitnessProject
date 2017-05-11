User.create!(name:  "Example User",
            email: "exampl@railstutorial.org",
            password:              "foobar",
            password_confirmation: "foobar",
            activated: true,
            activated_at: Time.zone.now)

10.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = 'password'
  User.create!( name:  name,
                email: email,
                password:              password,
                password_confirmation: password,
                activated: true,
                activated_at: Time.zone.now)
end

weight = ['Dumbell-Flys',
          'Cable-Flys',
          'BenchPress',
          'Curls',
          'Squats',
          'Decline-Bench',
          'Incline-Bench',
          'Hammer-curls',
          'Leg-Press',
          'Weighted Dips',
          'Weighted Pull-ups',
          'Leg-Extension',
          'Tricep-Extension',
          'Shoulder-press',
          'Upright-rows',
          'Shoulder-shrug']

for i in weight

  Exercise.create!(name: i,
                   category: "WeightLifting",
                   intensity_level: 1 + rand(3),
                   time: 3 + rand(5),
                   link_to_exercise: "https://www.youtube.com/user/MDUSAweightlifting")
end

cardio = ['Running',
          'Jumping-Jacks',
          'Sprints',
          'Hill-Sprints',
          'Burpees',
          'Mountain-Climbers',
          'Elliptical',
          'Plyometrics',
          'Push-ups',
          'Bear-crawl',
          'Crab-walk',
          'Inchworm',
          'Plank-jacks',
          'Skaters',
          'Jump-rope',
          'Squat-jump',
          'Donkey-kick']

for i in cardio

  Exercise.create!(name: i,
                   category: "Cardio",
                   intensity_level: 1 + rand(3),
                   time: 15 + rand(10),
                   link_to_exercise: "https://www.youtube.com/watch?v=NKtDEgKKtwc")
end

yoga = ['Cat',
        'Downward-Dog',
        'Rag-Doll',
        'Tree',
        'BackBend',
        'Balancing-Stick',
        'Lotus',
        'Sage-Pose',
        'Bow',
        'Crane',
        'Chaturanga',
        'Boat',
        'Chair',
        'Half-moon',
        'Reclining-hero',
        'Scale',
        'Wheel',
        'Bridge',
        'Warrior-I',
        'Warrior-II',
        'Warrior-III']

for i in yoga

  Exercise.create!(name: i,
                   category: "Yoga",
                   intensity_level: 1 + rand(3),
                   time: 2 + rand(5),
                   link_to_exercise: "https://www.youtube.com/channel/UCFKE7WVJfvaHW5q283SxchA")
end