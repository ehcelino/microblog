class CreateSubcomments < ActiveRecord::Migration[7.0]
  def change
    create_table :subcomments do |t|
      t.string :content

      t.timestamps
    end
  end
end
