class Geekbuster
  include Mongoid::Document
  
  field :first_name, type: String
  field :last_name, type: String
  field :skills, type: Array
end
