class CreateLecons < ActiveRecord::Migration[5.1]
  def change
    create_table :lecons do |t|
    	t.string :titre
    	t.text :body
       t.belongs_to :cours, index: true
      t.timestamps
    end
  end
end
