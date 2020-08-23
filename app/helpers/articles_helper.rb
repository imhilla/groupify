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
       image_tag Group.find(article.group_id).icon.url(:medium), :class => 'article-icon'
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
    image_tag User.find(article.author_id).image.url(:medium), :class => 'article-icon'
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

  def article_size
    Article.all.size
  end

  def most_recent
    Article.order('created_at desc')
  end

  def who(article)
    article.likes.map do |like|
    b = like.user.username
    b.to_s
    end
  end


  def who_liked(article)
    if article.likes.count == 0
      ''
    elsif article.likes.count == 1
      a = who(article).first
      a.to_s + " liked"
    elsif article.likes.count == 2
      a = who(article)[0]
      b = who(article)[1] 
      b.to_s + " and " + a.to_s + " liked"
    else
    b = who(article)[1] 
    c = who(article)[2]
    b.to_s + " " + c.to_s + " and others liked"
    end
  end
end
