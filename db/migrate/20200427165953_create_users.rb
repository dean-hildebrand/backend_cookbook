class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
<<<<<<< HEAD
      t.string :username
=======
      t.string :user_name
>>>>>>> backendBranch2
      t.string :password_digest
      t.text :bio
      t.string :picture

      t.timestamps
    end
  end
end
