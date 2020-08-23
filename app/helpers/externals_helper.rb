module ExternalsHelper
  def external_count
    Article.where(group_id: [nil, ""]).count
  end

  def external_article
    Article.where(group_id: [nil, ""])
  end

  def group_likes(article)
    article.likes
  end

  def external_user(article)
    image_tag User.find(article.author_id).image.url(:medium), :class => 'article-icon'
  end
end
