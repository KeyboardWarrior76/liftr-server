class Timer
    @start = nil
  
    def self.start
      @start = Time.now
    end
  
    def self.log_and_reset
      puts "   In #{Time.now - @start} Seconds"
      @start = Time.now
    end
  
    def self.stop
      @start = nil
    end
  end
  




Timer.start
puts "\n1) DESTROYING OLD DATA"
User.destroy_all()
Exercise.destroy_all()
Timer.log_and_reset()





puts "\n2) CREATING TEST USERS"
user = User.create(
    name: "Richard Feynman",
    email: "test@test.com",
    password: "password",
    )
Timer.log_and_reset()
    



    
puts "\n3) CREATING EXERCISES"
exercise0 = Exercise.create(
    name: "bench press",
    kind: "weight",
    main_bodypart: "chest",
)

exercise1 = Exercise.create(
    name: "barbell squat",
    kind: "weight",
    main_bodypart: "legs",
)

exercise2 = Exercise.create(
    name: "barbell deadlift",
    kind: "weight",
    main_bodypart: "back",
)

exercise3 = Exercise.create(
    name: "shoulder press",
    kind: "weight",
    main_bodypart: "shoulders",
)

exercise4 = Exercise.create(
    name: "running",
    kind: "distance",
    main_bodypart: "cardio",
)

##### BACK EXERCISES #####
    Exercise.create(
        name: "assisted chin up",
        kind: "weight",
        main_bodypart: "back",
    )

    Exercise.create(
        name: "barbell row",
        kind: "weight",
        main_bodypart: "back",
    )

    Exercise.create(
        name: "chin up",
        kind: "weight",
        main_bodypart: "back",
    )

    Exercise.create(
        name: "dumbbell row",
        kind: "weight",
        main_bodypart: "back",
    )

    Exercise.create(
        name: "good morning",
        kind: "weight",
        main_bodypart: "back",
    )

    Exercise.create(
        name: "lat pulldown",
        kind: "weight",
        main_bodypart: "back",
    )

    Exercise.create(
        name: "pendlay row",
        kind: "weight",
        main_bodypart: "back",
    )

    Exercise.create(
        name: "pull up",
        kind: "weight",
        main_bodypart: "back",
    )

    Exercise.create(
        name: "rack pull",
        kind: "weight",
        main_bodypart: "back",
    )

    Exercise.create(
        name: "seated cable row",
        kind: "weight",
        main_bodypart: "back",
    )

    Exercise.create(
        name: "smith machine row",
        kind: "weight",
        main_bodypart: "back",
    )

    Exercise.create(
        name: "t-bar row",
        kind: "weight",
        main_bodypart: "back",
    )

##### CHEST EXERCISES #####
    Exercise.create(
        name: "chest flyes",
        kind: "weight",
        main_bodypart: "chest",
    )

    Exercise.create(
        name: "cable crossover",
        kind: "weight",
        main_bodypart: "chest",
    )

    Exercise.create(
        name: "decline barbell bench press",
        kind: "weight",
        main_bodypart: "chest",
    )

    Exercise.create(
        name: "dumbbell bench press",
        kind: "weight",
        main_bodypart: "chest",
    )

    Exercise.create(
        name: "dumbbell fly",
        kind: "weight",
        main_bodypart: "chest",
    )

    Exercise.create(
        name: "incline barbell bench press",
        kind: "weight",
        main_bodypart: "chest",
    )

    Exercise.create(
        name: "incline dumbbell bench press",
        kind: "weight",
        main_bodypart: "chest",
    )

    Exercise.create(
        name: "seated machine fly",
        kind: "weight",
        main_bodypart: "chest",
    )

    Exercise.create(
        name: "push up",
        kind: "weight",
        main_bodypart: "chest",
    )

    Exercise.create(
        name: "assisted push up",
        kind: "weight",
        main_bodypart: "chest",
    )

    Exercise.create(
        name: "narrow grip bench press",
        kind: "weight",
        main_bodypart: "chest",
    )

