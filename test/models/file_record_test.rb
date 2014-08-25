require 'test_helper'

class FileRecordTest < ActiveSupport::TestCase
   test "deberia encontrar un expediente a partir de un texto" do
     file = FileRecord.search('mar')
     assert !file.empty?
   end
end
