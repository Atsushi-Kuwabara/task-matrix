class Status < ActiveHash::Base
  self.data = [
    {id: 1, name: '未着手'}, {id: 2, name: '作業中'}, {id: 3, name: '完了'},
    {id: 4, name: '要確認'}, {id: 5, name: 'ペンディング'}
  ]
end