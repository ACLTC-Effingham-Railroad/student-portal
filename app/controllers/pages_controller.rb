class PagesController < ApplicationController
  
  def index
    @pages = Unirest.get("").body
  end

  def show
    @page = Unirest.get("").body
  end

  def edit
    @pages = Unirest.get("").body

    render :show
  end

  def update
    @pages = Unirest.patch("")headers:{ "Accept" => "application/json" }, parameters:{ first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number], short_bio: params[:short_bio], linkedin_url: params[:linkedin_url], twitter_handle: params[:twitter_handle], personal_blog_website_url: params[:personal_blog_website_url], online_resume_url: params[:online_resume_url], github_url: params[:github_url, photo: params[:photo]] }).body

    render :show
  end
  
end

