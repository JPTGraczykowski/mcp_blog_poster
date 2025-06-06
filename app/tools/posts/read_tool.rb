module Posts
  class ReadTool < ApplicationTool
    description "Read the post with the given ID"

    arguments do
      required(:id).filled(:integer).description("The ID of the post to read")
    end

    def call(id:)
      post = Post.find(id)
      JSON.generate(post.as_json)
    end
  end
end
