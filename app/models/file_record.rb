class FileRecord < ActiveRecord::Base
  has_many :steps, dependent: :destroy
    
  after_create :create_first_step
  
  def create_first_step
    steps.first_step
  end
  
  def archivate
    steps.archivate
  end
  
  def self.search(texto)
    return all unless texto
    where("title like ?", "%#{ texto }%")
  end
end
