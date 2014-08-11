class Person < ActiveRecord::Base

  def completed?
    name && dni && email
  end
end
