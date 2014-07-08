class Step < ActiveRecord::Base
  belongs_to :file_record
  belongs_to :person
  belongs_to :office
end
