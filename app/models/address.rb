class Address
  include Mongoid::Document
  include Mongoid::Timestamps  
  include Geocoder::Model::Mongoid
  
  geocoded_by :address               
  after_validation :geocode
    
  embedded_in :addressable, polymorphic: true
  
  field :address_line1, type: String
  field :address_line2, type: String
  field :city, type: String
  field :state, type: String
  field :zipcode, type: String
  field :coordinates, :type => Array
  
  validates :address_line1, :city, :state, :zipcode, :presence => true  
  
  def address
    "#{address_line1} #{city}, #{state} #{zipcode}"
  end
end
