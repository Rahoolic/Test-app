require 'rails_helper'
include PostsHelper

RSpec.describe PostsHelper, type: :helper do
  it 'assigns a user to a post' do
    # Arranging our data => Assigning variables
    creator = User.first_or_create!(email: 'raul@test.com', password: '123456', password_confirmation: '123456')
    @post = Post.new(
      title: 'MyString',
      body: 'MyText',
      views: 1
    )

    # Act => We're acting with our new variables
    returned_post = assign_post_creator(@post, creator)

    # Assert => Assert that our expected outcome matches our actual outcome
    expect(returned_post.user).to be(creator)
  end
end
