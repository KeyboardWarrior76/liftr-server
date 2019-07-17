


user = User.create(
    name: "Richard Feynman",
    email: "test@test.com",
    password: "password",
)

exercise = Exercise.create(
    name: "chest press"
)

for num in(0..19) do
    training_date = user.training_dates.create(
        date: Date.today + num.days
    )
    
    rep_scheme = RepScheme.create(
        training_date_id: training_date.id,
        exercise_id: exercise.id,
        comment: "Test comment brah.",
    )
    
    for i in(1..4) do
        rep_scheme.work_sets.create(
            reps: 5,
            weight: 150,
            rpe: 8,
        )
    end
end

puts user.training_dates.first().rep_schemes.first().work_sets.all()