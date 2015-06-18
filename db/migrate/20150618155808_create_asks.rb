class CreateAsks < ActiveRecord::Migration
  def change
    create_table :asks do |t|
      t.string :subject
      t.text :message
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
  end
end
