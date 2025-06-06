module Posts
  class DeleteLastPostTool < ApplicationTool
    description "Delete the last post"

    def call
      post = Post.last
      post.destroy

      JSON.generate({ message: "Post deleted successfully" })
    end
  end
end
