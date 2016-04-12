class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def avatar_url(size)
     gravatar_id = Digest::MD5::hexdigest(self.email).downcase
     "https://s-media-cache-ak0.pinimg.com/favicons/fe2172ad86a337a478ad3ad852faf809887f550cb63f7ff1bb2de5f9.png?4a1dbe3038214acc47b3bd3dddec2425
/#{gravatar_id}.png?s=#{size}"
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



    
    
   