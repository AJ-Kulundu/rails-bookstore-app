class Review < ApplicationRecord
  #Sockets
  #Associations
  belongs_to :user
  belongs_to :book

  #enums
  enum rating: {one: 1, two: 2, three: 3, four: 4, five: 5}

  #Validations
  validates :review, presence: true, length: {maximum: 1000}
  validates :rating, presence: true, inclusion: {in: ratings.keys}
end
