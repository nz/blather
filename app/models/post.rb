class Post < ActiveRecord::Base

  searchable do
    text :body
  end

end
