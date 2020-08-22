module ArticlesHelper
  def article_hash_tag(article)
    if article.group_id.present?
      link_to Group.find(article.group_id).name, group_path(article.group_id) 
    else
      puts '#Groupify'
    end
  end

end
