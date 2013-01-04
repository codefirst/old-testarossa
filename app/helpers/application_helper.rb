module ApplicationHelper
  def breadcrumb(*titles)
    titles.map(&method(:h)).join("&raquo;")
  end
end
