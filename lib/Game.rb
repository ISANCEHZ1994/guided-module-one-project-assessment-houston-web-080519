class Game < ActiveRecord::Base
    has_many :ratings
    has_many :reviewers, through: :ratings
end 