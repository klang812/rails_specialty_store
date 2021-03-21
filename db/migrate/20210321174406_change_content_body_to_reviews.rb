class ChangeContentBodyToReviews < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :content_body, :review
  end
end
