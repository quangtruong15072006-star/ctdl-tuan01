# Ôn Bài 07 — N24DCDT040

Mục tiêu: ôn lý thuyết và tự viết lại thuật toán bằng **Python hoặc Julia**.

1. Mở `N24DCDT040_Bai07_Template.html`, chọn ngôn ngữ rồi chọn bài.
2. Đọc ý chính và ba bước hướng dẫn; dự đoán kết quả ví dụ.
3. Mở hoặc sao chép khung code, thay TODO bằng thuật toán của mình.
4. Chạy tệp và ghi code, kết quả cùng giải thích ngắn vào bài làm.

Ví dụ chạy tại thư mục `Bai07`:

```powershell
python -X utf8 bai_tap/python/bai29.py
julia bai_tap/julia/bai29.jl
```

Mỗi bài có lệnh tương ứng ngay dưới code. Mỗi tệp độc lập, dữ liệu nhỏ được khai báo trong mã; không đọc CSV, tải dữ liệu, cài thư viện ngoài hoặc gọi tệp nguồn khác. Dòng TODO cố ý dừng bằng `NotImplementedError` / `error("TODO...")` để bạn tự viết thuật toán. Những ví dụ tính toán hoàn chỉnh có thể chạy ngay để đối chiếu.

Chỉ cần sửa tệp của bài được giao trong `bai_tap/python/` hoặc `bai_tap/julia/`. Chọn một ngôn ngữ; không cần làm cả hai. Python dùng chỉ số từ 0; Julia từ 1. Cây rỗng cao 0, lá cao 1; BST dùng khóa phân biệt và luôn gán lại gốc sau thao tác trả gốc mới.

HTML tự lưu theo MSSV trong trình duyệt. Bấm **Lưu bài làm** để tải JSON; **Mở bài làm** để khôi phục, hoặc **Xuất HTML** để nộp báo cáo. Word và Markdown chứa khung cả hai ngôn ngữ; đọc ngôn ngữ mình chọn. Khi dùng MSSV khác, đổi tên thư mục/báo cáo và nhập mã mới trong HTML.

Danh mục giữ các chủ đề câu 1–20, bài 21–53 và ba phần thực hành của bài giảng. Nhiệm vụ được rút gọn để học thuật toán trên ví dụ nhỏ; không yêu cầu thí nghiệm lớn, đo thời gian hoặc thu thập tập dữ liệu.

Cấu trúc dùng cho bản này:

```text
N24DCDT040/Bai07/
  N24DCDT040_Bai07_Template.html
  N24DCDT040_Bai07_BaoCao.docx
  N24DCDT040_Bai07_BaoCao.md
  README.md
  bai_tap/python/    # Mỗi bài một tệp tự chứa
  bai_tap/julia/     # Mỗi bài một tệp tự chứa
```
