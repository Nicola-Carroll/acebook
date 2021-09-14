class AddDetailsToComments < ActiveRecord::Migration[6.1]
  def change
    add_reference :comments, :user, null: false, foreign_key: true
    add_reference :comments, :post, null: false, foreign_key: true
    add_column :comments, :message, :string
    add_column :comments, :likes, :integer
  end
end
