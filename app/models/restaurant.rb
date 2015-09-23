class Restaurant < ActiveRecord::Base
has_many :reviews, dependent: :destroy
validates :name, presence: true
validates :address, presence: true
validates :phone_number, presence: true
validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }
validates :description, presence: true
validates :stars, inclusion: { in: [0,1,2,3], allow_nil: false }
end


