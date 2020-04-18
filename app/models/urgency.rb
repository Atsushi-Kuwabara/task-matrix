class Urgency < ActiveHash::Base
  self.data = [
    {id: 1, name: '超緊急'}, {id: 2, name: '緊急'}, {id: 3, name: '普通'},
    {id: 4, name: 'あまり緊急ではない'}, {id: 5, name: '緊急でない'}
  ]
end