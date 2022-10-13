class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :service_type, :pricing, :image
  has_many :service_providers

  
end
