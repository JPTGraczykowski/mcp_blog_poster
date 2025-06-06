module Posts
  class UpdateTool < ApplicationTool
    description "Update the post with the given ID"

    arguments do
      required(:id).filled(:integer).description("The ID of the post to update")
      required(:title).filled(:string).description("The title of the edited post")
      required(:body).filled(:string).description("The body of the edited post")
    end

    def call(id:, title:, body:)
      post = Post.find(id)
      post.update!(title:, body:)

      JSON.generate(post.as_json)
    end
  end
end
