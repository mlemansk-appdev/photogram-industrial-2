class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :comments, foreign_key: :author_id #inverse_of: 'author'
  has_many :photos, inverse_of: 'owner'
  has_many :follow_requests, inverse_of: 'recipient'
  has_many :follow_requests, inverse_of: 'sender'
  has_many :likes, inverse_of: 'fan'

end
