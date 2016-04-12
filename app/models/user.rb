class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
 has_many :items        
   
   def avatar_url(size)
     gravatar_id = Digest::MD5::hexdigest(self.email).downcase
     "https://s-media-cache-ak0.pinimg.com/favicons/fe2172ad86a337a478ad3ad852faf809887f550cb63f7ff1bb2de5f9.png?4a1dbe3038214acc47b3bd3dddec2425
     /#{gravatar_id}.png?s=#{size}"
   end
end



    
    
   