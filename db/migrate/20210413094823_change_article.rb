class ChangeArticle < ActiveRecord::Migration[6.1]
  def up
    change_table :articles do |t|
      t.change :body, :integer
    end
  end

  def down
    change_table :articles do |t|
      t.change :body, :string
    end
  end
end
