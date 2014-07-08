class FileRecord < ActiveRecord::Base
  has_many :steps, dependent: :destroy
  
  after_save :save_step
  def save_step
    office = Office.where(name: 'Mesa de entrada').first
    steps.create({ :office => office })
  end
  
end
