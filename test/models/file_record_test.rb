require 'test_helper'

class FileRecordTest < ActiveSupport::TestCase
   test "deberia encontrar un expediente a partir del texto 'mar'" do
     file = FileRecord.search({title_cont: 'mar'})
     assert !file.result.empty?
   end
   
   test "no deberia encontrar un expediente a partir del texto 'xxxxxx'" do
     file = FileRecord.search({title_cont: 'xxxxxx'})
     assert file.result.empty?
   end
end
