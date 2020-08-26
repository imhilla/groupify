module GroupsHelper
  def group_icon(group)
    image_tag group.icon.url(:medium), class: 'group-image'
  end

  def group_name(group)
    link_to group.name.capitalize, group_path(group)
  end

  def group_created_date(group)
    group.created_at.strftime('%d %b %Y')
  end

  def group_article
    Article.where(group_id: @group.id)
  end

  def article_author(article)
    User.find(article.author_id).username
  end
end
