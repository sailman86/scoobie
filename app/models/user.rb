class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :friendships_as_asker, class_name: "Friendship", foreign_key: :asker_id, dependent: :destroy
  has_many :friendships_as_receiver, class_name: "Friendship", foreign_key: :receiver_id, dependent: :destroy
  has_many :dogs, dependent: :destroy
  has_many :messages
  has_many :chatrooms, through: :friendships
  has_one_attached :avatar
  has_many_attached :photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
