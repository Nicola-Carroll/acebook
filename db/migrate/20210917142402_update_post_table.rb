class UpdatePostTable < ActiveRecord::Migration[6.1]
  def up
    change_column :posts, :message, :string, :null => false
  end
end