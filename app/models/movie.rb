class Movie < ApplicationRecord
   belongs_to :theater
   has_many :showtimes
end
