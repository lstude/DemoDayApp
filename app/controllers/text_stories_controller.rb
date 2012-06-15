class TextStoriesController < ApplicationController
  # GET /text_stories
  # GET /text_stories.json
  
  before_filter :authenticate_user!
  
  def index
    @text_stories = TextStory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @text_stories }
    end
  end

  # GET /text_stories/1
  # GET /text_stories/1.json
  def show
    @text_story = TextStory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @text_story }
    end
  end

  # GET /text_stories/new
  # GET /text_stories/new.json
  def new
    @text_story = TextStory.new
    @questions = Question.find_all_by_category_id(params[:category_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @text_story }
    end
  end

  # GET /text_stories/1/edit
  def edit
    @text_story = TextStory.find(params[:id])
  end

  # POST /text_stories
  # POST /text_stories.json
  def create
    @text_story = current_user.text_stories.new(params[:text_story])
    @text_story.save

    respond_to do |format|
      if @text_story.save
        format.html { redirect_to profile_index_url, notice: 'Text story was successfully created.' }
        format.json { render json: @text_story, status: :created, location: @text_story }
      else
        format.html { render action: "new" }
        format.json { render json: @text_story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /text_stories/1
  # PUT /text_stories/1.json
  def update
    @text_story = current_user.text_stories.find(params[:id])

    respond_to do |format|
      if @text_story.update_attributes(params[:text_story])
        format.html { redirect_to @text_story, notice: 'Text story was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @text_story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_stories/1
  # DELETE /text_stories/1.json
  def destroy
    @text_story = current_user.text_stories.find(params[:id])
    @text_story.destroy

    respond_to do |format|
      format.html { redirect_to profile_index_url }
      format.json { head :no_content }
    end
  end
end
