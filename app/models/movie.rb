class Movie < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: { scope: :release_date,
  message: "should not have two movies with the same name and release_date"}
end
