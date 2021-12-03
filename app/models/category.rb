class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '史跡-Historic sites-' },
    { id: 3, name: '温泉-Hot spring-' },
    { id: 4, name: '自然-Nature-' },
    { id: 5, name: 'グルメ-A gourmet-' },
    { id: 6, name: '宿泊施設-Accommodation' },
  ]

  include ActiveHash::Associations
  has_many :recommends
  
end