class Puntoecologico < ApplicationRecord
  belongs_to :detalleparametros
  belongs_to :users
end
