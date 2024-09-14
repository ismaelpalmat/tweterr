class CreateArticles < ActiveRecord::Migration[7.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.string :author
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
