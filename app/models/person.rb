class Person < ActiveRecord::Base
  validates :email, :presence => true
  
  def completed?
    name && dni && email ? true : false
  end
end
