class Status < ActiveHash::Base
  self.data = [
    {id: 1, name: '01_未着手'}, {id: 2, name: '02_作業中'}, {id: 3, name: '03_完了'},
    {id: 4, name: '04_要確認'}, {id: 5, name: '05_ペンディング'}
  ]
end