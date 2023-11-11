class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.references :account
      t.boolean :active
      t.timestamps
    end
  end
end
