Restaurant.create(name: 'Niu Sushi MidMall Maipu', status: 'OK', last_updated_at: Time.current)
Restaurant.create(name: 'Niu Sushi Pajaritos - Arauco Maipu', status: 'Error', last_updated_at: Time.current)

Restaurant.all.each do |restaurant|
  Device.create!([
    'Impresora Epson 3423',
    'Servidor Web',
    'Servidor base de datos'
  ].map{ |name|
    {
      name: name,
      status: 'OK',
      last_updated_at: Time.current,
      is_central: false,
      restaurant_id: restaurant.id
    }
  })
end

p "Created #{Restaurant.count} Restaurant with devices"
