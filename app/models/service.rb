class Service < ApplicationRecord
  belongs_to :manager, class_name: 'Client', foreign_key: 'manager_id'
end
