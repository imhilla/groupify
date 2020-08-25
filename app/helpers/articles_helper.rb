module ArticlesHelper
  def article_hash_tag(article)
    if article.group_id.present?
      link_to Group.find(article.group_id).name, group_path(article.group_id)
    else
      link_to 'Groupify'
    end
  end

  def article_image(article)
    image_tag Group.find(article.group_id).icon.url(:medium), class: 'article-icon' if article.group_id.present?
  end

  def article_order
    Article.all.where('author_id =?', current_user.id).includes(:group)
  end

  def article_count
    Article.all.where('author_id =?', current_user.id).count
  end

  def article_like(article)
    article.likes.size unless article.likes.count.zero?
  end

  def article_comment(article)
    article.comments.count if article.comments.count != 0
  end

  def profile_image(article)
    image_tag User.find(article.author_id).image.url(:medium), class: 'article-icon'
  end

  def profile_name(article)
    User.find(article.author_id).name
  end

  def profile_username(article)
    User.find(article.author_id).username
  end

  def article_created(article)
    article.created_at.strftime(' • %d %b %y')
  end

  def article_size
    Article.all.size
  end

  def most_recent
    Article.order('created_at desc').includes(:group)
  end

  def who(article)
    article.likes.map do |like|
      b = like.user.username.downcase
      b.to_s
    end
  end

  def who_others_count(article)
    article.likes.count - 2
  end

  def who_liked(article)
    if article.likes.count.zero?
      ''
    elsif article.likes.count == 1
      a = who(article).first
      a.to_s + ' liked'
    elsif article.likes.count == 2
      a = who(article)[0]
      b = who(article)[1]
      b.to_s + ' and ' + a.to_s + ' liked'
    elsif article.likes.count == 3
      b = who(article)[1]
      c = who(article)[2]
      b.to_s + ', ' + c.to_s + ' and ' + who_others_count(article).to_s + ' other liked'
    else
      b = who(article)[1]
      c = who(article)[2]
      b.to_s + ', ' + c.to_s + ' and ' + who_others_count(article).to_s + ' others liked'
    end
  end

  def faheart(article)
    if article.likes.count.positive?
      content_tag(:i, :class => "fa fa-heart") do
      end
    end
  end
end
