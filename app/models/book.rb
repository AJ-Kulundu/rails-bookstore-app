class Book < ApplicationRecord
  #Associations
  belongs_to :author
  #Validations
  validates :name,:description,:price,:stock, presence: true
  validates :name, length: { minimum: 2 }
  validates :description, length: { minimum: 10 }
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :stock, numericality: { greater_than_or_equal_to: 0,only_integer: true }
end
