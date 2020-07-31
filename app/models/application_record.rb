class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end



#Author.all
#=> #<ActiveRecord::Relation []>
 
#Author.create!(name: "Stephen King", genre: "Horror", bio: "Bio details go here")
#=> #<Author id: 1, name: "Stephen King", genre: "Horror", bio: "Bio details go here", created_at: "2015-11-27 22:59:14", updated_at: "2015-11-27 22:59:14">