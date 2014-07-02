class AddPublicationYearToBooks < ActiveRecord::Migration
  def change
    add_column :books, :publication_year, :string
  end
end
