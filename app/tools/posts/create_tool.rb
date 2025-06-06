module Posts
  class CreateTool < ApplicationTool
    description "Create a new post"

    arguments do
      required(:title).filled(:string).description("The title of the created post")
      required(:body).filled(:string).description("The body of the created post")
    end

    def call(title:, body:)
      post = Post.create!(title:, body:)

      JSON.generate(post.as_json)
    end
  end
end
