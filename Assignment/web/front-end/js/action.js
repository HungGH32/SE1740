//// Lắng nghe sự kiện khi checkbox thay đổi
//const checkboxes = document.querySelectorAll('input[name="category"]');
//checkboxes.forEach(checkbox => {
//	checkbox.addEventListener('change', function() {
//		// Gọi hàm lọc sản phẩm
//		filterProducts();
//	});
//});
//
//// Hàm lọc sản phẩm
//function filterProducts() {
//	// Lấy giá trị của các checkbox đã chọn
//	const selectedCategories = Array.from(document.querySelectorAll('input[name="category"]:checked'))
//		.map(checkbox => checkbox.value);
//
//	// Thực hiện xử lý lọc sản phẩm dựa vào danh mục đã chọn
//	// Gửi giá trị danh mục (selectedCategories) đến server hoặc xử lý dữ liệu ngay tại đây
//
//	// Ví dụ: In ra danh sách danh mục đã chọn
//	console.log(selectedCategories);
//}