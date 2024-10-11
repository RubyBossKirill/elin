class Client < ApplicationRecord
  has_many :services, foreign_key: 'manager_id'

  validates :name, :surname, :mail, :phone, :type_user, :avatar, :balance, presence :true, uniqueness :true
end
