class CreateWorksheetUploads < ActiveRecord::Migration[5.1]
  def change
    create_table :worksheet_uploads do |t|
      t.string :name
      t.string :attachment

      t.timestamps
    end
  end
end
