class ChangeArticleFieldOnTaggings < ActiveRecord::Migration
  def change
      remove_column :taggings, :article
      add_reference :taggings, :article, index: true
  end
end
