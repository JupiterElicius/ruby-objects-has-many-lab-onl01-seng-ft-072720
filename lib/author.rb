class Author
  attr_accessor :name, :post

  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    Post.all
  end
  
  def add_post(post)
    post.author = self
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end
  
  def self.post_count
    Post.all.length
  end
end