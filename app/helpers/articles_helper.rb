module ArticlesHelper
  def article_hash_tag(article)
    if article.group_id.present?
      link_to  Group.find(article.group_id).name, group_path(article.group_id) 
    else
      link_to 'Groupify'
    end
  end

  def article_image(article)
     if article.group_id.present?
       image_tag Group.find(article.group_id).icon.url(:medium)
    end
  end

end
