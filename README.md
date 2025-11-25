# 🛒 Tech Store - Modern Rails E-Commerce

> A sleek, fully-featured online store built with Ruby on Rails, showcasing the power of MVC architecture and session-based shopping experiences.

**Live Demo Features:** Product browsing, intelligent search, shopping cart, checkout flow, and complete admin panel for inventory management.

---

## ✨ What Makes This Special

This isn't just another online store—it's a demonstration of clean Rails architecture with practical e-commerce features:

- **Smart Product Catalog** - Browse 8 curated tech products with high-quality images and detailed descriptions
- **Lightning-Fast Search** - Find products instantly by name or description
- **Session-Based Cart** - Seamless shopping experience with no database overhead for cart management
- **Smooth Checkout** - Simple, intuitive order placement with instant confirmation
- **Admin Dashboard** - Complete inventory control with full CRUD operations
- **Responsive Design** - Beautiful CSS Grid layout that works on any device
- **Auto-Dismiss Alerts** - Elegant UX with alerts that fade after 3 seconds

---

## 🚀 Quick Start

### Prerequisites

- **Ruby** 3.0+ 
- **Rails** 7.0+
- **SQLite3**

### Get Running in 60 Seconds

```bash
# Clone and enter directory
git clone https://github.com/akrai37/ruby-online-storecart.git
cd ruby-online-storecart

# Install dependencies
bundle install

# Setup database with sample data
bundle exec rake db:reset

# Launch the store
bundle exec rackup config.ru -p 3001

# Visit http://localhost:3001 🎉
```

### Quick Commands

**Stop server:** `Ctrl+C`  
**Reset database:** `bundle exec rake db:reset`  
**Run migrations:** `bundle exec rake db:migrate`  
**Load sample data:** `bundle exec rake db:seed`

---

## 🔐 Admin Access

Want to manage the inventory? 

**Dashboard:** `http://localhost:3001/admin/login`  
**Username:** `admin`  
**Password:** `admin123`

From the admin panel, you can add, edit, or remove products on the fly.

---

## 🎯 Core Features

### For Shoppers
- **Product Catalog** - Grid view of all available products with images, prices, and stock status
- **Product Details** - Click any product for full-page view with complete description
- **Smart Search** - Type anything—search works across product names and descriptions
- **Shopping Cart** - Add from anywhere, adjust quantities, remove items, or clear cart
- **Checkout Flow** - Simple form to capture shipping details and place orders
- **Order Confirmation** - Instant confirmation with order number and summary

### For Admins
- **Secure Login** - Password-protected admin area using bcrypt
- **Inventory Dashboard** - See all products in one table view
- **Add Products** - Create new products with name, description, price, stock, and image URL
- **Edit Products** - Update any product details instantly
- **Delete Products** - Remove products from catalog (cart handles gracefully)
- **Session Management** - Secure logout to end admin session

---

## 🏗️ Architecture & Tech Stack

**Framework:** Ruby on Rails 7.0  
**Database:** SQLite3 (easy portability, zero config)  
**Authentication:** BCrypt with session-based login  
**Server:** Puma 6.0 (Rack 3 compatible)  
**Styling:** Pure CSS with Grid and Flexbox (no frameworks)  
**Assets:** Sprockets pipeline  
**Testing:** Manual QA with full feature coverage

### Design Decisions
- **Session-based cart** - No database overhead, instant performance
- **External images** - Unsplash URLs for quick setup and visual appeal
- **Minimal JS** - Vanilla JavaScript only for alert auto-dismiss
- **RESTful routes** - Standard Rails conventions for clean URLs
- **Namespace pattern** - Admin controllers organized under `Admin::` module

---

## 📦 What's in the Box

The store comes pre-loaded with 8 curated tech products:

| Product | Price | Stock |
|---------|-------|-------|
| 🎧 Wireless Headphones | $89.99 | 15 |
| ⌚ Smart Watch | $199.99 | 8 |
| 💻 Laptop Stand | $49.99 | 20 |
| ⌨️ Mechanical Keyboard | $129.99 | 12 |
| 🔌 USB-C Hub | $39.99 | 25 |
| 📹 HD Webcam | $79.99 | 10 |
| 🔋 Portable Charger | $34.99 | 30 |
| 🖱️ Wireless Mouse | $29.99 | 18 |

All products include high-quality images from Unsplash and detailed descriptions.

---

## 🗄️ Database Schema

### Products
| Field | Type | Description |
|-------|------|-------------|
| `name` | string | Product name |
| `description` | text | Detailed description |
| `price` | decimal | Price in USD |
| `image_url` | string | Product image URL |
| `stock` | integer | Available quantity |

### Orders
| Field | Type | Description |
|-------|------|-------------|
| `customer_name` | string | Buyer's name |
| `customer_email` | string | Contact email |
| `customer_address` | text | Shipping address |
| `total` | decimal | Order total |
| `items_json` | text | Cart snapshot (JSON) |

### Admins
| Field | Type | Description |
|-------|------|-------------|
| `username` | string | Admin username |
| `password_digest` | string | Encrypted password |

---

## 🎮 Try It Out

### Shopper Experience
1. **Browse** the catalog on the homepage
2. **Search** for "wireless" or "USB" to see filtering in action
3. **Click** any product card for the detailed view
4. **Add to cart** from catalog or detail pages
5. **View cart** to see your selections with quantities
6. **Checkout** and place an order
7. **Get confirmation** with order number and details

### Admin Experience
1. **Login** at `/admin/login` (admin/admin123)
2. **View inventory** in the dashboard table
3. **Add a product** with all the details
4. **Edit** an existing product
5. **Delete** a product to see cart error handling
6. **Logout** securely when done

---

## 🛠️ Technical Highlights

- **Graceful Error Handling** - Cart automatically removes deleted products
- **SQL Search** - Uses LIKE queries for fuzzy name/description matching
- **RESTful API Design** - Clean, conventional Rails routes
- **Session Security** - HTTP-only cookies for cart and admin auth
- **Responsive CSS** - Mobile-first design with CSS Grid
- **Auto-Dismiss Alerts** - JavaScript-powered 3-second fade animations
- **No N+1 Queries** - Optimized database calls throughout

---

## 🤝 Contributing

Found a bug or want to add a feature? Contributions are welcome!

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

## 📄 License

This project is open source and available for educational purposes.

---

## 👨‍💻 Built By

**Ankush Rai** - Rails Developer  
📧 [GitHub](https://github.com/akrai37)

---

**⭐ Star this repo if you found it helpful!**
