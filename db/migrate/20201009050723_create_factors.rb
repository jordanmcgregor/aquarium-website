class CreateFactors < ActiveRecord::Migration[6.0]
  def change
    create_table :factors do |t|
      t.text :title
      t.text :body
      t.references :analysis, null: false, foreign_key: true

      t.timestamps
    end
  end
end
