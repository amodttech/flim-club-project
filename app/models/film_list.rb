class FilmList < ApplicationRecord
  belongs_to :group
  belongs_to :film
end
