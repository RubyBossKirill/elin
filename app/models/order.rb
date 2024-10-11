class Order < ApplicationRecord
  validates :name, :date_payment, :object_client, :price_service presence :true
  validates :name, :date_payment, :object_client, :price_service, uniqueness :true
end
