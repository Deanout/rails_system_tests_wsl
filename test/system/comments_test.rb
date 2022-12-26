require 'application_system_test_case'

class CommentsTest < ApplicationSystemTestCase
  test 'create a comment' do
    # Visit the post page
    visit post_path(posts(:testyboi))
    # Fill in the comment form
    fill_in "Body", with: "This is a comment"

    # Submit the form
    click_on "Create Comment"
    # Assert that the comment was created
    assert_text "Comment was successfully created."
  end
end
