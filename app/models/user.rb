class User < ActiveRecord::Base
  has_secure_password
  has_one :game_character
  validates :full_name, presence: true
  validates :email, presence: true, uniqueness: true, format: /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
end
