module ApplicationHelper
  def breadcrumb(*titles)
    titles.map(&method(:h)).join(" \u00bb ")
  end

  def nav_to(title, path, params={})
    if current_page? path then
      %(<li class="active">#{link_to title, path, params}</li>).html_safe
    else
      %(<li>#{link_to title, path, params}</li>).html_safe
    end
  end
end
