module ApplicationHelper

  def markdown(text)
    Maruku.new(text).to_html.html_safe
  end
  
  def auto_link_words(text)
    text.gsub(/(\w+)/) do |word|
      link_to word, "/word/#{word.downcase}"
    end.html_safe
  end
  
end
