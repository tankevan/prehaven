class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :repo
      t.string :title
      t.string :body
      t.integer :issue_no

      t.timestamps
    end
  end
end
