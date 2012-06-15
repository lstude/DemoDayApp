module ApplicationHelper
  
  def title(page_title)
    content_for(:title) { page_title }
  end
  
  def is_active?(page_name)
    "active" if params[:action] == page_name
  end
  
end
 