class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '読書'},
    { id: 2, name: '勉強'},
    { id: 3, name: 'その他'}
  ]

  include ActiveHash::Associations
  
end