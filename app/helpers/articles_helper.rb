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

  def article_order
    Article.order("created_at desc")
  end

  def article_count 
    Article.all.where("author_id =?", current_user.id).count
  end

  def article_like(article)
    article.likes.size unless article.likes.count.zero?
  end

  def article_comment(article)
    article.comments.count if article.comments.count != 0
  end

  def profile_image(article)
    image_tag User.find(article.author_id).image.url(:medium)
  end

  def profile_name(article)
    User.find(article.author_id).name
  end

  def profile_username(article)
    User.find(article.author_id).username
  end

  def article_created(article)
    article.created_at.strftime(" • %d %b %y")
  end

end
