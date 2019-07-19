
user = User.create(
    name: "Richard Feynman",
    email: "test@test.com",
    password: "password",
)

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

Exercise.create(
    name: "barbell row",
    kind: "weight",
    main_bodypart: "back",
)

Exercise.create(
    name: "weighted crunches",
    kind: "weight",
    main_bodypart: "abs",
)

Exercise.create(
    name: "skullcrusher",
    kind: "weight",
    main_bodypart: "arms",
)

Exercise.create(
    name: "bicep curl",
    kind: "weight",
    main_bodypart: "arms",
)

Exercise.create(
    name: "chest flyes",
    kind: "weight",
    main_bodypart: "chest",
)

Exercise.create(
    name: "lunges",
    kind: "weight",
    main_bodypart: "legs",
)



for num in(0..10) do
    training_date = user.training_dates.create(
        date: Date.today + num.days
    )
    
    rep_scheme0 = RepScheme.create(
        training_date_id: training_date.id,
        exercise_id: exercise0.id,
        exercise_name: exercise0.name,
        comment: "Test comment.",
    )

    rep_scheme1 = RepScheme.create(
        training_date_id: training_date.id,
        exercise_id: exercise1.id,
        exercise_name: exercise1.name,
    )

    rep_scheme2 = RepScheme.create(
        training_date_id: training_date.id,
        exercise_id: exercise2.id,
        exercise_name: exercise2.name,
    )

    rep_scheme3 = RepScheme.create(
        training_date_id: training_date.id,
        exercise_id: exercise3.id,
        exercise_name: exercise3.name,
    )
    
    for i in(1..4) do
        rep_scheme0.work_sets.create(
            reps: 5,
            weight: 150,
            rpe: 8,
        )
        rep_scheme1.work_sets.create(
            reps: 5,
            weight: 150,
            rpe: 8,
        )
        rep_scheme2.work_sets.create(
            reps: 5,
            weight: 150,
            rpe: 8,
        )
        rep_scheme3.work_sets.create(
            reps: 5,
            weight: 150,
            rpe: 8,
        )
    end
end

puts user.training_dates.first().rep_schemes.first().work_sets.all()