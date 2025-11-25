# Seed data for the store

# Create admin user (username: admin, password: admin123)
AdminUser.create!(
  username: 'admin',
  password: 'admin123'
)

# Create sample products
products_data = [
  {
    name: 'Wireless Headphones',
    description: 'High-quality Bluetooth headphones with noise cancellation. Perfect for music lovers and professionals.',
    price: 89.99,
    image_url: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400',
    stock: 50
  },
  {
    name: 'Smart Watch',
    description: 'Feature-rich smartwatch with fitness tracking, heart rate monitor, and GPS. Stay connected on the go.',
    price: 199.99,
    image_url: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400',
    stock: 30
  },
  {
    name: 'Laptop Stand',
    description: 'Ergonomic aluminum laptop stand for better posture. Adjustable height and angle for maximum comfort.',
    price: 49.99,
    image_url: 'https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?w=400',
    stock: 75
  },
  {
    name: 'Mechanical Keyboard',
    description: 'RGB backlit mechanical keyboard with cherry switches. Great for gaming and typing enthusiasts.',
    price: 129.99,
    image_url: 'https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=400',
    stock: 40
  },
  {
    name: 'USB-C Hub',
    description: 'Multi-port USB-C hub with HDMI, USB 3.0, and SD card reader. Essential for modern laptops.',
    price: 39.99,
    image_url: 'https://images.unsplash.com/photo-1625948515291-69613efd103f?w=400',
    stock: 100
  },
  {
    name: 'Webcam HD',
    description: '1080p HD webcam with auto-focus and built-in microphone. Perfect for video calls and streaming.',
    price: 79.99,
    image_url: 'https://images.unsplash.com/photo-1585792180666-f7347c490ee2?w=400',
    stock: 60
  },
  {
    name: 'Portable Charger',
    description: '20000mAh power bank with fast charging support. Keep your devices charged anywhere.',
    price: 34.99,
    image_url: 'https://images.unsplash.com/photo-1609091839311-d5365f9ff1c5?w=400',
    stock: 150
  },
  {
    name: 'Wireless Mouse',
    description: 'Ergonomic wireless mouse with precision tracking. Comfortable for extended use.',
    price: 29.99,
    image_url: 'https://images.unsplash.com/photo-1527814050087-3793815479db?w=400',
    stock: 80
  }
]

products_data.each do |product_attrs|
  Product.create!(product_attrs)
end

puts "Seeded #{Product.count} products"
puts "Created admin user (username: admin, password: admin123)"
