require('date')
today = Date.today

class Blog
  def initialize
    @posts = []
  end
  def add_post(post)
    @posts.push(post)
  end

def publish_front_page
  sorted_posts = @posts.sort{ |x,y| y.date <=> x.date }
    sorted_posts.each do |item|
    end
  end
end

class Post
  attr_accessor :content, :title, :date, :sponsored
  def initialize(content,title,date)
    @content = content
    @title = title
    @date = Date.parse(date)
  end

def posts_structure
  if @posts
      puts item.title
      puts "----------"
      puts item.content
      puts item.date}
  else
      puts item.title
      puts "----------"
      puts item.content
      puts item.date}
      puts item.sponsor
  end
end

class Sponsored_post < Post
  attr_accessor :sponsor,:content, :title, :date
  def initialize(content,title,date,sponsor)
    super(content, title, date)
    @sponsor = sponsor
  end
end

blog = Blog.new
blog.add_post Post.new("Teo conoce la vida", "*****" , "2011-04-02" )
blog.add_post Post.new("Teo y la doncella", "*****" , "2012-08-04" )
blog.add_post Post.new("Teo y la rueda", "*****" , "2024-03-05" )
blog.add_post Sponsored_post.new("Teo se va al parque","*****","2018-06-04","sponsored by PanBimbo")
blog.publish_front_page
