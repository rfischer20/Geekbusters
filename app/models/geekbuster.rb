class Geekbuster
  include Mongoid::Document
  include Mongoid::Timestamps  
  
  embeds_one :address, as: :addressable
  belongs_to :team
  
  field :first_name, type: String
  field :last_name, type: String
  field :skills, type: Array
  
  validates :first_name, :last_name, :presence => true
  
  accepts_nested_attributes_for :address, :allow_destroy => true  
end
