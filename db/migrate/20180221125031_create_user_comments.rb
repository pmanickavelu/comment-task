class CreateUserComments < ActiveRecord::Migration[5.1]
  def change
    create_table :user_comments do |t|
      t.string :ip
      t.text :comment_text

      t.timestamps
    end
  end
end
