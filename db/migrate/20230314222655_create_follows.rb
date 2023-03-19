class CreateFollows < ActiveRecord::Migration[7.0]
  def change
    create_table :follows do |t|
      t.references :followed, null: false
      t.references :follower, null: false

      t.timestamps
    end
  end
end