##### LEGS EXERCISES #####
    Exercise.create(
        name: "lunges",
        kind: "weight",
        main_bodypart: "legs",
    )

    Exercise.create(
        name: "barbell calf raise",
        kind: "weight",
        main_bodypart: "legs",
    )

    Exercise.create(
        name: "barbell front squat",
        kind: "weight",
        main_bodypart: "legs",
    )

    Exercise.create(
        name: "bodyweight squat",
        kind: "weight",
        main_bodypart: "legs",
    )

    Exercise.create(
        name: "glute bridge",
        kind: "weight",
        main_bodypart: "legs",
    )

    Exercise.create(
        name: "leg extension",
        kind: "weight",
        main_bodypart: "legs",
    )

    Exercise.create(
        name: "leg press",
        kind: "weight",
        main_bodypart: "legs",
    )

    Exercise.create(
        name: "leg curl",
        kind: "weight",
        main_bodypart: "legs",
    )

    Exercise.create(
        name: "romanian deadlift",
        kind: "weight",
        main_bodypart: "legs",
    )

    Exercise.create(
        name: "seated calf raise",
        kind: "weight",
        main_bodypart: "legs",
    )

    Exercise.create(
        name: "stiff-legged deadlift",
        kind: "weight",
        main_bodypart: "legs",
    )

    Exercise.create(
        name: "sumo deadlift",
        kind: "weight",
        main_bodypart: "legs",
    )

    Exercise.create(
        name: "standing calf raise",
        kind: "weight",
        main_bodypart: "legs",
    )

    Exercise.create(
        name: "dumbbell squat",
        kind: "weight",
        main_bodypart: "legs",
    )

    Exercise.create(
        name: "kettle bell squat",
        kind: "weight",
        main_bodypart: "legs",
    )

    Exercise.create(
        name: "pistol squat",
        kind: "weight",
        main_bodypart: "legs",
    )

##### ARMS EXERCISES #####
    Exercise.create(
        name: "skullcrusher",
        kind: "weight",
        main_bodypart: "arms",
    )

    Exercise.create(
        name: "barbell curl",
        kind: "weight",
        main_bodypart: "arms",
    )

    Exercise.create(
        name: "cable curl",
        kind: "weight",
        main_bodypart: "arms",
    )

    Exercise.create(
        name: "concentration curl",
        kind: "weight",
        main_bodypart: "arms",
    )

    Exercise.create(
        name: "hammer curl",
        kind: "weight",
        main_bodypart: "arms",
    )

    Exercise.create(
        name: "preacher curl",
        kind: "weight",
        main_bodypart: "arms",
    )

    Exercise.create(
        name: "ez-bar curl",
        kind: "weight",
        main_bodypart: "arms",
    )

    Exercise.create(
        name: "ez-bar preacher curl",
        kind: "weight",
        main_bodypart: "arms",
    )

    Exercise.create(
        name: "incline dumbbell curl",
        kind: "weight",
        main_bodypart: "arms",
    )

    Exercise.create(
        name: "machine curl",
        kind: "weight",
        main_bodypart: "arms",
    )

    Exercise.create(
        name: "cable triceps extension",
        kind: "weight",
        main_bodypart: "arms",
    )

    Exercise.create(
        name: "dumbbell kickback",
        kind: "weight",
        main_bodypart: "arms",
    )

    Exercise.create(
        name: "dumbbell tricep extension",
        kind: "weight",
        main_bodypart: "arms",
    )

    Exercise.create(
        name: "rope pushdown",
        kind: "weight",
        main_bodypart: "arms",
    )

    Exercise.create(
        name: "ring dip",
        kind: "weight",
        main_bodypart: "arms",
    )

    Exercise.create(
        name: "bodyweight dip",
        kind: "weight",
        main_bodypart: "arms",
    )

    Exercise.create(
        name: "parallel bar dip",
        kind: "weight",
        main_bodypart: "arms",
    )

    Exercise.create(
        name: "straight bar pushdown",
        kind: "weight",
        main_bodypart: "arms",
    )

    Exercise.create(
        name: "overhead tricep extension",
        kind: "weight",
        main_bodypart: "arms",
    )

##### SHOULDERS EXERCISES #####
    Exercise.create(
        name: "cable face pull",
        kind: "weight",
        main_bodypart: "shoulders",
    )

    Exercise.create(
        name: "front raise",
        kind: "weight",
        main_bodypart: "shoulders",
    )

    Exercise.create(
        name: "lateral raise",
        kind: "weight",
        main_bodypart: "shoulders",
    )

    Exercise.create(
        name: "lateral machine raise",
        kind: "weight",
        main_bodypart: "shoulders",
    )

    Exercise.create(
        name: "one-arm standing press",
        kind: "weight",
        main_bodypart: "shoulders",
    )

    Exercise.create(
        name: "overhead press",
        kind: "weight",
        main_bodypart: "shoulders",
    )

    Exercise.create(
        name: "rear delt dumbbell raise",
        kind: "weight",
        main_bodypart: "shoulders",
    )

    Exercise.create(
        name: "rear delt machine fly",
        kind: "weight",
        main_bodypart: "shoulders",
    )

    Exercise.create(
        name: "seated dumbbell press",
        kind: "weight",
        main_bodypart: "shoulders",
    )

    Exercise.create(
        name: "seated lateral raise",
        kind: "weight",
        main_bodypart: "shoulders",
    )

    Exercise.create(
        name: "smith machine press",
        kind: "weight",
        main_bodypart: "shoulders",
    )

