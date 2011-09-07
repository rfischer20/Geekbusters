class Team
  include Mongoid::Document
  include Mongoid::Timestamps  
  
  has_many :geekbusters  
  
  field :name, type: String
  
  validates :name, :presence => true
end
