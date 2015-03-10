class AddAuthorToQuote < ActiveRecord::Migration
  def change
    add_column :quotes, :author, :string, default: "Unkown"
  end
end
