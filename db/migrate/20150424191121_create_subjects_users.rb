class CreateSubjectsUsers < ActiveRecord::Migration
  def change
    create_table :subjects_users do |t|
      t.references :user, index: true, foreign_key: true
      t.references :subject, index: true, foreign_key: true
    end
  end
end
