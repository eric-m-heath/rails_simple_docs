class AddCategoryIdToDocuments < ActiveRecord::Migration
  def change
    change_table :documents do |t|
      t.integer :category_id
    end
  end
end
