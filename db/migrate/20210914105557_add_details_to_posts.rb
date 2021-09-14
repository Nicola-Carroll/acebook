class AddDetailsToPosts < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :user, null: false, foreign_key: true
    add_column :posts, :likes, :integer
  end
end
