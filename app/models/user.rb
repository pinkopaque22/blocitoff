class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
         
#   def avatar_url(size)
#      gravatar_id = Digest::MD5::hexdigest(self.email).downcase
#      "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
#   end
   
   def avatar_url(size)
     gravatar_id = Digest::MD5::hexdigest(self.email).downcase
     "http://icdn2.digitaltrends.com/image/idris-elba-luther-thor-dark-towerfeatured-90x90-c.jpg"
   end

#////////Do I need the below if I am using Devise?
 # config.email_regexp = /\A[^@]+@[^@]+\z/
 # #EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 #  validates :name, length: { minimum: 1, maximum: 100 }, presence: true
 #  validates :password, presence: true, length: { minimum: 6 }, if: "encrypted_password.nil?"
 #  validates :password, length: { minimum: 6 }, allow_blank: true
 #  validates :email,
 #             presence: true,
 #             uniqueness: { case_sensitive: false },
 #             length: { minimum: 3, maximum: 100 },
 #             format: { with: EMAIL_REGEX }

 #   has_secure_password
 #   enum role: [:member]
end



    
    
   