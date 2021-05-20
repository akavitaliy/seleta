class AddProducts < ActiveRecord::Migration[6.1]

  def change
    Product.create :title => 'Купальник G-30/W',
    :description => 'Купальник с формованными чашками push-up(бельевой ламинированный поролон в нижней часть push-up 7 мм.). С лицевой стороны лифа выпонена драпировка, материал с легким люрексом.Брители отстегиваются со спины(можно зафиксировать через шею).Плавки бразилиана на подкладке.',
    :price => 80,
    :size => '75BCDE(44)',
    :a_type => 'Раздельный',
    :path_to_image => '/vendor/img/products/big/g_30w.jpg',
    :path_to_litle_image => '/vendor/img/products/litle/g_30w.jpg'
    
    Product.create :title => 'Купальник AT-33/KB ',
    :description => 'Купальник c формованными чашками (бельевой ламинированный поролон) с дополнительными поролоновыми лепестками push-up (сьемные). Плавки бразилиана, передняя часть на подкладке.',
    :price => 90,
    :size => '80BCD(46)',
    :a_type => 'Раздельный',
    :path_to_image => '/vendor/img/products/big/at_33kb.jpeg',
    :path_to_litle_image => '/vendor/img/products/litle/at_33kb.jpeg'
 
    Product.create :title => 'Купальник АТ-33/КR',
    :description => 'Купальник, с формованными чашками(бельевой ламинированный поролон толщина до 2 мм.) с дополнительными поролоновыми лепестками push-up(сьемные). Плавки бразилиана передняя часть на подкладке.',
    :price => 80,
    :size => '75BCD(44)',
    :a_type => 'Раздельный',
    :path_to_image => '/vendor/img/products/big/at_33kr.jpeg',
    :path_to_litle_image => '/vendor/img/products/litle/at_33kr.jpeg'

    Product.create :title => 'Купальник АТ-33/КP',
    :description => 'Купальник с формованными чашками(бельевой ломинированный поролон толщина до 2 мм.)с дополнительными поролоновыми лепестками push-up(сьемные).Плавки бразилиана, передняя часть на подкладке. Декор-металическая (декоративная) фурнитура.',
    :price => 85,
    :size => '75BD(44)',
    :a_type => 'Раздельный',
    :path_to_image => '/vendor/img/products/big/at-33kp.jpg',
    :path_to_litle_image => '/vendor/img/products/litle/at_33kp .jpeg'

    Product.create :title => 'Купальник Cannes-23W',
    :description => 'Купальник c формованными чашками push-up(бельевой ламинированный поролон толщина в нижней части чашки(push-up) 8мм.). Плавки классические на подкладке.Декоративные элементы из метало(декоративный) с стеклянными камнями.',
    :price => 95,
    :size => '80BC(46)',
    :a_type => 'Раздельный',
    :path_to_image => '/vendor/img/products/big/cannes_23w.jpeg',
    :path_to_litle_image => '/vendor/img/products/litle/cannes_23w.jpeg'
  end

  Product.create :title => 'Купальник CM-32W',
    :description => 'Купальник, чашка без поролона на косточках и на подкладке. Очень хорошо держит грудь за счет широкой чашки,по средствам крепления лифа через шею.Плавки на подкладке, регулируются, на завязках.',
    :price => 90,
    :size => '80С/D(46-48)',
    :a_type => 'Раздельный',
    :path_to_image => '/vendor/img/products/big/cm_32w.jpg',
    :path_to_litle_image => '/vendor/img/products/litle/cm_32w.jpeg'
  
end
