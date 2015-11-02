class Application1Controller < ApplicationController
    #most recent posts
    # @posts
    # @all-posts
    def index

    render template: "layouts/application1"
  end


     def allPosts
      @posts.each do |n|
 <div class="n">
        <h1> #{n.title}</h1>
        <a href="">
              <h2 class="post-title"?
              </h2>
              <h3 class="post-subtitle">
                 #{n.body}
              </h3>
          </a>

          <p class="post-meta">Posted by <a href="nil"> #{n.author}</a> on  #{n.created_at}</p>
        </div>
      end


     def onePost
     @post1 = @posts.take(1)
      @post1.each do |n|
       <div class="n">
        <h1> #{n.title}</h1>
        <a href="">
              <h2 class="post-title"?
              </h2>
              <h3 class="post-subtitle">
                 #{n.body}
              </h3>
          </a>

          <p class="post-meta">Posted by <a href="nil">#{n.author}</a> on  #{n.created_at}</p>
    </div>
    end


  end
