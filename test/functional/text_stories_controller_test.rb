require 'test_helper'

class TextStoriesControllerTest < ActionController::TestCase
  setup do
    @text_story = text_stories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:text_stories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create text_story" do
    assert_difference('TextStory.count') do
      post :create, text_story: { question_id: @text_story.question_id, text: @text_story.text }
    end

    assert_redirected_to text_story_path(assigns(:text_story))
  end

  test "should show text_story" do
    get :show, id: @text_story
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @text_story
    assert_response :success
  end

  test "should update text_story" do
    put :update, id: @text_story, text_story: { question_id: @text_story.question_id, text: @text_story.text }
    assert_redirected_to text_story_path(assigns(:text_story))
  end

  test "should destroy text_story" do
    assert_difference('TextStory.count', -1) do
      delete :destroy, id: @text_story
    end

    assert_redirected_to text_stories_path
  end
end
