class Page < ActiveRecord::Base

  attr_reader :id
  attr_accessor :first_name, :last_name, :email, :phone_number, :short_bio, :linkedin_url, :twitter_handle, :personal_blog_website_url, :online_resume_url, :github_url, :photo

  def initialize(hash)
    @id = hash["id"]
    @first_name = hash["first_name"]
    @last_name = hash["last_name"]
    @email = hash["email"]
    @phone_number = hash["phone_number"]
    @short_bio = hash["short_bio"]
    @linkedin_url = hash["linkedin_url"]
    @twitter_handle = hash["twitter_handle"]
    @personal_blog_website_url = hash["personal_blog_website_url"]
    @online_resume_url = hash["online_resume_url"]
    @github_url = hash["github_url"]
    @photo = hash["photo"]

  end
    
  def self.find(id)
    Page.new(Unirest.get("<url>#{id}.json").body)
  end

  def fullname 
    "#{first_name} #{last_name}"
  end

end
