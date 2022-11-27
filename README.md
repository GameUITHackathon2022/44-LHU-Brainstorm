**ỨNG DỤNG GIẢI QUYẾT VẤN ĐỀ VỀ SẢN PHẨM THẢI CỦA CÁC NHÀ HÀNG, KHÁCH SẠN** 

1. **Mô tả đề tài**

Theo khảo sát, mỗi ngày các nhà hàng, khách sạn đều sẽ thải ra môi trường trung bình trên 100kg đồ ăn thừa từ sinh hoạt của khách hàng cũng như của nhà hàng, khách sạn, đồ ăn thừa lúc này mang hình thái của một sản phẩm thải không có lợi nhuận nào cho chủ nhân của nó. Cùng lúc đó, các nông trại nuôi gia súc, gia cầm có xu hướng đi gom đồ ăn thừa từ mọi nơi để làm thức ăn cho vật nuôi trong nông trại của họ. Nhưng các quy trình để lấy được đồ ăn thừa đều làm thủ công và thông qua các nơi đã quen biết. Cho nên, mức độ và số lượng sản phẩm thải từ các nhà hàng, khách sạn mỗi ngày đưa ra môi trường vẫn còn rất cao. Vì thế, ứng dụng sinh ra nhằm mục đích tạo sự kết nối “tin tưởng” cho các nhà hàng, khách sạn với nông trại giảm thiểu số sản phẩm thải đi ra môi trường bên ngoài. 

1. **Ứng dụng**
   1. **Chức năng tổng quan**

Ứng dụng tập trung giải quyết vấn đề về đồ ăn thừa thải ra hằng ngày từ các nhà hàng, khách sạn với biện pháp kết nối những nhà hàng, khách sạn này với các nông trại thu mua đồ ăn thừa cho gia súc trong nông trại. Ứng dụng cho phép đăng bài cung cấp sản phẩm thải cho nông trại theo kỳ hạn. Lúc này, nông trại sẽ nắm được thông tin của sản phẩm từ các nhà hàng, khách sạn và ứng dụng còn hỗ trợ tìm kiếm các nhà hàng, khách sạn gần đây để tạo sự thuận tiện trong việc vận chuyển cũng như liên kết giữa 2 bên.

Ngoài ra, các sản phẩm từ các nhà hàng, khách sạn sẽ được cung cấp trong 1 thời gian nhất định. Cho nên, để tạo sự ràng buộc, minh bạch nhưng dễ dàng trong việc ký kết “hợp đồng” đôi bên, ứng dụng sử dụng smart contract 1 ứng dụng nổi bật của blockchain để xây dựng cơ sở pháp lý cơ bản không thể sửa đổi cho việc tạo dựng liên kết giữa nhà hàng, khách sạn với nông trại.

1. **Phân tích chức năng** 

`	`**![](Aspose.Words.2b4f0990-7488-4b1e-b485-952c912f9442.001.png)**

Gồm có 2 đối tượng chính và 6 chức năng cho ứng dụng: Đăng nhập nhằm mục đích xác minh danh tính người dùng cũng như tính thực tế của các đối tượng tham gia. Đăng bán sản phẩm cho phép các nhà hàng, khách sạn được đăng ký cung cấp đồ ăn thừa của họ theo kỳ hạn. Đề xuất nhà hàng gần đây, xây dựng lên để cung cấp dịch vụ cho nông trại có thể tìm kiếm các nhà hàng, khách sạn một cách dễ dàng hơn. Sau khi đã tìm được nhà hàng, khách sạn, nông trại sẽ đặt thu mua sản phẩm theo kỳ hạn mà nông trại đó đưa ra, nếu được chấp thuận từ nhà hàng, thì ứng dụng sẽ tạo hợp đồng thông minh online cho nhà hàng, khách sạn này với nông trại đã đặt mua. Để củng cố thông tin và tạo sự tin tưởng, người dùng sẽ khởi tạo các thông tin cơ bản về nông trại hoặc nhà hàng, khách sạn của mình. Tạo hợp đồng liên kết là quá trình ghi lại hợp đồng tại blockchain tránh mọi trường hợp sửa đổi nhằm tạo sự ràng buộc cũng như là minh bạch.

1. **Giao diện người dùng**

`	`Trang chủ: Hiển thị danh sách sản phẩm và các nhà hàng, khách sạn gần nhất. 

`	`Trang thông tin sản phẩm: Hiển thị thông tin cơ bản như tên, ngày bắt đầu, loại sản phẩm, thông tin chủ sở hữu, các mối liên kết từ trước.

`	`Trang cá nhân: Cập nhật và hiển thị thông tin của người dùng (nhà hàng, khách sạn hoặc nông trại) cùng với các hình ảnh cập nhật từ người dùng nhằm tăng tính xác thực của người dùng khi tham gia vào ứng dụng. 

`	`Trang tìm kiếm nhà hàng khách sạn gần nhất: Hỗ trợ cho các nông trại tìm kiếm nhà hàng gần để đặt. 

