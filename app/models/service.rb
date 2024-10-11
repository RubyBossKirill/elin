class Service < ApplicationRecord
  belongs_to :manager, class_name: 'Client', foreign_key: 'manager_id'

  validates :name, :description, :type_service, :price, :manager_id, presence :true
  validates :name, :description, :type_service, :price, :manager_id, uniqueness :true
end
