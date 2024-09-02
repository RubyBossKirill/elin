class Client < ApplicationRecord
  has_many :services, foreign_key: 'manager_id'
end
