class Cat < ApplicationRecord   
    validates :name, :breed, :age, presence: true  
    validates :age, inclusion: { in: 0..36 , message: " of your kitty must be 0 - 35"}    
end
