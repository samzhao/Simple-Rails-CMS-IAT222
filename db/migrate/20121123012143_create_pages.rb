class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
