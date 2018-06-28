class Author
  attr_accessor :name, :post
  def initialize(name)
    @name = name
    @post = []
  end
  def posts
    @post
  end
  def add_post(post)
    @post << post
    post.author = self
  end
  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    add_post(new_post)
  end
  def self.post_count
    Post.all.length
  end
end

class Post
  attr_accessor :title
  @@all = []
  def initialize(title)
    @title = title
    @@all << self
  end
  def self.all
    @@all
  end
  def title
    @title
  end
  def author
    self.author ? self.author.name : nil
  end
  def author_name
    self.author ? self.author.name : nil
  end
end
