module ApplicationHelper
  
  def title
    if @title.present?
      title = "#{@title} | #{app_name}"
    else
      title = "#{app_name}"
    end
  end
  
private

  def app_name
    "playElver"
  end
  
end
