module Posts
  class UpdateLastPostTool < ApplicationTool
    description "Update the last post"

    arguments do
      required(:title).filled(:string).description("The title of the updated post")
      required(:body).filled(:string).description("The body of the updated post")
    end

    def call(title:, body:)
      post = Post.last
      post.update!(title:, body:)

      JSON.generate(post.as_json)
    end
  end
end
