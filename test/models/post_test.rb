require "test_helper"

class PostTest < ActiveSupport::TestCase
  test "should not save post without title" do
    post = Post.new(body: "Some content")
    assert_not post.save, "Saved post without title"
  end

  test "should not save post without body" do
    post = Post.new(title: "Some title")
    assert_not post.save, "Saved post without body"
  end

  test "should save valid post" do
    post = Post.new(title: "Valid Title", body: "Valid Content")
    assert post.save, "Could not save valid post"
  end
end