##### ABS EXERCISES #####
    Exercise.create(
        name: "weighted crunch",
        kind: "weight",
        main_bodypart: "abs",
    )

    Exercise.create(
        name: "ab-wheel rollout",
        kind: "weight",
        main_bodypart: "abs",
    )

    Exercise.create(
        name: "cable crunch",
        kind: "weight",
        main_bodypart: "abs",
    )

    Exercise.create(
        name: "crunch machine",
        kind: "weight",
        main_bodypart: "abs",
    )

    Exercise.create(
        name: "decline crunch",
        kind: "weight",
        main_bodypart: "abs",
    )

    Exercise.create(
        name: "hanging knee raise",
        kind: "weight",
        main_bodypart: "abs",
    )

    Exercise.create(
        name: "hanging leg raise",
        kind: "weight",
        main_bodypart: "abs",
    )

    Exercise.create(
        name: "plank",
        kind: "weight",
        main_bodypart: "abs",
    )

    Exercise.create(
        name: "side plank",
        kind: "weight",
        main_bodypart: "abs",
    )

    Exercise.create(
        name: "side crunch",
        kind: "weight",
        main_bodypart: "abs",
    )

    Exercise.create(
        name: "side bends",
        kind: "weight",
        main_bodypart: "abs",
    )

##### CARDIO EXERCISES #####
    Exercise.create(
        name: "cycling",
        kind: "distance",
        main_bodypart: "cardio",
    )

    Exercise.create(
        name: "eliptical",
        kind: "distance",
        main_bodypart: "cardio",
    )

    Exercise.create(
        name: "rowing machine",
        kind: "distance",
        main_bodypart: "cardio",
    )

    Exercise.create(
        name: "running (treadmill)",
        kind: "distance",
        main_bodypart: "cardio",
    )

    Exercise.create(
        name: "stationary bike",
        kind: "distance",
        main_bodypart: "cardio",
    )

    Exercise.create(
        name: "swimming",
        kind: "distance",
        main_bodypart: "cardio",
    )

    Exercise.create(
        name: "walking",
        kind: "distance",
        main_bodypart: "cardio",
    )

    Exercise.create(
        name: "stair master",
        kind: "distance",
        main_bodypart: "cardio",
    )

    Exercise.create(
        name: "steps",
        kind: "distance",
        main_bodypart: "cardio",
    )

    Exercise.create(
        name: "stairs",
        kind: "distance",
        main_bodypart: "cardio",
    )

Timer.log_and_reset()





puts "\n4) CREATING REP_SCHEMES AND WORK_SETS"
for num in(0..10) do
    training_date = user.training_dates.create(
        date: Date.today + num.days
    )
    
    rep_scheme0 = RepScheme.create(
        training_date_id: training_date.id,
        exercise_id: exercise0.id,
        exercise_name: exercise0.name,
        exercise_kind: exercise0.kind,
        comment: "Test comment.",
    )

    rep_scheme1 = RepScheme.create(
        training_date_id: training_date.id,
        exercise_id: exercise1.id,
        exercise_name: exercise1.name,
        exercise_kind: exercise1.kind,
    )

    rep_scheme2 = RepScheme.create(
        training_date_id: training_date.id,
        exercise_id: exercise2.id,
        exercise_name: exercise2.name,
        exercise_kind: exercise2.kind,
    )

    rep_scheme3 = RepScheme.create(
        training_date_id: training_date.id,
        exercise_id: exercise3.id,
        exercise_name: exercise3.name,
        exercise_kind: exercise3.kind,
    )

    rep_scheme4 = RepScheme.create(
        training_date_id: training_date.id,
        exercise_id: exercise4.id,
        exercise_name: exercise4.name,
        exercise_kind: exercise4.kind,
    )
    
    for i in(1..5) do
        # bench press
        rep_scheme0.work_sets.create(
            reps: 8,
            weight: 150,
            rpe: 8,
        )
    end
    for i in(1..3) do
        #barbell squat
        rep_scheme1.work_sets.create(
            reps: 5,
            weight: 225,
            rpe: 7,
        )
    end
    for i in(1..5) do
        #shoulder press
        rep_scheme3.work_sets.create(
            reps: 10,
            weight: 115,
            rpe: 7,
        )
    end
    for i in(1..4) do
        # barbell deadlift
        rep_scheme2.work_sets.create(
            reps: 5,
            weight: 300,
        )
    end
    for i in(1..3) do
        # running
        rep_scheme4.work_sets.create(
            distance: 6,
            distance_unit: "km",
            hours: 0,
            minutes: 38,
            seconds: 45,
        )
    end 
end
Timer.log_and_reset()

puts "\n- -------------------- ----- ---- --- --- -- -- -- -- - - - -"
puts "- - - --------------  PLANTED THE SEEDS  -------------- - - -"
puts "- - - -- -- -- -- --- --- ---- ----- ---------------------- -"