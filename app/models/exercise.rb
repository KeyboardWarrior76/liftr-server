class Exercise < ApplicationRecord
    has_many :rep_schemes

    def self.search(term, body_part=nil, kind=nil)
        allowed_body_parts = {
            "back" => true, 
            "chest" => true, 
            "shoulders" => true, 
            "legs" => true, 
            "arms" => true,
            "abs" => true,
            "cardio" => true,
        }

        allowed_kinds = {
            "weight" => true,
            "distance" => true,
        }

        term = (term == " " ? "%" : "%#{term}%")
        body_part = "%" if(!allowed_body_parts[body_part])
        kind = "%" if (!allowed_kinds[kind])


        Exercise.find_by_sql(["
            SELECT * FROM exercises
            WHERE name ILIKE ?
            AND main_bodypart LIKE ?
            AND kind LIKE ?
            ORDER BY name
            ", 
            term, body_part, kind])
    end
end
