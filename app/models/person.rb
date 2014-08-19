class Person < ActiveRecord::Base
  
  def completed?
    name && dni && email ? true : false
  end
end
