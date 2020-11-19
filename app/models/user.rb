class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname  
    validates :first_name :format {/\A[ぁ-んァ-ン一-龥]/}
    validates :family_name :format {/\A[ぁ-んァ-ン一-龥]/}
    validates :first_name_kana :format {/\A[ァ-ヶー－]+\z/}
    validates :family_name_kana :format {/\A[ァ-ヶー－]+\z/}
    validates :birth_day
    validates :encrypted_password :length { minimum: 7 }, :format {/\A[a-zA-Z0-9]+\z/}
  end
end
