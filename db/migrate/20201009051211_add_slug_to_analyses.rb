class AddSlugToAnalyses < ActiveRecord::Migration[6.0]
  def change
    add_column :analyses, :slug, :string
    add_index :analyses, :slug, unique: true
  end
end
