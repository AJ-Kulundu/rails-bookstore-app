class Author < ApplicationRecord
    #Associations
    has_many :books, dependent: :destroy
    #Validations
    validates :first_name,:last_name, presence: true, length: { minimum: 2 }
    #scopes
    #helper methods
end
