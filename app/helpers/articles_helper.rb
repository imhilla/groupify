module ArticlesHelper
  def article_hash_tag
    link_to Group.find(article.group_id).name, group_path(article.group_id) if article.group_id.present?
  end
end
