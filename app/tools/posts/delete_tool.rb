module Posts
  class DeleteTool < ApplicationTool
    description "Delete the post with the given ID"

    arguments do
      required(:id).filled(:integer).description("The ID of the post to delete")
    end

    def call(id:)
      post = Post.find(id)
      post.destroy

      JSON.generate({ message: "Post deleted successfully" })
    end
  end
end
