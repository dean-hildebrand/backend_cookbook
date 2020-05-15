class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :rating
      t.text :review
      t.integer :recipe_id

      t.timestamps
    end
  end
end
