class Retousuario < ApplicationRecord
  belongs_to :retos
  belongs_to :users
end
