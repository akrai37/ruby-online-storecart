# Tech Store - Rails Online Shop

**AWProgramming-278 Web App Assignment 2**

A simple online store built with Ruby on Rails featuring product catalog, search, shopping cart, order management, and admin authentication.

---

## 📋 Assignment Requirements Met

✅ **Two views for product data resource**
- Products index page (catalog view)
- Individual product detail page with image

✅ **Product catalog data**
- 8 sample tech products with images, descriptions, prices, and stock

✅ **Shopping cart functions**
- Add to cart from catalog or product detail page
- View cart with quantities and totals
- Remove items from cart
- Clear cart

✅ **Order functions**
- Checkout form with customer information
- Order confirmation page
- Order history stored in database

✅ **User authentication for admin**
- Admin login/logout
- Protected admin dashboard
- Session-based authentication

✅ **Search function**
- Search by product name
- Search by product description
- Real-time search results

✅ **Clickable products**
- Each product in catalog links to detail page
- Individual product view shows full image and description
- "Add to Cart" button on detail page

---

## 🚀 Setup Instructions

### Prerequisites

Make sure you have the following installed:
- Ruby 3.0 or higher
- Rails 7.0 or higher
- SQLite3

### Installation

1. **Navigate to the project directory:**
   ```bash
   cd 278webapp2-AnkushRai
   ```

2. **Install dependencies:**
   ```bash
   bundle install
   ```

3. **Setup database (drop, create, migrate, and seed in one command):**
   ```bash
   bundle exec rake db:reset
   ```
   
   **OR** if starting fresh, run these separately:
   ```bash
   bundle exec rake db:migrate
   bundle exec rake db:seed
   ```

4. **Start the server:**
   ```bash
   bundle exec rackup config.ru -p 3001
   ```

5. **Open your browser and visit:**
   ```
   http://localhost:3001
   ```

### To Stop the Server
Press `Ctrl+C` in the terminal

### To Reset the Database (if needed)
If you get a "Username has already been taken" error or need to reset:
```bash
bundle exec rake db:reset
```
This will drop, recreate, migrate, and seed the database in one command.

---

## 👤 Admin Credentials

To access the admin dashboard:

- **URL:** http://localhost:3000/admin/login
- **Username:** `admin`
- **Password:** `admin123`

---

## 📂 Project Structure

```
278webapp2-AnkushRai/
├── app/
│   ├── controllers/
│   │   ├── products_controller.rb      # Product catalog & search
│   │   ├── cart_controller.rb          # Shopping cart
│   │   ├── orders_controller.rb        # Order management
│   │   └── admin/                      # Admin controllers
│   ├── models/
│   │   ├── product.rb                  # Product model with search
│   │   ├── order.rb                    # Order model
│   │   └── admin.rb                    # Admin authentication
│   ├── views/
│   │   ├── products/                   # Product catalog & detail views
│   │   ├── cart/                       # Cart view
│   │   ├── orders/                     # Checkout & confirmation
│   │   └── admin/                      # Admin dashboard
│   └── assets/
│       └── stylesheets/
│           └── application.css         # All styling
├── config/
│   ├── routes.rb                       # URL routing
│   └── database.yml                    # Database configuration
├── db/
│   ├── migrate/                        # Database migrations
│   └── seeds.rb                        # Sample data
└── README.md
```

---

## 🛍️ Features & Usage

### **1. Browse Products (Shopper View)**
- Visit the home page to see all products in a grid layout
- Each product shows image, name, description, price, and stock
- Click on any product card to view full details

### **2. Search Products**
- Use the search bar at the top of the catalog page
- Search works on both product names and descriptions
- Results update to show matching products

### **3. Product Detail Page**
- Click any product to see its individual page
- Shows large product image
- Full description
- Price and stock availability
- "Add to Cart" button (disabled if out of stock)

### **4. Shopping Cart**
- Add products from catalog or detail pages
- View cart by clicking "Cart" in navigation
- See all items with quantities and subtotals
- Remove individual items or clear entire cart
- Proceed to checkout when ready

### **5. Checkout & Orders**
- Enter customer information (name, email, address)
- Review order summary before placing order
- Receive order confirmation with order number
- View complete order details

### **6. Admin Dashboard**
- Login at `/admin/login` (credentials above)
- View all products in a table format
- Add new products with name, description, price, stock, and image URL
- Edit existing products
- Delete products
- Logout when done

---

## 🗃️ Database Schema

### Products Table
- `id` - Primary key
- `name` - Product name
- `description` - Product description
- `price` - Product price (decimal)
- `image_url` - URL to product image
- `stock` - Available quantity
- `created_at`, `updated_at` - Timestamps

### Orders Table
- `id` - Primary key
- `customer_name` - Customer name
- `customer_email` - Customer email
- `customer_address` - Shipping address
- `total` - Order total (decimal)
- `items_json` - JSON of cart items
- `created_at`, `updated_at` - Timestamps

### Admins Table
- `id` - Primary key
- `username` - Admin username
- `password_digest` - Encrypted password
- `created_at`, `updated_at` - Timestamps

---

## 🎨 Sample Products Included

The seed data includes 8 tech products:
1. Wireless Headphones - $89.99
2. Smart Watch - $199.99
3. Laptop Stand - $49.99
4. Mechanical Keyboard - $129.99
5. USB-C Hub - $39.99
6. Webcam HD - $79.99
7. Portable Charger - $34.99
8. Wireless Mouse - $29.99

All products include images from Unsplash and realistic descriptions.

---

## 🧪 Testing the Application

### Test Shopper Functions:
1. Browse products on home page
2. Search for "wireless" or "USB"
3. Click on a product to view details
4. Add items to cart from both views
5. View cart and verify quantities
6. Checkout and place an order
7. View order confirmation

### Test Admin Functions:
1. Login to admin dashboard
2. View all products
3. Add a new product with all fields
4. Edit an existing product
5. Delete a product
6. Logout

---

## 📝 Notes for Instructor

- **Session-based cart:** Cart data stored in Rails session (cookie-based)
- **Simple authentication:** Basic admin auth using bcrypt (not production-ready, as requested)
- **Search implementation:** SQL LIKE query on name and description fields
- **No JavaScript required:** All functionality works with standard Rails form helpers
- **Responsive design:** Mobile-friendly CSS Grid layout
- **Images:** Using external URLs (Unsplash) for simplicity
- **Database:** SQLite for easy setup and portability

---

## 🔄 Reset Database (if needed)

If you want to reset the database and reload sample data:

```bash
rails db:reset
```

This will drop, recreate, migrate, and seed the database.

---

## 📦 Creating Submission Zip

To create the submission file:

```bash
cd /Users/akrai/Documents/college_assignments/AWProgramming-278/Assignments
zip -r 278webapp2-AnkushRai.zip 278webapp2-AnkushRai -x "*/log/*" "*/tmp/*" "*.sqlite3"
```

This excludes log files, temp files, and the database (which will be regenerated from migrations).

---

## 🎓 Student Information

- **Student:** Ankush Rai
- **Course:** AWProgramming-278
- **Assignment:** Web App 2 - Online Store
- **Semester:** Fall 2025

---

## ✨ Assignment Checklist

- [x] Ruby on Rails application
- [x] Two views for product data (index + show)
- [x] Product catalog with data
- [x] Shopping cart add/remove/view
- [x] Order creation and confirmation
- [x] Admin authentication (login/logout)
- [x] Search by name and description
- [x] Clickable products with individual pages
- [x] "Add to Cart" on product detail page
- [x] Professional styling with CSS
- [x] Seed data for demo
- [x] README documentation

**All requirements completed! ✅**
