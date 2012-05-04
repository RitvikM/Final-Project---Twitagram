class AddCreatedbyToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :createdby, :string
  end
end
