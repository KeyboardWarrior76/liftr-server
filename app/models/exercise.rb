class Exercise < ApplicationRecord
    has_many :rep_schemes

    def self.search(term)
        Exercise.find_by_sql(["
            SELECT * FROM exercises
            WHERE name ILIKE ?
            ORDER BY name
            ", term == " " ? "%" : "%#{term}%"])
    end
end
