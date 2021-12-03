class City < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '今治市-Imabari-' },
    { id: 3, name: '新居浜市-Niihama-' },
    { id: 4, name: '西条市-Saijo-' },
    { id: 5, name: '四国中央市-Shikokuchuo-' },
    { id: 6, name: '上島町-Kamijima-' },
    { id: 7, name: '松山市-Matsuyama-' },
    { id: 8, name: '伊予市-Iyo-' },
    { id: 9, name: '東温市-Toon-' },
    { id: 10, name: '久万高原町-Kumakogen-' },
    { id: 11, name: '松前町-Masaki-' },
    { id: 12, name: '砥部町-Tobe-' },
    { id: 13, name: '宇和島市-Uwajima-' },
    { id: 14, name: '八幡浜市-Yawatahama-' },
    { id: 15, name: '大洲市-Ozu-' },
    { id: 16, name: '西予市-Seiyo-' },
    { id: 17, name: '内子町-Uchiko-' },
    { id: 18, name: '伊方町-Ikata-' },
    { id: 19, name: '松野町-Matsuno-' },
    { id: 20, name: '鬼北町-Kihoku-' },
    { id: 21, name: '愛南町-Ainan-' },
  ]

  include ActiveHash::Associations
  has_many :recommends
  
end