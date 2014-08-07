class Country < ActiveRecord::Base
  has_many :imports
  has_many :exports
   
end
