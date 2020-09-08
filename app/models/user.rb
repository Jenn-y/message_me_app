class User < ApplicationRecord
  validates :username, presence: true, 
                       uniqueness: { case_sensitive: false }, 
                       length: { minumum: 3, maximum: 15 }
  has_secure_password
  has_many :messages
end
