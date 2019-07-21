class Exercise < ApplicationRecord
    has_many :rep_schemes

    def self.search(term, body_part=nil, kind=nil, offset=nil, limit)
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
        kind = "%" if(!allowed_kinds[kind])
        offset = offset == nil ? 0 : offset.to_i()
        limit = limit.to_i()

        Exercise
            .where("name ILIKE ?", term)
            .where("main_bodypart LIKE ?", body_part)
            .where("kind LIKE ?", kind)
            .order(:name)
            .limit(limit)
            .offset(offset * limit)


    end
end
