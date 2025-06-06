module Posts
  class DeleteLastPostTool < ApplicationTool
    description "Delete the last post"

    def call
      post = Post.last
      post.destroy
    end
  end
end
