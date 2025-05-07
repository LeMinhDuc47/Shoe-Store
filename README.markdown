# README - AdminHub: Quản lý Kho Giày

## Giới thiệu
AdminHub là một dashboard quản lý kho giày được phát triển bằng HTML, CSS và JavaScript. Phần **My Store** cung cấp các chức năng chính để quản lý danh sách giày, bao gồm:
- Hiển thị danh sách giày với thông tin chi tiết (tên, thương hiệu, kích cỡ, số lượng, màu sắc, thể loại).
- Xem chi tiết sản phẩm qua trang chi tiết.
- Xóa sản phẩm khỏi kho với xác nhận.
- Thêm sản phẩm mới thông qua form nhập liệu.

Dữ liệu được lưu trữ cục bộ bằng `localStorage` để đảm bảo tính bền vững giữa các phiên sử dụng.

### Hình ảnh minh họa
Dưới đây là các ảnh chụp giao diện chính của dự án:
- ![alt text](<Screenshot 2025-05-07 011757.png>) - Giao diện đăng nhập
- ![alt text](<Screenshot 2025-05-07 011946.png>)  - Giao diện đăng kí
- ![alt text](<Screenshot 2025-05-07 011924.png>) - danh sách đội ngũ phát triển
- ![alt text](<Screenshot 2025-05-07 011910.png>) - quản lí kho giày
## Chức năng chi tiết
### 1. Hiển thị danh sách giày
- **Mô tả**: Hiển thị danh sách giày trong kho dưới dạng lưới (grid) với các thẻ sản phẩm.
- **Thông tin hiển thị**:
  - Ảnh sản phẩm.
  - Tên giày (gradient màu).
  - Thương hiệu, kích cỡ, số lượng, màu sắc, thể loại.
  - Nút "Xóa" để xóa sản phẩm.
- **Tương tác**:
  - Nhấp vào thẻ sản phẩm (ngoại trừ nút "Xóa") để chuyển hướng đến trang chi tiết (`product-detail.html`) với thông tin đầy đủ.

### 2. Xem chi tiết sản phẩm
- **Mô tả**: Khi nhấp vào thẻ sản phẩm, người dùng được chuyển hướng đến `product-detail.html` với thông tin chi tiết được truyền qua URL parameters.
- **Thông tin truyền**:
  - ID, tên, thương hiệu, kích cỡ, số lượng, màu sắc, thể loại, ảnh, mô tả.
- **Lưu ý**: Trang `product-detail.html` cần được triển khai riêng để xử lý hiển thị.

### 3. Xóa giày
- **Mô tả**: Cho phép xóa một sản phẩm khỏi danh sách kho.
- **Quy trình**:
  1. Nhấp nút "Xóa" trên thẻ sản phẩm.
  2. Modal xác nhận (`#delete-product-modal`) hiện lên với nội dung "Bạn có chắc chắn muốn xóa sản phẩm này?".
  3. Nhấp "Xác Nhận" để xóa sản phẩm, cập nhật `inventory` trong `localStorage`, và render lại danh sách.
  4. Nhấp "Hủy", nút đóng (×), hoặc nhấp ra ngoài để hủy hành động.
- **Hiệu ứng**: Nút "Xóa" có màu đỏ, hover chuyển sang đỏ đậm.

### 4. Thêm giày
- **Mô tả**: Cho phép thêm một sản phẩm mới vào danh sách kho.
- **Quy trình**:
  1. Nhấp nút "Thêm Sản Phẩm" ở đầu danh sách.
  2. Modal (`#add-product-modal`) hiện lên với form nhập liệu:
     - Tên giày (text, bắt buộc).
     - Thương hiệu (text, bắt buộc).
     - Kích cỡ (number, bắt buộc).
     - Số lượng (number, bắt buộc).
     - Màu sắc (text, bắt buộc).
     - Thể loại (text, bắt buộc).
     - URL ảnh (text, bắt buộc).
     - Mô tả (textarea, bắt buộc).
  3. Nhấp "Lưu" để thêm sản phẩm mới vào `inventory` với ID tự tăng, cập nhật `localStorage`, render lại danh sách, và reset form.
  4. Nhấp "Hủy", nút đóng (×), hoặc nhấp ra ngoài để hủy hành động.
- **Hiệu ứng**: Nút "Thêm Sản Phẩm" có màu xanh, hover chuyển sang xanh đậm. Form có validation HTML5 (yêu cầu tất cả trường).
- ![alt text](<Screenshot 2025-05-07 011848.png>) - dashboard 
- ![alt text](<Screenshot 2025-05-07 011829.png>) - dashboard giao diện tối
## Yêu cầu hệ thống
- **Trình duyệt**: Chrome, Firefox, Edge hoặc các trình duyệt hiện đại khác.
- **File cần thiết**:
  - `dashboard.html`: Cấu trúc giao diện chính.
  - `dashboard.js`: Logic xử lý và tương tác.
  - `dashboard.css`: Định dạng giao diện.
  - Thư mục `img/`: Chứa ảnh sản phẩm (nếu sử dụng ảnh cục bộ).
