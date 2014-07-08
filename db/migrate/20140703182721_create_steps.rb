class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.belongs_to :file_record, index: true
      t.belongs_to :person, index: true
      t.belongs_to :office, index: true

      t.timestamps
    end
  end
end
