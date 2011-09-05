class Geekbuster
  include Mongoid::Document
  
  embeds_one :address
  belongs_to :team
  
  field :first_name, type: String
  field :last_name, type: String
  field :skills, type: Array
  
  validates :first_name, :last_name, :presence => true
end
