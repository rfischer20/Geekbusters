class Address
  include Mongoid::Document
  include Mongoid::Timestamps  
  
  embedded_in :addressable, polymorphic: true
  
  field :address_line1, type: String
  field :address_line2, type: String
  field :city, type: String
  field :state, type: String
  field :zipcode, type: String
  
  validates :address_line1, :city, :state, :zipcode, :presence => true  
end