- **Thư viện bên ngoài**: Boxicons (`bx`) được tích hợp qua CDN.

## Hướng dẫn cài đặt
1. Clone hoặc tải repository về máy.
2. Đảm bảo các file (`dashboard.html`, `dashboard.js`, `dashboard.css`) nằm cùng thư mục.
3. Nếu sử dụng ảnh sản phẩm cục bộ, đặt chúng trong thư mục `img/` và cập nhật đường dẫn trong `inventory` (trong `localStorage`) cho khớp.
4. Mở `dashboard.html` bằng trình duyệt hoặc chạy trên server cục bộ (ví dụ: dùng `Live Server` trong VS Code).

## Cấu trúc mã nguồn
### File chính
- **HTML**: Phần "My Store" được render động trong thẻ `<div id="store-products">` trong `#content main`. Nút "Thêm Sản Phẩm" và các modal được thêm bởi JavaScript.
- **CSS**:
  - Định dạng danh sách sản phẩm (`.store-products`, `.product-card`).
  - Định dạng nút "Thêm Sản Phẩm" (`.btn-add-product`).
  - Định dạng modal xóa (`#delete-product-modal`) và thêm sản phẩm (`#add-product-modal`).
- **JavaScript**:
  - `renderInventory()`: Hiển thị danh sách giày và xử lý sự kiện nhấp/xóa.
  - `setupAddProduct()`: Xử lý logic thêm sản phẩm mới.
  - Dữ liệu `inventory` trong `localStorage` được tổ chức như sau:
    ```json
    [
      {
        "id": 1,
        "shoeName": "Jordan",
        "brand": "Nike",
        "size": 42,
        "quantity": 50,
        "color": "Blue",
        "category": "Basketball",
        "image": "img/shoes1.png",
        "description": "High-performance basketball shoes with iconic design."
      }
    ]


## Hướng dẫn sử dụng
1. **Đăng nhập**: Đăng nhập vào hệ thống để truy cập dashboard (yêu cầu `currentUser` trong `localStorage`).
2. **Vào My Store**:
   - Nhấp vào mục "My Store" trong sidebar.
   - Danh sách giày sẽ hiển thị dưới dạng lưới với các thẻ sản phẩm.
3. **Xem chi tiết sản phẩm**:
   - Nhấp vào bất kỳ thẻ sản phẩm để xem chi tiết (chuyển hướng đến `product-detail.html`).
4. **Xóa giày**:
   - Nhấp nút "Xóa" trên thẻ sản phẩm.
   - Trong modal xác nhận, nhấp "Xác Nhận" để xóa hoặc "Hủy" để giữ lại.
5. **Thêm giày**:
   - Nhấp nút "Thêm Sản Phẩm".
   - Điền đầy đủ thông tin trong form (ví dụ: tên "Test Shoe", thương hiệu "Test", kích cỡ 40, số lượng 10, màu "Red", thể loại "Casual", URL ảnh "img/test.png", mô tả "Test description").
   - Nhấp "Lưu" để thêm sản phẩm hoặc "Hủy" để đóng form.
6. **Kiểm tra dữ liệu**:
   - Mở DevTools (F12) → tab Application → Local Storage để xem dữ liệu `inventory`.
   - Xác nhận danh sách giày cập nhật đúng sau khi thêm/xóa.

## Lưu ý
- **Ảnh sản phẩm**: Hiện tại, trường URL ảnh trong form thêm sản phẩm yêu cầu đường dẫn hợp lệ (cục bộ như `img/shoes1.png` hoặc URL online). Nếu sử dụng ảnh cục bộ, đảm bảo thư mục `img/` tồn tại.
- **Validation**: Form thêm sản phẩm sử dụng validation HTML5 cơ bản (bắt buộc điền). Để thêm validation chi tiết (ví dụ: kiểm tra định dạng URL, giới hạn kích cỡ), cần mở rộng mã.
- **Responsive**: Giao diện hỗ trợ responsive, tự động chuyển sang dạng cột trên màn hình nhỏ (dưới 576px).
- **Lỗi tiềm ẩn**:
  - Nếu modal không hiển thị, kiểm tra console để tìm lỗi JavaScript (có thể do xung đột ID hoặc thiếu file).
  - Nếu danh sách không cập nhật, kiểm tra `localStorage` và hàm `renderInventory()`.

## Tính năng mở rộng (tùy chọn)
- Thêm nút "Sửa" cho sản phẩm để chỉnh sửa thông tin trực tiếp trên "My Store".
- Thêm tìm kiếm/lọc sản phẩm theo tên, thương hiệu, hoặc thể loại.
- Tích hợp upload ảnh thay vì nhập URL.
- Thêm thông báo (toast) khi thêm/xóa thành công.
- Validation nâng cao (ví dụ: kiểm tra kích cỡ từ 35-45, số lượng không âm).
