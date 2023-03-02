module ApplicationHelper
  def navbar_title(title)
    title.presence || 'Budget App'
  end

  def back_link(link)
    link.presence || '/categories'
  end
end
