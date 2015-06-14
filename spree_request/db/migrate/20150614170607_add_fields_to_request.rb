class AddFieldsToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :subject, :string
    add_column :requests, :description, :text
    add_column :requests, :email, :string
    add_column :requests, :phonenumber, :integer
  end
end
