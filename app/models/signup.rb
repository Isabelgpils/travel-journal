class Signup < ApplicationRecord
  validates :firstname, presence: true
  validates :email, presence: true, length: { minimum: 3 }
end
