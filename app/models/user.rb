class User < ApplicationRecord # ~> NameError: uninitialized constant ApplicationRecord
    has_many :comments, dependent: :destroy 


    # Include default devise modules. Others available are:
  # :lockable, :timeoutable
devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

validates_presence_of :email 

end

