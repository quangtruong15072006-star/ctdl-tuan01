# ÔN LÝ THUYẾT VÀ VIẾT LẠI THUẬT TOÁN BÀI 07

MSSV: N24DCDT040

Họ tên: [Điền] · Lớp: [Điền] · Ngôn ngữ: [Python hoặc Julia]

Đọc lý thuyết, tự viết phần TODO rồi chạy ví dụ nhỏ. Mọi dữ liệu nằm ngay trong đề hoặc mã. Mỗi bài chỉ cần ghi cách làm, code và kết quả; chọn một ngôn ngữ để thực hiện.

## Câu 1 — Định nghĩa cây nhị phân và đệ quy

**Mục đích:** Nhận ra định nghĩa đệ quy của cây.

### Ôn lý thuyết

**Cây nhị phân**

Cây nhị phân hoặc rỗng, hoặc gồm gốc và hai cây con trái, phải. Hai cây con cũng là cây nhị phân và có thể rỗng. Vì vậy mỗi nút có thể có 0, 1 hoặc 2 con; vị trí trái và phải được phân biệt.

**Đệ quy**

Xử lý hai cây con là hai bài toán cùng loại nhưng nhỏ hơn. Hàm cần trường hợp cây rỗng để dừng, rồi ghép kết quả của hai con với gốc. Lời gọi đệ quy vẫn dùng ngăn xếp; nó không tự loại bỏ chi phí bộ nhớ.

### Ví dụ nhỏ

Cây có gốc P, con trái Q, cây con phải rỗng; Q là lá.

### Cách làm

1. Tách định nghĩa thành cây rỗng và cây có gốc.
2. Nêu bài toán trên hai cây con và điểm dừng.
3. Kiểm từng phát biểu bằng định nghĩa hoặc phản ví dụ.

### Tự kiểm tra

- Cây rỗng: Vẫn được xét trong định nghĩa; phép đếm trả 0.
- Hai cây: P có Q bên trái; P có Q bên phải: Hai cách bố trí được phân biệt.

Tại sao dùng cùng một hàm cho cả cây và cây con?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Lập luận / hình vẽ: [Điền]

## Câu 2 — Phân biệt các loại cây nhị phân

**Mục đích:** Phân biệt đủ, đầy, gần đầy và suy biến.

### Ôn lý thuyết

**Đủ và đầy**

Cây đủ có mỗi nút 0 hoặc 2 con. Cây đầy có mọi mức đầy, nên cây cao h có đúng 2^h−1 nút. “Đủ” kiểm số con từng nút; “đầy” kiểm số vị trí được dùng ở mọi mức.

**Gần đầy và suy biến**

Cây gần đầy chỉ có thể thiếu nút ở mức cuối, và các nút mức này dồn về trái. Cây suy biến có mỗi nút tối đa một con. Các tên không loại trừ nhau: cây đầy cũng đủ và gần đầy. Kiểm riêng từng tiêu chí.

### Ví dụ nhỏ

P có hai con Q và R; Q có hai lá S,T; R chưa có con.

### Cách làm

1. Đếm số con của từng nút.
2. Kiểm các mức và vị trí trống ở mức cuối.
3. Kết luận riêng cho từng loại cây.

### Tự kiểm tra

- P có hai lá Q,R: Đủ, đầy và gần đầy.
- P chỉ có con phải R: Không gần đầy; không đủ; suy biến.

Vì sao cây gần đầy lưu bằng mảng tiết kiệm ô trống?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Lập luận / hình vẽ: [Điền]

## Câu 3 — Chặn số nút và chiều cao

**Mục đích:** Hiểu chặn số nút và chiều cao ít nhất.

### Ôn lý thuyết

**Đếm theo mức**

Gốc ở mức 0, mức k có nhiều nhất 2^k nút vì mỗi nút có tối đa hai con. Cây cao h gồm các mức 0 đến h−1. Cộng giới hạn từng mức cho chặn số nút của cả cây.

```text
n ≤ 2^h − 1.
```

**Suy ra chiều cao**

Muốn chứa n nút, sức chứa phải ít nhất bằng n. Chọn h nguyên nhỏ nhất thoả bất đẳng thức, hoặc làm tròn lên log2(n+1). Đây là chiều cao ít nhất, chưa phải chiều cao chính xác của cây bất kỳ. Cây rỗng có chiều cao 0.

```text
h_min = ceil(log2(n+1)).
```

### Ví dụ nhỏ

Một cây có 9 nút; tìm chặn dưới của chiều cao.

### Cách làm

1. Chứng minh mức k có tối đa 2^k nút.
2. Cộng đúng các mức 0..h−1.
3. Tìm h nguyên nhỏ nhất đủ chứa n nút.

### Tự kiểm tra

- n = 0: Chiều cao ít nhất 0.
- n = 8: Chiều cao ít nhất 4.

Khi nào bất đẳng thức số nút trở thành đẳng thức?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Lập luận / hình vẽ: [Điền]

## Câu 4 — Chỉ số khi lưu cây bằng mảng

**Mục đích:** Dùng đúng chỉ số cha và con.

### Ôn lý thuyết

**Đánh từ 0**

Mảng lưu các vị trí cây theo mức. Python bắt đầu từ 0: con trái ở 2i+1, con phải ở 2i+2, cha ở (i−1)//2 với i>0. Gốc không có cha; không được xem phần tử cuối mảng là cha vì chỉ số −1.

**Đánh từ 1**

Julia bắt đầu từ 1: con trái ở 2i, con phải ở 2i+1, cha ở div(i,2) với i>1. Công thức chỉ cho vị trí; trước khi truy cập phải kiểm vị trí còn trong mảng. Khi đổi hệ chỉ số, đổi cả chỉ số đầu vào.

### Ví dụ nhỏ

Xét nút thứ tư trong thứ tự mức: chỉ số 3 ở Python, chỉ số 4 ở Julia.

### Cách làm

1. Ghi hệ chỉ số của tiểu ý.
2. Thế i vào ba công thức đúng hệ.
3. Kiểm riêng gốc và giới hạn mảng.

### Tự kiểm tra

- Gốc đánh từ 0: i = 0: Con ở 1 và 2; không có cha.
- Cùng vị trí: Python i = 2, Julia i = 3: Python: con 5,6; cha 0. Julia: con 6,7; cha 1.

Vì sao cùng một vị trí có hai bộ chỉ số khác nhau?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Lập luận / hình vẽ: [Điền]

## Câu 5 — Lưu cây suy biến bằng mảng

**Mục đích:** Thấy số ô mảng có thể khác số nút.

### Ôn lý thuyết

**Chuỗi suy biến**

Cây suy biến có mỗi nút tối đa một con. Trong mảng đánh từ 0, một bước đi phải làm chỉ số i thành 2i+2. Chỉ thêm một nút nhưng chỉ số có thể tăng nhanh và để lại nhiều vị trí trống ở giữa.

**Số ô cần dùng**

Với mảng đánh từ 0, số ô tối thiểu bằng chỉ số lớn nhất cộng 1. Không lấy số nút làm số ô. Cây gần đầy dùng vị trí liên tiếp nên phù hợp mảng; cây nhiều nhánh thiếu thường thuận tiện hơn khi dùng liên kết.

```text
số ô = chỉ số lớn nhất + 1.
```

### Ví dụ nhỏ

Chuỗi 3 nút P→R→S, mỗi bước là con phải; mảng đánh từ 0.

### Cách làm

1. Ghi chỉ số gốc và tính từng bước đi phải.
2. Lấy chỉ số lớn nhất cộng 1 nếu đánh từ 0.
3. So số ô với số nút để giải thích lãng phí.

### Tự kiểm tra

- Một nút, gốc ở 0: Cần 1 ô.
- Hai nút nối bằng con trái, đánh từ 0: Chỉ số 0,1; cần 2 ô.

Nếu chuỗi luôn đi trái, cách tính chỉ số thay đổi thế nào?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Lập luận / hình vẽ: [Điền]

## Câu 6 — Ba cách duyệt và giải phóng bộ nhớ

**Mục đích:** Nhớ thứ tự duyệt và phụ thuộc khi xoá cây.

### Ôn lý thuyết

**Ba phép duyệt**

Duyệt trước xử lý gốc, trái, phải; duyệt giữa xử lý trái, gốc, phải; duyệt sau xử lý trái, phải, gốc. Mỗi cây con áp dụng lại cùng quy tắc. Cây rỗng không ghi giá trị; một nút lá xuất hiện đúng một lần.

**Giải phóng cây**

Muốn xử lý bộ nhớ của các con phải còn giữ được liên kết tới chúng. Vì vậy xét thứ tự phù hợp với phụ thuộc giữa gốc và cây con. Duyệt sau không có nghĩa là giá trị giảm dần; thứ tự này dựa trên cấu trúc cây.

### Ví dụ nhỏ

Cây gốc 9, con trái 4 có con phải 6, con phải của gốc là 13.

### Cách làm

1. Chép quy tắc trước/giữa/sau.
2. Lần vết từng cây con theo cùng quy tắc.
3. Giải thích thứ tự xử lý khi còn cần liên kết tới con.

### Tự kiểm tra

- Cây một nút Z: Ba dãy đều [Z].
- Gốc M, hai lá L,R: Trước [M,L,R]; giữa [L,M,R]; sau [L,R,M].

Một dãy duyệt có cho biết hình dạng cây nếu không có thông tin khác không?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Lập luận / hình vẽ: [Điền]

## Câu 7 — Điều kiện của cây nhị phân tìm kiếm

**Mục đích:** Kiểm điều kiện BST trên toàn bộ cây con.

### Ôn lý thuyết

**Định nghĩa BST**

Mọi giá trị trong cây con trái nhỏ hơn gốc, mọi giá trị trong cây con phải lớn hơn gốc; hai cây con cũng phải thoả điều kiện ấy. Chỉ so gốc với hai con trực tiếp chưa đủ, vì hậu duệ còn chịu cận của tổ tiên.

**Tìm kiếm**

Khi tìm x, nhỏ hơn gốc thì chỉ sang trái, lớn hơn thì chỉ sang phải. Thuật toán bỏ nhánh còn lại nhờ định nghĩa BST. Nếu cây sai, nó có thể bỏ qua một giá trị vẫn tồn tại. Lần vết phải giữ đúng luật thuật toán.

### Ví dụ nhỏ

Gốc 18; con trái 7 có con phải 22; con phải gốc là 26. Tìm 22 theo thuật toán BST.

### Cách làm

1. Kiểm giá trị với cận của mọi tổ tiên.
2. Tìm nút vi phạm hoặc xác nhận toàn cây.
3. Lần vết tìm kiếm đúng luật rẽ trái/phải.

### Tự kiểm tra

- Gốc 18, trái 7, phải 26; 7 có con phải 11: Không có vi phạm ở nút 11.
- Gốc 18, trái 7 có con phải 22: Vi phạm ở 22.

Thuật toán dựa vào bảo đảm nào để bỏ cây con đối diện?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Lập luận / hình vẽ: [Điền]

## Câu 8 — Chứng minh dãy duyệt giữa tăng dần

**Mục đích:** Tập chứng minh bằng quy nạp trên cây.

### Ôn lý thuyết

**Dãy ghép**

Duyệt giữa ghép dãy của cây trái, giá trị gốc và dãy của cây phải. Giả thiết quy nạp cho hai cây nhỏ hơn bảo đảm mỗi dãy con tăng. Còn phải kiểm hai chỗ nối; chỉ biết hai dãy con tăng chưa đủ.

**Điều kiện nối**

Định nghĩa BST bảo đảm mọi phần tử cây trái nhỏ hơn gốc và mọi phần tử cây phải lớn hơn gốc. Kết hợp điều kiện nối với giả thiết quy nạp để kết luận dãy ghép tăng. Cơ sở là cây rỗng hoặc cây chỉ một nút.

### Ví dụ nhỏ

Hai dãy cây con đã tăng: trái [2,5], gốc 8, phải [11,14].

### Cách làm

1. Nêu cơ sở cây rỗng hoặc một nút.
2. Áp dụng giả thiết quy nạp cho hai cây con.
3. Kiểm hai chỗ nối với gốc bằng định nghĩa BST.

### Tự kiểm tra

- Một nút 8: Dãy [8] tăng theo nghĩa không có cặp sai thứ tự.
- Khối trái [2,10], gốc 8, khối phải [11,14]: Không thể kết luận dãy ghép tăng.

Giả thiết quy nạp đã bảo đảm phần nào và còn thiếu phần nào?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Lập luận / hình vẽ: [Điền]

## Câu 9 — Ba trường hợp xoá nút

**Mục đích:** Phân loại xoá nút và hiểu vai trò kế vị.

### Ôn lý thuyết

**Ba trường hợp**

Nút lá được thay bằng cây rỗng. Nút một con được thay bằng cây con duy nhất. Nút hai con dùng nhỏ nhất trong cây phải làm kế vị, chép giá trị rồi xoá vị trí cũ của kế vị. Phân loại theo cây hiện tại.

**Kế vị**

Kế vị được tìm bằng đi phải một bước rồi đi trái tới hết. Nó không có con trái, nhưng có thể có con phải. Vì vậy xoá vị trí cũ chỉ còn trường hợp lá hoặc một con. Luôn nối lại gốc cây con trả về.

### Ví dụ nhỏ

BST gốc 24, trái 10, phải 35; 35 có trái 29; 29 có phải 31. Xoá gốc 24.

### Cách làm

1. Tìm nút và đếm con trên cây hiện tại.
2. Nếu hai con, tìm kế vị và xoá vị trí cũ.
3. Vẽ lại liên kết và ghi duyệt trước.

### Tự kiểm tra

- Xoá lá 10 khỏi gốc 24 có trái 10: Liên kết trái của 24 thành rỗng.
- Nút cần xoá có hai con; kế vị có con phải: Giữ con phải bằng nối liên kết, không làm mất nó.

Vì sao kế vị không có con trái nhưng có thể có con phải?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Lập luận / hình vẽ: [Điền]

## Câu 10 — Gốc trả về từ hàm chèn

**Mục đích:** Hiểu vì sao phải nhận gốc trả về.

### Ôn lý thuyết

**Chèn vào vị trí rỗng**

Hàm chèn nhận gốc cây con và trả gốc sau thao tác. Nếu đầu vào rỗng, nó tạo nút mới rồi trả nút. Bên gọi phải gán nút đó vào liên kết con hoặc biến gốc; tạo được nút chưa có nghĩa là nối được nút.

**Gán lại liên kết**

Viết g.trái = chèn(g.trái,x), g.phải = chèn(g.phải,x) theo hướng đã chọn. Cùng nguyên tắc áp dụng cho xoá và quay, vì gốc cây con có thể đổi. Đừng bỏ giá trị trả về hoặc cho rằng hàm tự biết và sửa nút cha.

### Ví dụ nhỏ

Gốc 16 có cây con trái rỗng; cần chèn 5.

### Cách làm

1. Ghi liên kết trước khi gọi chèn.
2. Theo dõi gốc cây con được trả về.
3. Kiểm bên gọi có gán lại liên kết hoặc root không.

### Tự kiểm tra

- root rỗng, gọi insert nhưng không gán root: root của bên gọi vẫn rỗng.
- Gán root = insert(root,x) với cây rỗng: root nhận nút mới.

Ở thao tác xoá một nút có một con, gốc trả về là nút nào?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Lập luận / hình vẽ: [Điền]

## Câu 11 — Cây tìm kiếm thoái hoá

**Mục đích:** Liên hệ thứ tự chèn với chiều cao BST.

### Ôn lý thuyết

**Thoái hoá**

Chèn tăng dần vào BST thường rỗng làm mỗi giá trị mới đi phải đến cuối, tạo một chuỗi. Chèn giảm dần tạo chuỗi trái. Cây vẫn thoả BST nhưng chiều cao có thể bằng số nút; tính chất tìm kiếm không tự bảo đảm cân bằng.

**Chi phí**

Tìm kiếm và chèn đi trên một đường nên phụ thuộc chiều cao h. Khi cây thành chuỗi, đường này có thể dài n. AVL dùng quay để giữ chiều cao cỡ log n. Dữ liệu đã sắp xếp có thể xuất hiện bình thường, không chỉ khi cố tạo ca xấu.

```text
BST thường O(h); chuỗi có h=n.
```

### Ví dụ nhỏ

Chèn [2,4,6,8] vào BST thường rỗng.

### Cách làm

1. Vẽ cây sau từng giá trị chèn.
2. Đếm chiều cao và đường tìm dài nhất.
3. Liên hệ h với chi phí và so với AVL.

### Tự kiểm tra

- Chèn [8,6,4,2] vào BST thường: Chuỗi con trái, chiều cao 4.
- Chèn [6,2,8]: Gốc 6 có hai lá, chiều cao 2.

Cần thông tin gì ngoài số nút để dự đoán chi phí tìm BST?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Lập luận / hình vẽ: [Điền]

## Câu 12 — Hệ số cân bằng và cây AVL

**Mục đích:** Tính hệ số cân bằng từ chiều cao hai con.

### Ôn lý thuyết

**Chiều cao**

Cây rỗng cao 0; một nút cao 1. Nút trong cao 1 cộng chiều cao lớn hơn của hai cây con. Tính từ lá lên để có dữ liệu con trước khi tính cha; không dùng số nút cây con thay cho chiều cao.

```text
h=1+max(h_trái,h_phải).
```

**Điều kiện AVL**

Hệ số cân bằng bằng chiều cao trái trừ chiều cao phải. Dương là lệch trái, âm là lệch phải. AVL là BST mà mọi nút có hệ số −1,0 hoặc 1. Muốn tìm nút vi phạm phải kiểm cả cây, không chỉ kiểm gốc.

```text
bf=h_trái−h_phải.
```

### Ví dụ nhỏ

Cây gốc 12, con trái 7; 7 có trái 2; các liên kết khác rỗng.

### Cách làm

1. Tính chiều cao từ lá lên.
2. Lấy chiều cao trái trừ phải tại mỗi nút.
3. Đánh dấu mọi nút có |bf|>1.

### Tự kiểm tra

- Lá có hai cây con rỗng: Chiều cao 1, hệ số 0.
- Cao trái 1, cao phải 3: Hệ số −2, vi phạm AVL.

Nếu gốc có hệ số 0, có thể khẳng định cả cây AVL chưa?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Lập luận / hình vẽ: [Điền]

## Câu 13 — Phép quay và tính chất cây tìm kiếm

**Mục đích:** Theo dõi liên kết trước và sau phép quay.

### Ôn lý thuyết

**Quay phải**

Gọi y là gốc cũ, x là con trái của y. Quay phải đưa x lên và cho y làm con phải của x. Cây con phải cũ của x được chuyển sang bên trái y. Cần lưu cây giữa trước khi ghi đè liên kết.

**Giữ BST**

Cây giữa chứa giá trị nằm giữa x và y nên phù hợp cả vị trí cũ và mới. Trước và sau quay, dãy duyệt giữa đều là A,x,B,y,C. Chỉ thay một số liên kết, không duyệt toàn bộ cây giữa; phép quay có chi phí O(1).

### Ví dụ nhỏ

y=30; con trái x=12 có trái 5, phải 19; con phải của y là 48.

### Cách làm

1. Gắn tên gốc cũ, con và cây giữa.
2. Vẽ các liên kết mới, giữ nguyên cây giữa.
3. So dãy duyệt giữa trước và sau.

### Tự kiểm tra

- B rỗng trong phép quay phải: y.trái trở thành rỗng.
- B có nhiều nút: Chuyển nguyên cây B, giữ các liên kết bên trong nó.

Vì sao B đúng ở cả vị trí cũ và vị trí mới?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Lập luận / hình vẽ: [Điền]

## Câu 14 — Bốn tình huống mất cân bằng

**Mục đích:** Nhận diện bốn tình huống mất cân bằng.

### Ôn lý thuyết

**Hai hướng**

Dấu hệ số cho biết nút lệch trái hay phải. Tiếp đó xem nút mới nằm phía nào của con thuộc phía lệch. Hai hướng tạo tên Trái–Trái, Phải–Phải, Trái–Phải hoặc Phải–Trái. Không chọn phép quay chỉ dựa vào dấu hệ số.

**Phép xử lý**

Trái–Trái quay phải; Phải–Phải quay trái. Trái–Phải quay trái ở con trái rồi quay phải tại nút lệch; Phải–Trái xử lý đối xứng. Sau xử lý, kiểm lại BST và chiều cao. Lệch phía trong cần hai phép quay theo đúng thứ tự.

### Ví dụ nhỏ

Chèn [36,12,24] vào AVL rỗng.

### Cách làm

1. Vẽ cây ngay sau chèn, chưa quay.
2. Xác định hai hướng ở nút mất cân bằng.
3. Thực hiện phép quay theo bảng 7.4 và kiểm lại.

### Tự kiểm tra

- Chèn [36,24,12]: Tình huống Trái–Trái, dùng quay phải.
- Chèn [12,36,24]: Tình huống Phải–Trái, quay phải ở con phải rồi quay trái.

Vì sao quay đơn không đủ cho lệch phía trong?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Lập luận / hình vẽ: [Điền]

## Câu 15 — Thứ tự cập nhật chiều cao

**Mục đích:** Cập nhật chiều cao theo phụ thuộc mới.

### Ôn lý thuyết

**Dữ liệu lưu trong nút**

AVL lưu chiều cao để tính hệ số nhanh. Sau khi thay liên kết, chiều cao cũ có thể sai. Công thức chiều cao cha dùng chiều cao hai con, nên dữ liệu con phải đúng trước. Hình cây đúng chưa bảo đảm giá trị h lưu trong nút đúng.

**Thứ tự sau quay**

Sau quay phải, gốc cũ y đi xuống làm con của gốc mới x. Cập nhật y trước rồi x; quay trái áp dụng nguyên tắc đối xứng. Nếu cập nhật x trước, nó có thể đọc h cũ của y và giữ lỗi cho các thao tác sau.

### Ví dụ nhỏ

Trước quay phải: y=12, con trái x=7, 7 có trái 3; h(12)=3, h(7)=2.

### Cách làm

1. Vẽ quan hệ cha/con sau quay.
2. Tính chiều cao nút đi xuống trước.
3. Cập nhật nút đi lên và đối chiếu dữ liệu lưu.

### Tự kiểm tra

- Nút y thành lá sau quay: Chiều cao mới của y phải là 1.
- Quay có cây giữa không rỗng: Tính h(y) theo các con mới, rồi mới tính h(x).

Có thể phát hiện lỗi chiều cao bằng cách kiểm nào ngoài hình cây?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Lập luận / hình vẽ: [Điền]

## Câu 16 — Tính chất đống và cây tìm kiếm

**Mục đích:** Phân biệt tính chất đống với tính chất BST.

### Ôn lý thuyết

**Đống cực đại**

Đống có hình gần đầy và mỗi cha không nhỏ hơn từng con. Giá trị lớn nhất ở gốc. Không có yêu cầu con trái nhỏ hơn con phải, cũng không có thứ tự giữa mọi giá trị của hai cây con. Kiểm từng cặp cha–con tồn tại.

**BST**

BST yêu cầu toàn cây trái nhỏ hơn nút, toàn cây phải lớn hơn nút. Duyệt giữa BST cho tăng dần; đống không có bảo đảm này. Hai cấu trúc phục vụ thao tác khác nhau, nên không thay điều kiện đống bằng điều kiện BST khi kiểm hình.

### Ví dụ nhỏ

Mảng đống cực đại [28,15,23,4,11], đánh từ 0.

### Cách làm

1. Kiểm từng cặp cha–con theo tính chất đống.
2. Kiểm toàn cây con theo tính chất BST.
3. Nếu nói về dãy giữa, tính dãy để đối chiếu.

### Tự kiểm tra

- Mảng [9,4,7]: Là đống max; 7 là con phải và nhỏ hơn gốc nên không là BST.
- Mảng mức [6,3,8]: Là BST nhưng không là đống max.

Đống có thể tìm một giá trị tuỳ ý bằng cách rẽ trái/phải như BST không?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Lập luận / hình vẽ: [Điền]

## Câu 17 — Độ phức tạp thao tác trên đống

**Mục đích:** Đếm thao tác đống theo đường gốc–lá.

### Ôn lý thuyết

**Đẩy lên và đẩy xuống**

Thêm đặt cuối mảng rồi đẩy lên qua cha. Lấy cực đại đưa cuối lên gốc rồi đẩy xuống qua con lớn hơn. Mỗi bước chỉ chuyển một mức. Đống gần đầy nên đường gốc–lá có độ dài cỡ log n, không cần duyệt cả mức.

**Đếm số đổi chỗ**

Khi thêm, vị trí mới bằng số phần tử cũ nếu đánh từ 0. Lặp công thức cha tới gốc và đếm số cạnh; đó là chặn số lần đổi chỗ. Số nút trên đường nhiều hơn số cạnh một đơn vị. Dừng sớm thì số thực tế ít hơn.

```text
O(log n).
```

### Ví dụ nhỏ

Đống đang có 14 phần tử; thêm phần tử thứ 15, đánh từ 0.

### Cách làm

1. Xác định vị trí mới và hệ chỉ số.
2. Đi tới gốc bằng công thức cha, đếm số cạnh.
3. Phân biệt chặn tối đa với số đổi chỗ thực tế.

### Tự kiểm tra

- Đống có 1 phần tử trước thêm: Vị trí mới 1, đường 1→0: nhiều nhất 1 đổi chỗ.
- Giá trị mới không lớn hơn cha: Không đổi chỗ dù đường lên có thể dài.

Số đổi chỗ thực tế có luôn bằng chặn tối đa không?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Lập luận / hình vẽ: [Điền]

## Câu 18 — Gini của nhóm thuần nhất và chia đều

**Mục đích:** Hiểu Gini từ tỉ lệ nhãn.

### Ôn lý thuyết

**Công thức**

Gini của nhóm bằng 1 trừ tổng bình phương tỉ lệ từng nhãn. Tỉ lệ là số đếm lớp chia tổng mẫu, không phải số đếm chưa chuẩn hoá. Các tỉ lệ cộng thành 1; giá trị thuộc tính không trực tiếp xuất hiện trong Gini của nhóm.

```text
Gini=1−Σp_i^2.
```

**Ý nghĩa**

Nhóm thuần nhất có một nhãn, nên Gini bằng 0. Với hai lớp, chỉ số lớn nhất là 0,5 khi hai tỉ lệ bằng nhau. Nhóm càng ít lẫn nhãn thì chỉ số càng nhỏ. Chỉ số nhóm khác chỉ số có trọng số của cả phép chia.

### Ví dụ nhỏ

Nhóm gồm 2 mẫu nhãn A và 1 mẫu nhãn B.

### Cách làm

1. Đếm nhãn và tính tỉ lệ.
2. Bình phương, cộng rồi lấy 1 trừ tổng.
3. Kiểm khoảng Gini và giải thích độ lẫn nhãn.

### Tự kiểm tra

- 4 mẫu cùng nhãn A: Gini = 0.
- 2 mẫu A, 2 mẫu B: Gini = 0,5.

Hai nhóm khác kích thước nhưng cùng tỉ lệ nhãn có cùng Gini không?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Lập luận / hình vẽ: [Điền]

## Câu 19 — Kết quả minimax khi cắt tỉa

**Mục đích:** Giải thích cắt tỉa không đổi kết quả gốc.

### Ôn lý thuyết

**Các cận**

MAX chọn lớn nhất, MIN chọn nhỏ nhất. α là mức MAX đã bảo đảm; β là mức MIN đã bảo đảm. Sau khi xét một con, cập nhật cận đúng lượt. Khi β≤α, phần còn lại của nhánh không thể thay lựa chọn đã có ở tổ tiên.

**Cắt chính xác**

Alpha-beta không thay lá chưa xét bằng ước lượng. Nó dừng khi có đủ bất đẳng thức để chứng minh nhánh không ảnh hưởng kết quả gốc. Giá trị trả về từ một nhánh bị cắt có thể chỉ là cận, không phải giá trị minimax chính xác của nhánh ấy.

```text
Cắt khi β≤α.
```

### Ví dụ nhỏ

Gốc MAX có hai MIN: nhánh trái [4,9], nhánh phải [2,8]; xét trái trước.

### Cách làm

1. Ghi lựa chọn đã bảo đảm của tổ tiên.
2. Cập nhật cận khi gặp con mới.
3. Dùng β≤α giải thích phần chưa xét không đổi kết quả gốc.

### Tự kiểm tra

- α=4, nút MIN vừa có β=6: Chưa cắt theo điều kiện β≤α.
- α=4, nút MIN vừa có β=4 và còn con: Có thể cắt.

Tại sao không cần biết các lá bị cắt có giá trị nào?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Lập luận / hình vẽ: [Điền]

## Câu 20 — Thứ tự nước đi và hiệu quả cắt tỉa

**Mục đích:** Tách kết quả minimax khỏi số lá được xét.

### Ôn lý thuyết

**Thứ tự nước đi**

Hoán vị các con không đổi min/max, nên cùng cây có cùng giá trị minimax. Nhưng thứ tự gặp các giá trị làm cận mạnh sớm hoặc muộn. MAX ưu tiên giá trị lớn; MIN ưu tiên giá trị nhỏ để có cơ hội cắt sớm các nhánh sau.

**Cắt sớm hay muộn**

Nếu điều kiện cắt xuất hiện ở con cuối thì không còn con chưa xét để bỏ. Khi so thứ tự, đếm lá thật sự được xét, không tính lá bị cắt. Giữ nguyên tập giá trị và cấu trúc, rồi so riêng giá trị gốc với số lá xét.

### Ví dụ nhỏ

Gốc MAX, MIN trái [4,9]; MIN phải có cùng hai lá 2,8 nhưng đổi thứ tự.

### Cách làm

1. Giữ cùng cây, thay đúng thứ tự đề hỏi.
2. Lần vết cập nhật cận và đánh dấu lá đã xét.
3. So số lá xét, kiểm giá trị gốc vẫn bằng nhau.

### Tự kiểm tra

- Đổi thứ tự hai lá của một MIN, không đổi tập giá trị: Giá trị MIN giữ nguyên.
- Điều kiện cắt chỉ xuất hiện ở lá cuối: Không tiết kiệm lá trong nhánh đó.

Ở một nút MIN, “nước tốt” có giá trị lớn hay nhỏ?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Lập luận / hình vẽ: [Điền]

## Bài 21 — Dựng BST, ba dãy duyệt và chiều cao

**Mục đích:** Dựng BST, ghi ba dãy duyệt và chiều cao.

### Ôn lý thuyết

**Chèn**

Giá trị nhỏ hơn nút hiện tại đi trái, lớn hơn đi phải. Gặp cây rỗng thì tạo nút và trả gốc mới. Phải gán lại liên kết con hoặc root. Không sắp xếp dãy trước khi chèn vì thứ tự quyết định hình cây.

**Duyệt và chiều cao**

Trước: gốc–trái–phải; giữa: trái–gốc–phải; sau: trái–phải–gốc. Cây rỗng không góp giá trị. Chiều cao rỗng 0, lá 1; nút trong cao 1 cộng chiều cao lớn hơn của hai con. Đếm số nút trên đường, không đếm cạnh.

```text
h=1+max(h_trái,h_phải).
```

### Ví dụ nhỏ

Khởi động bằng ba số đầu của bài 21: [45,15,79]. Sau khi kiểm đúng, dùng đầy đủ dãy được ghi trong đề.

### Cách làm

1. Chèn từng số theo thứ tự và vẽ liên kết.
2. Tự viết duyệt sau tại TODO, ghi ba dãy và tính chiều cao.
3. Kiểm khung bằng dãy nhỏ rồi thay bằng đầy đủ dãy đề.

### Khung code Python

```python
class Node:
    def __init__(self, value):
        self.value = value
        self.left = None
        self.right = None

def insert(g, x):
    if g is None:
        return Node(x)
    if x < g.value:
        g.left = insert(g.left, x)
    elif x > g.value:
        g.right = insert(g.right, x)
    return g

def preorder(g):
    if g is None:
        return []
    return [g.value] + preorder(g.left) + preorder(g.right)

def inorder(g):
    if g is None:
        return []
    return inorder(g.left) + [g.value] + inorder(g.right)

def height(g):
    if g is None:
        return 0
    return 1 + max(height(g.left), height(g.right))

# TODO: viết postorder(g), ghép trái + phải + [g.value].
root = None
for x in [45, 15, 79]:
    root = insert(root, x)
print(preorder(root), inorder(root), height(root))
# Sau TODO, gọi print(postorder(root)).

```

- None là cây rỗng; + nối các list. Khung đã có chèn, duyệt trước/giữa và chiều cao.
- Python đánh từ 0 khi dùng list; cây này dùng left/right nên không dùng công thức chỉ số con.

```text
python -X utf8 bai_tap/python/bai21.py
```

### Khung code Julia

```julia
mutable struct Node
    value::Int
    left::Any
    right::Any
end
Node(v) = Node(v, nothing, nothing)

function insert(g, x)
    g === nothing && return Node(x)
    if x < g.value
        g.left = insert(g.left, x)
    elseif x > g.value
        g.right = insert(g.right, x)
    end
    return g
end

function preorder(g)
    g === nothing && return Int[]
    return vcat([g.value], preorder(g.left), preorder(g.right))
end

function inorder(g)
    g === nothing && return Int[]
    return vcat(inorder(g.left), [g.value], inorder(g.right))
end
function height(g)
    g === nothing && return 0
    return 1 + max(height(g.left), height(g.right))
end
# TODO: viết postorder(g), nối trái + phải + [g.value].
function demo()
    root = nothing
    for x in [45, 15, 79]
        root = insert(root, x)
    end
    println(preorder(root), " ", inorder(root), " ", height(root))
    # Sau TODO, gọi println(postorder(root)).
end
demo()

```

- nothing là cây rỗng; vcat nối các vector. Các khối đóng bằng end.
- Julia vector đánh từ 1; khung cây dùng liên kết. demo() giữ biến root trong phạm vi hàm.

```text
julia bai_tap/julia/bai21.jl
```

### Tự kiểm tra

- Cây rỗng: Ba dãy rỗng, chiều cao 0.
- Dãy khởi động [45,15,79]: Giữa [15,45,79]; cao 2; sau TODO, dãy sau [15,79,45].

Vì sao đổi thứ tự chèn có thể đổi chiều cao?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 22 — Xoá lần lượt ba nút BST

**Mục đích:** Xoá đúng trường hợp trên cây hiện tại.

### Ôn lý thuyết

**Phân loại**

Nút lá được thay bằng cây rỗng; nút một con được thay bằng con đó. Với hai con, dùng nhỏ nhất của cây phải làm kế vị, chép giá trị rồi xoá vị trí cũ. Mỗi lần xoá phải dùng cây đã nhận sau lần trước.

**Nối lại cây**

Hàm xoá trả gốc cây con mới, có thể rỗng hoặc là một con. Cha và biến root phải nhận kết quả. Kế vị không có con trái nhưng có thể có con phải; không được làm mất con đó. Kiểm tập giá trị còn lại bằng duyệt giữa.

### Ví dụ nhỏ

Khung nhỏ lấy từ dãy bài 21: chèn [45,15,79,12,38], xoá 12. Sau đó áp dụng đủ cây và chuỗi xoá của bài 22.

### Cách làm

1. Tìm nút cần xoá và đếm số con hiện tại.
2. Hoàn thành nhánh hai con tại TODO, nối gốc trả về.
3. Vẽ cây sau từng lần và kiểm giá trị còn lại.

### Khung code Python

```python
class Node:
    def __init__(self, value):
        self.value = value
        self.left = None
        self.right = None

def insert(g, x):
    if g is None:
        return Node(x)
    if x < g.value:
        g.left = insert(g.left, x)
    elif x > g.value:
        g.right = insert(g.right, x)
    return g

def preorder(g):
    if g is None:
        return []
    return [g.value] + preorder(g.left) + preorder(g.right)

def delete(g, x):
    if g is None:
        return None
    if x < g.value:
        g.left = delete(g.left, x)
    elif x > g.value:
        g.right = delete(g.right, x)
    else:
        if g.left is None:
            return g.right
        if g.right is None:
            return g.left
        # TODO: tìm kế vị bên phải, chép giá trị, xoá vị trí kế vị cũ.
        raise NotImplementedError('TODO: xoá nút hai con')
    return g

root = None
for x in [45, 15, 79, 12, 38]:
    root = insert(root, x)
root = delete(root, 12)
print(preorder(root))

```

- Khung đã xử lý tìm vị trí, lá và một con; chỉ nhánh hai con còn TODO.
- Gán lại root và left/right giữ gốc mới. None biểu diễn rỗng; không cần chỉ số mảng.

```text
python -X utf8 bai_tap/python/bai22.py
```

### Khung code Julia

```julia
mutable struct Node
    value::Int
    left::Any
    right::Any
end
Node(v) = Node(v, nothing, nothing)

function insert(g, x)
    g === nothing && return Node(x)
    if x < g.value
        g.left = insert(g.left, x)
    elseif x > g.value
        g.right = insert(g.right, x)
    end
    return g
end

function preorder(g)
    g === nothing && return Int[]
    return vcat([g.value], preorder(g.left), preorder(g.right))
end

function delete_node(g, x)
    g === nothing && return nothing
    if x < g.value
        g.left = delete_node(g.left, x)
    elseif x > g.value
        g.right = delete_node(g.right, x)
    else
        g.left === nothing && return g.right
        g.right === nothing && return g.left
        # TODO: tìm kế vị, chép giá trị rồi xoá kế vị bên phải.
        error("TODO: xoá nút hai con")
    end
    return g
end
function demo()
    root = nothing
    for x in [45, 15, 79, 12, 38]
        root = insert(root, x)
    end
    root = delete_node(root, 12)
    println(preorder(root))
end
demo()

```

- nothing là rỗng; && return trả ngay khi điều kiện đúng. Nhánh hai con còn TODO.
- Mỗi thao tác gán lại gốc trả về. Cây dùng liên kết; Julia vector đầu vào đánh từ 1.

```text
julia bai_tap/julia/bai22.jl
```

### Tự kiểm tra

- Cây chỉ có nút 45, xoá 45: Cây rỗng.
- Chèn [45,15,79,12,38], xoá 15 sau TODO: Dùng kế vị 38; duyệt trước [45,38,12,79].

Vì sao kế vị có thể có một con nhưng không có con trái?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 23 — Khôi phục cây từ hai dãy duyệt

**Mục đích:** Khôi phục cây từ hai dãy duyệt.

### Ôn lý thuyết

**Tìm gốc và chia đoạn**

Phần tử đầu của dãy trước là gốc. Trong dãy giữa, các phần tử trước gốc thuộc cây trái, phần sau thuộc cây phải. Với giá trị không lặp, số phần tử bên trái cho biết phải lấy bao nhiêu phần tử của dãy trước cho cây trái.

**Đệ quy**

Khôi phục từng cặp đoạn trái/phải bằng cùng quy tắc và dừng ở đoạn rỗng. Python lát a:b bỏ đầu cuối b; Julia khoảng a:b gồm cả b. Cần dùng đúng hệ chỉ số để không lấy thừa nút. Duyệt lại cây giúp kiểm phép phân tách.

### Ví dụ nhỏ

Dùng ngay hai dãy bài 23: trước [50,30,20,40,70,60,80], giữa [20,30,40,50,60,70,80].

### Cách làm

1. Lấy gốc và đếm k phần tử trước nó trong dãy giữa.
2. Tách đúng k nút cây trái, hoàn thành nhánh phải tại TODO.
3. Duyệt lại cây để khớp hai dãy đầu vào.

### Khung code Python

```python
class Node:
    def __init__(self, value):
        self.value = value
        self.left = None
        self.right = None

def preorder(g):
    if g is None:
        return []
    return [g.value] + preorder(g.left) + preorder(g.right)

def build(pre, ino):
    if not pre:
        return None
    k = ino.index(pre[0])
    g = Node(pre[0])
    g.left = build(pre[1:1+k], ino[:k])
    # TODO: g.right = build(đoạn pre bên phải, đoạn ino bên phải).
    return g

pre = [50, 30, 20, 40, 70, 60, 80]
ino = [20, 30, 40, 50, 60, 70, 80]
root = build(pre, ino)
print('Cây hiện có:', preorder(root))
print('Mục tiêu sau TODO:', pre)

```

- Python gốc pre[0]; ino.index trả chỉ số 0, cũng là số nút trái k.
- Khung đã dựng trái; phải còn thiếu. Lát pre[a:b] gồm a..b−1, còn pre[a:] lấy tới hết.

```text
python -X utf8 bai_tap/python/bai23.py
```

### Khung code Julia

```julia
mutable struct Node
    value::Int
    left::Any
    right::Any
end
Node(v) = Node(v, nothing, nothing)

function preorder(g)
    g === nothing && return Int[]
    return vcat([g.value], preorder(g.left), preorder(g.right))
end

function build(pre, ino)
    isempty(pre) && return nothing
    pos = findfirst(==(pre[1]), ino)
    pos === nothing && error("Hai dãy không khớp")
    k = pos - 1
    g = Node(pre[1])
    g.left = build(pre[2:k+1], ino[1:k])
    # TODO: g.right = build(đoạn pre bên phải, đoạn ino bên phải).
    return g
end
pre = [50, 30, 20, 40, 70, 60, 80]
ino = [20, 30, 40, 50, 60, 70, 80]
root = build(pre, ino)
println("Cây hiện có: ", preorder(root))
println("Mục tiêu sau TODO: ", pre)

```

- Julia lấy pre[1]; findfirst trả vị trí từ 1 nên k=pos−1.
- Khoảng a:b gồm cả b; 1:0 rỗng. Khung còn thiếu nhánh phải và cần kiểm bằng hai dãy sau TODO.

```text
julia bai_tap/julia/bai23.jl
```

### Tự kiểm tra

- Hai dãy rỗng: Cây rỗng.
- pre=[50,30,70], ino=[30,50,70] sau TODO: Gốc 50, trái 30, phải 70; hai dãy khớp đầu vào.

Vì sao một dãy trước riêng chưa đủ xác định hình cây?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 24 — Chèn sáu giá trị vào AVL

**Mục đích:** Tự hoàn thiện chèn AVL và các phép quay.

### Ôn lý thuyết

**Chèn rồi cân bằng**

Chèn như BST, sau đó tính lại chiều cao và hệ số trên đường trở về. Hệ số bằng cao trái trừ phải. Nếu vượt −1..1, xác định hai hướng tới nút mới để chọn tình huống. Không phải lần chèn nào cũng cần quay.

**Quay**

TT quay phải, PP quay trái; TP/PT quay con trước rồi quay tại nút lệch. Khung đã có quay đơn, còn TODO hai tình huống kép. Sau đổi liên kết, cập nhật nút xuống trước nút lên và gán gốc trả về. Chiều cao rỗng 0, lá 1.

### Ví dụ nhỏ

Khởi động bằng [10,20,30], ba số đầu bài 24; khi quay kép đúng, dùng đủ dãy [10,20,30,40,50,25].

### Cách làm

1. Chèn và tính h, bf trên đường đi.
2. Hoàn thành hai nhánh quay kép tại TODO.
3. Vẽ cây sau từng chèn, kiểm mọi bf và chiều cao.

### Khung code Python

```python
class Node:
    def __init__(self, value):
        self.value = value
        self.left = None
        self.right = None
        self.h = 1

def height(g):
    return 0 if g is None else g.h

def update(g):
    g.h = 1 + max(height(g.left), height(g.right))

def rotate_right(y):
    x = y.left
    middle = x.right
    x.right = y
    y.left = middle
    update(y)
    update(x)
    return x

def rotate_left(x):
    y = x.right
    middle = y.left
    y.left = x
    x.right = middle
    update(x)
    update(y)
    return y

def insert_avl(g, value):
    if g is None:
        return Node(value)
    if value < g.value:
        g.left = insert_avl(g.left, value)
    elif value > g.value:
        g.right = insert_avl(g.right, value)
    else:
        return g
    update(g)
    b = height(g.left) - height(g.right)
    if b > 1 and value < g.left.value:
        return rotate_right(g)
    if b < -1 and value > g.right.value:
        return rotate_left(g)
    # TODO: bổ sung TP/PT bằng quay ở con trước, rồi quay tại g.
    if abs(b) > 1:
        raise NotImplementedError('TODO: hai tình huống quay kép')
    return g

root = None
for value in [10, 20, 30]:
    root = insert_avl(root, value)
    print('Chèn', value, 'gốc', root.value, 'cao', root.h)

```

- height(None)=0; h lưu tại nút. Hai phép quay đã cập nhật chiều cao đúng thứ tự.
- TT/PP đã có; TP/PT còn TODO. Gán root=insert_avl(...) vì phép quay có thể đổi gốc.

```text
python -X utf8 bai_tap/python/bai24.py
```

### Khung code Julia

```julia
mutable struct Node
    value::Int
    left::Any
    right::Any
    h::Int
end
Node(v) = Node(v, nothing, nothing, 1)

height(g) = g === nothing ? 0 : g.h
function update(g)
    g.h = 1 + max(height(g.left), height(g.right))
end
function rotate_right(y)
    x = y.left
    middle = x.right
    x.right = y
    y.left = middle
    update(y)
    update(x)
    return x
end
function rotate_left(x)
    y = x.right
    middle = y.left
    y.left = x
    x.right = middle
    update(x)
    update(y)
    return y
end
function insert_avl(g, value)
    g === nothing && return Node(value)
    if value < g.value
        g.left = insert_avl(g.left, value)
    elseif value > g.value
        g.right = insert_avl(g.right, value)
    else
        return g
    end
    update(g)
    b = height(g.left) - height(g.right)
    if b > 1 && value < g.left.value
        return rotate_right(g)
    elseif b < -1 && value > g.right.value
        return rotate_left(g)
    end
    # TODO: thêm TP/PT bằng quay con trước rồi quay g.
    abs(b) > 1 && error("TODO: hai tình huống quay kép")
    return g
end
function demo()
    root = nothing
    for value in [10, 20, 30]
        root = insert_avl(root, value)
        println("Chèn ", value, " gốc ", root.value, " cao ", root.h)
    end
end
demo()

```

- nothing là rỗng; h là chiều cao lưu. Quay cập nhật nút xuống trước rồi nút lên.
- Các điều kiện dùng &&, khối đóng end; khung còn TP/PT. Vector đánh từ 1 nhưng cây dùng liên kết.

```text
julia bai_tap/julia/bai24.jl
```

### Tự kiểm tra

- Khởi động [10,20,30]: Gốc 20, hai lá 10 và 30; chiều cao 2.
- Chèn [30,10,20] sau TODO: Cần quay kép; cây cuối có gốc 20 và hai lá 10,30.

Duyệt giữa trước và sau quay giúp kiểm tính chất nào?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 25 — Thao tác trên đống cực đại

**Mục đích:** Lần vết thêm và lấy cực đại trên đống.

### Ôn lý thuyết

**Đống cực đại**

Đống có hình gần đầy, mỗi cha không nhỏ hơn từng con. Thêm vào cuối mảng rồi đẩy lên qua cha. Lấy gốc ra, đưa phần tử cuối lên gốc rồi đẩy xuống qua người con lớn hơn. Không sắp xếp cả mảng để thay cho thao tác đống.

**Chỉ số và trạng thái**

Python gốc 0: trái 2i+1, phải 2i+2, cha (i−1)//2. Julia gốc 1: trái 2i, phải 2i+1, cha div(i,2). Phần c1 lấy từ đống sau thêm; c2 lấy từ đống ban đầu. Giữ hai bản sao riêng để không dùng nhầm trạng thái.

### Ví dụ nhỏ

Dùng mảng ngay trong bài 25: [20,9,15,3,7,1,2]; thêm 18. Khung minh hoạ c1 sau thêm.

### Cách làm

1. Vẽ cây theo mảng và kiểm từng cha–con.
2. Hoàn thành chọn con lớn hơn tại TODO, ghi các lần đổi chỗ.
3. Làm c1/c2 từ hai trạng thái đúng và kiểm lại đống.

### Khung code Python

```python
def push_max(a, value):
    a.append(value)
    i = len(a) - 1
    while i > 0:
        p = (i - 1) // 2
        if a[p] >= a[i]:
            break
        a[p], a[i] = a[i], a[p]
        i = p

def pop_max(a):
    if not a:
        raise ValueError('Đống rỗng')
    result = a[0]
    last = a.pop()
    if not a:
        return result
    a[0] = last
    i = 0
    while 2*i + 1 < len(a):
        left = 2*i + 1
        right = left + 1
        child = left
        # TODO: nếu right tồn tại và a[right] > a[left], gán child = right.
        if a[i] >= a[child]:
            break
        a[i], a[child] = a[child], a[i]
        i = child
    return result

a = [20, 9, 15, 3, 7, 1, 2]
push_max(a, 18)
print('Sau thêm:', a)
print('Lấy:', pop_max(a), 'còn:', a)
# TODO: thêm ca tự kiểm có con phải lớn hơn con trái để kiểm dòng chọn child.

```

- Python đánh từ 0; // chia nguyên. append/pop và đổi hai giá trị sửa mảng trực tiếp.
- TODO chọn con phải nếu tồn tại và lớn hơn con trái. Dùng a.copy() để giữ trạng thái c1/c2.

```text
python -X utf8 bai_tap/python/bai25.py
```

### Khung code Julia

```julia
function push_max!(a, value)
    push!(a, value)
    i = length(a)
    while i > 1
        p = div(i, 2)
        a[p] >= a[i] && break
        a[p], a[i] = a[i], a[p]
        i = p
    end
end
function pop_max!(a)
    isempty(a) && error("Đống rỗng")
    result = a[1]
    last = pop!(a)
    isempty(a) && return result
    a[1] = last
    i = 1
    while 2*i <= length(a)
        left = 2*i
        right = left + 1
        child = left
        # TODO: nếu right tồn tại và a[right] > a[left], chọn child = right.
        a[i] >= a[child] && break
        a[i], a[child] = a[child], a[i]
        i = child
    end
    return result
end
a = [20, 9, 15, 3, 7, 1, 2]
push_max!(a, 18)
println("Sau thêm: ", a)
println("Lấy: ", pop_max!(a), " còn: ", a)
# TODO: thêm ca mà con phải lớn hơn con trái.

```

- Julia đánh từ 1; div(i,2) chia nguyên. push!/pop! sửa vector; tên có ! báo thao tác sửa đối số.
- TODO chọn con lớn hơn. Dùng copy(a) để tách hai trạng thái, kiểm chỉ số trước truy cập.

```text
julia bai_tap/julia/bai25.jl
```

### Tự kiểm tra

- Đống một phần tử [20], lấy lớn nhất: Trả 20, đống còn rỗng.
- Đống [20,9,15,3,7], lấy sau TODO: Trả 20; còn [15,9,7,3], phải chọn con phải lớn hơn.

Vì sao đẩy xuống phải chọn con lớn hơn?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 26 — Gini của ba nhóm nhãn

**Mục đích:** Tính Gini từ số đếm nhãn.

### Ôn lý thuyết

**Tỉ lệ lớp**

Tổng n bằng tổng số đếm. Mỗi tỉ lệ p bằng số đếm lớp chia n. Bình phương các tỉ lệ, cộng rồi lấy 1 trừ tổng. Không dùng phép chia nguyên cho tỉ lệ và không bình phương số đếm chưa chuẩn hoá.

```text
Gini=1−Σ(c_i/n)^2.
```

**Tự kiểm**

Với hai lớp, kết quả nằm từ 0 tới 0,5. Cùng tỉ lệ nhãn thì cùng Gini dù kích thước nhóm khác. Mỗi nhóm trong đề được tính riêng; đây chưa phải Gini có trọng số của phép chia. Khung cho nhóm rỗng 0 theo quy ước bài giảng.

### Ví dụ nhỏ

Ba nhóm tự khai báo ngay trong mã từ bài 26: [5,0], [3,3], [4,1].

### Cách làm

1. Tính tổng và viết tỉ lệ của từng nhóm.
2. Tính tay theo công thức, giữ phân số tới cuối.
3. Chạy đoạn đối chiếu và giải thích nếu kết quả lệch.

### Khung code Python

```python
def gini_counts(counts):
    # TODO: kiểm số đếm nguyên, không âm.
    n = sum(counts)
    if n == 0:
        return 0.0
    s = 0.0
    for c in counts:
        p = c / n
        s += p*p
    return 1 - s

for counts in [[5, 0], [3, 3], [4, 1]]:
    print(counts, gini_counts(counts))

```

- / cho tỉ lệ thập phân; ** hoặc p*p đều bình phương. Không dùng // ở đây.
- Khung đối chiếu công thức đã đủ; tự viết kiểm số đếm ở TODO và kèm phép tính tay.

```text
python -X utf8 bai_tap/python/bai26.py
```

### Khung code Julia

```julia
function gini_counts(counts)
    # TODO: kiểm số đếm nguyên, không âm.
    n = sum(counts)
    n == 0 && return 0.0
    s = 0.0
    for c in counts
        p = c/n
        s += p*p
    end
    return 1-s
end
for counts in [[5, 0], [3, 3], [4, 1]]
    println(counts, " ", gini_counts(counts))
end

```

- Julia dùng / để tính tỉ lệ; div là chia nguyên nên không phù hợp ở đây.
- Vòng for lấy trực tiếp số đếm, không cần chỉ số. Khung dùng hàm chuẩn, không cần môđun ngoài.

```text
julia bai_tap/julia/bai26.jl
```

### Tự kiểm tra

- Nhóm [5,0]: Gini 0 vì thuần nhất.
- Nhóm [3,3]: Gini 0,5 vì hai lớp chia đều.

Tại sao nhân đôi mọi số đếm không đổi Gini?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 27 — Tính Gini của bảng 7.7

**Mục đích:** Tính Gini nhóm và Gini có trọng số.

### Ôn lý thuyết

**Gom nhóm**

Mỗi hàng gồm thời tiết, gió, nhãn. Khi chia theo một thuộc tính, gom các hàng có cùng giá trị cột ấy. Giữ mọi hàng, kể cả hàng trùng thuộc tính. Tính Gini bằng nhãn của từng nhóm, không dùng tên thời tiết hay gió làm nhãn.

**Cộng trọng số**

Nhóm n_k mẫu đóng góp n_k/n nhân Gini nhóm. Cộng mọi đóng góp để có chỉ số phép chia. Tổng số mẫu nhóm phải bằng n, tổng trọng số bằng 1. So hai thuộc tính và chọn chỉ số nhỏ hơn; không lấy trung bình cộng nếu nhóm khác kích thước.

```text
Gini_chia=Σ(n_k/n)·Gini_k.
```

### Ví dụ nhỏ

Tám hàng bảng 7.7 nằm trực tiếp trong mã; không đọc tệp hoặc dùng dữ liệu ngoài.

### Cách làm

1. Đếm nhãn toàn tập và trong từng nhóm.
2. Tính Gini, trọng số và đóng góp từng nhóm bằng tay.
3. Dùng khung đối chiếu, tự viết chọn thuộc tính có Gini nhỏ hơn.

### Khung code Python

```python
def gini(rows):
    if not rows:
        return 0.0
    counts = {}
    for row in rows:
        label = row[-1]
        counts[label] = counts.get(label, 0) + 1
    return 1 - sum((c/len(rows))**2 for c in counts.values())

def gini_split(rows, col):
    groups = {}
    for row in rows:
        groups.setdefault(row[col], []).append(row)
    total = 0.0
    for group in groups.values():
        total += len(group)/len(rows) * gini(group)
    return total

rows = [
    ['nắng','nhẹ','có'], ['nắng','mạnh','không'],
    ['mây','nhẹ','có'], ['mây','mạnh','có'],
    ['mưa','nhẹ','không'], ['mưa','mạnh','không'],
    ['nắng','nhẹ','có'], ['mưa','mạnh','không'],
]
weather = gini_split(rows, 0)
wind = gini_split(rows, 1)
print(gini(rows), weather, wind)
# TODO: so weather/wind và in cột được chọn; giải thích bằng bảng tính tay.

```

- Python cột thời tiết 0, gió 1, nhãn cuối row[-1]. dict gom nguyên hàng và vẫn giữ mẫu lặp.
- total cộng trọng số nhân Gini nhóm. TODO chỉ còn phép chọn cột; tự trình bày các nhóm và phép tính tay.

```text
python -X utf8 bai_tap/python/bai27.py
```

### Khung code Julia

```julia
function gini(rows)
    isempty(rows) && return 0.0
    counts = Dict{String,Int}()
    for row in rows
        label = row[end]
        counts[label] = get(counts, label, 0) + 1
    end
    return 1 - sum((c/length(rows))^2 for c in values(counts))
end
function gini_split(rows, col)
    groups = Dict{String,Vector{Vector{String}}}()
    for row in rows
        key = row[col]
        if !haskey(groups, key)
            groups[key] = Vector{String}[]
        end
        push!(groups[key], row)
    end
    total = 0.0
    for group in values(groups)
        total += length(group)/length(rows) * gini(group)
    end
    return total
end
rows = [
    ["nắng","nhẹ","có"], ["nắng","mạnh","không"],
    ["mây","nhẹ","có"], ["mây","mạnh","có"],
    ["mưa","nhẹ","không"], ["mưa","mạnh","không"],
    ["nắng","nhẹ","có"], ["mưa","mạnh","không"],
]
weather = gini_split(rows, 1)
wind = gini_split(rows, 2)
println(gini(rows), " ", weather, " ", wind)
# TODO: so weather/wind và in cột được chọn, kèm bảng tính tay.

```

- Julia cột thời tiết 1, gió 2, nhãn cuối row[end]. Dict gom nhóm; push! giữ từng hàng riêng.
- / tạo trọng số; ^2 bình phương. TODO chọn cột có chỉ số nhỏ hơn, không cần môđun hay đọc tệp.

```text
julia bai_tap/julia/bai27.jl
```

### Tự kiểm tra

- Toàn bộ bảng 7.7: Gini 0,5, theo mốc bài giảng.
- Chia tám mẫu thành các nhóm: Số mẫu cộng 8, tổng trọng số bằng 1.

Vì sao nhóm lớn phải có trọng số lớn hơn?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 28 — Minimax và cắt tỉa alpha-beta

**Mục đích:** Tự hoàn thiện điều kiện cắt alpha-beta.

### Ôn lý thuyết

**Minimax**

Gốc MAX chọn lớn nhất trong các con MIN; mỗi MIN chọn nhỏ nhất trong các lá của mình. Chia đúng chín lá thành ba nhóm theo đề trước khi tính. Không lấy max trực tiếp trên toàn dãy lá vì như vậy bỏ qua lượt MIN.

**Cắt tỉa**

MAX cập nhật α, MIN cập nhật β sau khi xét một con. Khi β≤α, dừng phần chưa xét của nút hiện tại. Con nhận cận từ cha; các MIN anh em không dùng lại β riêng đã cập nhật của nhau. Lá trùng giá trị phải phân biệt bằng vị trí.

```text
Cắt khi β≤α.
```

### Ví dụ nhỏ

Gốc MAX có ba MIN với lá [3,12,8], [2,4,6], [14,5,2], lấy nguyên dữ liệu bài 28.

### Cách làm

1. Vẽ cây và tính minimax từ lá lên.
2. Điền lệnh dừng tại TODO, lần vết cận từ trái sang phải.
3. Đánh dấu đúng vị trí bị cắt, kiểm giá trị gốc bằng minimax thường.

### Khung code Python

```python
def minimax(tree, is_max):
    if isinstance(tree, (int, float)):
        return tree
    values = [minimax(child, not is_max) for child in tree]
    return max(values) if is_max else min(values)

def alpha_beta(tree, is_max, alpha, beta, visited, path='A'):
    if isinstance(tree, (int, float)):
        visited.append((path, tree))
        return tree
    best = -float('inf') if is_max else float('inf')
    for k, child in enumerate(tree):
        child_path = path + '.' + str(k + 1)
        value = alpha_beta(child, not is_max, alpha, beta, visited, child_path)
        if is_max:
            best = max(best, value)
            alpha = max(alpha, best)
        else:
            best = min(best, value)
            beta = min(beta, best)
        # TODO: thêm if beta <= alpha: break tại đây.
    return best

tree = [[3, 12, 8], [2, 4, 6], [14, 5, 2]]
visited = []
print('Minimax:', minimax(tree, True))
print('Khung alpha-beta:', alpha_beta(tree, True, -float('inf'), float('inf'), visited))
print('Lá đã xét:', visited)
# Trước TODO xét đủ 9 lá; sau TODO tự đối chiếu số lá bằng lần vết.

```

- Số là lá, list lồng nhau là các con. Khung đã cập nhật α/β nhưng thiếu lệnh break tại TODO.
- enumerate đánh từ 0; +1 chỉ để ghi nhãn hình. visited lưu vị trí và giá trị để phân biệt hai lá bằng nhau.

```text
python -X utf8 bai_tap/python/bai28.py
```

### Khung code Julia

```julia
function minimax(tree, is_max)
    tree isa Number && return tree
    vals = [minimax(child, !is_max) for child in tree]
    return is_max ? maximum(vals) : minimum(vals)
end
function alpha_beta(tree, is_max, alpha, beta, visited, path="A")
    if tree isa Number
        push!(visited, (path, tree))
        return tree
    end
    best = is_max ? -Inf : Inf
    for (k, child) in enumerate(tree)
        child_path = path * "." * string(k)
        value = alpha_beta(child, !is_max, alpha, beta, visited, child_path)
        if is_max
            best = max(best, value)
            alpha = max(alpha, best)
        else
            best = min(best, value)
            beta = min(beta, best)
        end
        # TODO: thêm beta <= alpha && break tại đây.
    end
    return best
end
tree = [[3, 12, 8], [2, 4, 6], [14, 5, 2]]
visited = Tuple{String,Int}[]
println("Minimax: ", minimax(tree, true))
println("Khung alpha-beta: ", alpha_beta(tree, true, -Inf, Inf, visited))
println("Lá đã xét: ", visited)
# Trước TODO xét đủ 9 lá; sau TODO tự đối chiếu số lá bằng lần vết.

```

- Số là lá, vector lồng nhau là các con. Inf là vô cùng; TODO thêm beta<=alpha && break sau cập nhật.
- enumerate Julia đánh từ 1, nối chuỗi bằng *. Nhật ký dùng nhãn đường đi, không chỉ giá trị lá.

```text
julia bai_tap/julia/bai28.jl
```

### Tự kiểm tra

- Cây chỉ có lá 3: Trả 3, nhật ký có một lá.
- MAX có MIN [3,12] rồi MIN [2,4], sau TODO: Gốc 3; xét ba lá và cắt vị trí lá 4.

Nếu điều kiện cắt xuất hiện ở lá cuối, tiết kiệm được lá nào không?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 29 — BST đầy đủ

**Mục đích:** Hoàn thiện các thao tác BST trên một cây bảy nút.

### Ôn lý thuyết

**Thao tác trên BST**

Chèn và tìm đi theo so sánh khóa. Xóa phải giữ những cây con còn lại: lá được bỏ, nút một con được thay bằng con, nút hai con dùng kế vị nhỏ nhất ở cây con phải. Mỗi thao tác sửa liên kết đều trả lại gốc.

**Kiểm kết quả**

Ba duyệt khác nhau ở thời điểm xuất gốc. Duyệt giữa giúp kiểm thứ tự khóa; đếm nút, lá và chiều cao giúp kiểm hình dạng. Rỗng trả dãy rỗng hoặc số 0; lá cao 1.

```text
Trước: G-T-P; giữa: T-G-P; sau: T-P-G.
```

### Ví dụ nhỏ

Cây ban đầu có các khóa 4,2,6,1,3,5,7; lần lượt xóa 1,2,4.

### Cách làm

1. Viết chèn, tìm rồi ba cách duyệt.
2. Viết xóa đủ ba trường hợp và hàm thống kê.
3. Thử xóa lá, nút một con và gốc hai con.

### Khung code Python

```python
class Nut:
    def __init__(self,gt,trai=None,phai=None):
        self.gt,self.trai,self.phai=gt,trai,phai
def chen(g,x):
    if g is None: return Nut(x)
    if x==g.gt: return g
    raise NotImplementedError("chèn vào con đúng phía")
def tim(g,x):
    while g is not None:
        if x==g.gt: return g
        raise NotImplementedError("tiến xuống con phù hợp")
    return None
def xoa(g,x):
    if g is None: return None
    # TODO: nối lại con; hai con dùng kế vị bên phải.
    raise NotImplementedError("xóa 0/1/2 con")
def duyet(g,kieu):
    if g is None: return []
    # TODO: ghép gốc và hai dãy con theo kieu.
    raise NotImplementedError("truoc/giua/sau")
def thong_ke(g):
    if g is None: return (0,0,0)
    # TODO: trả (số nút,số lá,chiều cao).
    raise NotImplementedError("kết hợp thống kê hai con")
g=Nut(4,Nut(2,Nut(1),Nut(3)),Nut(6,Nut(5),Nut(7)))
print("Mong đợi: giữa1..7, thống kê(7,4,3); sau xóa1,2,4: [3,5,6,7]")
try:
    print(duyet(g,"giua"),thong_ke(g))
    for x in [1,2,4]: g=xoa(g,x)
    print(duyet(g,"giua"))
except NotImplementedError as e: print("TODO:",e)
```

- Cây được khai báo trực tiếp nên không cần hoàn thành chèn để thử duyệt.
- Giữ các điều kiện rỗng và khóa trùng.

```text
python -X utf8 bai_tap/python/bai29.py
```

### Khung code Julia

```julia
mutable struct Nut
    gt::Int; trai::Union{Nothing,Nut}; phai::Union{Nothing,Nut}
end
Nut(x)=Nut(x,nothing,nothing)
function chen(g,x)
    g===nothing && return Nut(x)
    x==g.gt && return g
    error("TODO chèn đúng phía")
end
function tim(g,x)
    while g!==nothing
        x==g.gt && return g
        error("TODO tìm: chọn con")
    end
    return nothing
end
function xoa(g,x)
    g===nothing && return nothing
    error("TODO xóa 0/1/2 con, dùng kế vị")
end
function duyet(g,kieu)
    g===nothing && return Int[]
    error("TODO ghép theo truoc/giua/sau")
end
function thong_ke(g)
    g===nothing && return (0,0,0)
    error("TODO số nút, số lá, chiều cao")
end
println("Mong đợi: giữa1..7; (7,4,3); sau xóa:3,5,6,7")
try
    let g=Nut(4,Nut(2,Nut(1),Nut(3)),Nut(6,Nut(5),Nut(7)))
        println(duyet(g,:giua)," ",thong_ke(g))
        for x in [1,2,4]; g=xoa(g,x); end
        println(duyet(g,:giua))
    end
catch e; println(sprint(showerror,e)); end
```

- Kiểu duyệt dùng Symbol :truoc/:giua/:sau.
- Lệnh xóa phải nhận lại gốc kể cả khi xóa gốc.

```text
julia bai_tap/julia/bai29.jl
```

### Tự kiểm tra

- Cây ban đầu.: 7 nút,4 lá,cao3; giữa 1..7.
- Xóa 1,2,4 lần lượt.: Giữa [3,5,6,7].

Tại sao nút 2 từ hai con trở thành một con sau khi xóa 1?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 30 — Kiểm tra tính chất BST

**Mục đích:** Kiểm BST bằng điều kiện áp dụng cho mọi tổ tiên.

### Ôn lý thuyết

**Cận của khóa**

Một nút ở cây con trái phải nhỏ hơn tổ tiên đó, dù nó là con phải của nút khác. Kiểm riêng cha với hai con sẽ bỏ sót lỗi. Truyền khoảng mở cho phép xuống hai nhánh: trái giữ cận dưới, phải giữ cận trên.

```text
lo < khóa < hi.
```

**Độ phức tạp**

Mỗi nút kiểm một lần với hai cận nên thời gian O(n). Cây rỗng hợp lệ. Khóa trùng không hợp lệ vì khoảng là mở; cận chưa có dùng None hoặc nothing, không dùng số giả.

### Ví dụ nhỏ

Dùng bộ ba (khóa,trái,phải): 50 có trái30, nhưng 30 có phải60; đây không phải BST.

### Cách làm

1. Nhận thêm hai cận chưa xác định ở gốc.
2. Kiểm khóa rồi truyền khoảng đúng cho hai con.
3. Thử một cây sai với tổ tiên nhưng đúng với cha.

### Khung code Python

```python
def la_bst(g,lo=None,hi=None):
    if g is None: return True
    x,trai,phai=g
    # TODO: kiểm x nằm trong khoảng mở.
    # TODO: trái dùng (lo,x), phải dùng (x,hi).
    raise NotImplementedError("kiểm cận và hai cây con")
dung=(4,(2,(1,None,None),(3,None,None)),(6,None,None))
sai=(50,(30,None,(60,None,None)),(70,None,None))
print("Mong đợi: True, False")
try:
    print(la_bst(dung),la_bst(sai))
except NotImplementedError as e: print("TODO:",e)
```

- Tuple biểu diễn cây nhỏ, không cần khai báo lớp.
- Không sắp lại dãy khóa để che lỗi thứ tự.

```text
python -X utf8 bai_tap/python/bai30.py
```

### Khung code Julia

```julia
function la_bst(g,lo=nothing,hi=nothing)
    g===nothing && return true
    x,trai,phai=g
    # TODO: kiểm khoảng mở và gọi hai con với cận mới.
    error("TODO B30: cận từ toàn bộ tổ tiên")
end
dung=(4,(2,(1,nothing,nothing),(3,nothing,nothing)),(6,nothing,nothing))
sai=(50,(30,nothing,(60,nothing,nothing)),(70,nothing,nothing))
println("Mong đợi: true, false")
try; println(la_bst(dung)," ",la_bst(sai))
catch e; println(sprint(showerror,e)); end
```

- Tuple có đúng ba thành phần: khóa,trái,phải.
- nothing vừa biểu diễn cây rỗng, vừa biểu diễn cận chưa có.

```text
julia bai_tap/julia/bai30.jl
```

### Tự kiểm tra

- Cây 4–2–6.: True.
- 60 nằm trái tổ tiên50.: False.

Vẽ thêm một cây sai mà mọi cặp cha-con vẫn đúng thứ tự.

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 31 — Giá trị nhỏ nhất và lớn nhất

**Mục đích:** Tìm cực tiểu và cực đại bằng một đường đi trong BST.

### Ôn lý thuyết

**Đường tìm cực trị**

Nếu còn con trái thì nút hiện tại chưa nhỏ nhất, vì mọi khóa bên trái nhỏ hơn nó. Đi trái đến hết cho cực tiểu; đi phải đến hết cho cực đại. Không cần duyệt mọi nút hoặc sắp xếp giá trị.

**Biên và phạm vi**

Cây rỗng không có cực trị nên trả giá trị rỗng. Hàm áp dụng cho đúng cây con truyền vào. Thời gian O(h), không luôn O(log n) nếu cây lệch. Việc tìm chỉ đổi biến đang xét, không sửa liên kết.

### Ví dụ nhỏ

Cây tuple: gốc8, trái3 có trái1, phải10 có phải14.

### Cách làm

1. Xử lý cây rỗng trước.
2. Theo trái hoặc phải cho đến khi liên kết rỗng.
3. Trả khóa tại nút dừng và kiểm bằng ví dụ nhỏ.

### Khung code Python

```python
def nho_nhat(g):
    if g is None: return None
    while g[1] is not None:
        # TODO: cập nhật g sang trái.
        raise NotImplementedError("đi trái")
    return g[0]
def lon_nhat(g):
    if g is None: return None
    while g[2] is not None:
        raise NotImplementedError("đi phải")
    return g[0]
g=(8,(3,(1,None,None),None),(10,None,(14,None,None)))
print("Mong đợi: 1,14; rỗng:None")
try:
    print(nho_nhat(g),lon_nhat(g),nho_nhat(None))
except NotImplementedError as e: print("TODO:",e)
```

- Bản ngắn trả khóa để dễ in; ba thành phần tuple là khóa,trái,phải.
- Không thay đổi tuple hoặc nối lại cây khi chỉ tìm.

```text
python -X utf8 bai_tap/python/bai31.py
```

### Khung code Julia

```julia
function nho_nhat(g)
    g===nothing && return nothing
    while g[2]!==nothing
        error("TODO: đi trái")
    end
    return g[1]
end
function lon_nhat(g)
    g===nothing && return nothing
    while g[3]!==nothing
        error("TODO: đi phải")
    end
    return g[1]
end
g=(8,(3,(1,nothing,nothing),nothing),(10,nothing,(14,nothing,nothing)))
println("Mong đợi:1,14; rỗng:nothing")
try; println(nho_nhat(g)," ",lon_nhat(g)," ",nho_nhat(nothing))
catch e; println(sprint(showerror,e)); end
```

- Julia truy cập tuple từ chỉ số1, nên trái/phải là2/3.
- Hàm trả khóa; không nhầm với đối tượng nút.

```text
julia bai_tap/julia/bai31.jl
```

### Tự kiểm tra

- Cây ví dụ.: Min1,max14.
- Một lá -7.: Min=max=-7.

Nếu cây không phải BST, đi trái/phải đến hết còn tìm đúng cực trị không?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 32 — Đếm nút có đúng một con

**Mục đích:** Đếm nút có chính xác một con.

### Ôn lý thuyết

**Điều kiện một con**

Nút lá không có con; nút đầy đủ có hai con. Bài chỉ tính nút có một liên kết tồn tại và liên kết kia rỗng. Điều kiện hai giá trị logic khác nhau, hay XOR, diễn tả đúng yêu cầu; OR chỉ kiểm ít nhất một con nên sai.

**Kết hợp kết quả**

Tổng cần tìm bằng đóng góp 0/1 của gốc cộng số đếm hai cây con. Rỗng trả0. Hàm dùng được cho cây nhị phân tổng quát, vì chỉ xét liên kết chứ không xét thứ tự khóa.

```text
đếm = đóng_góp + đếm(trái) + đếm(phải).
```

### Ví dụ nhỏ

Gốc8 có hai con; nút3 chỉ có phải6; nút10 chỉ có phải14.

### Cách làm

1. Tạo hai điều kiện có trái/có phải.
2. Chỉ cộng1 khi hai điều kiện khác nhau.
3. Cộng hai kết quả con rồi thử cây lệch.

### Khung code Python

```python
def dem_mot_con(g):
    if g is None: return 0
    _,trai,phai=g
    a,b=trai is not None,phai is not None
    # TODO: đóng góp từ a XOR b, cộng hai cây con.
    raise NotImplementedError("đúng một con")
g=(8,(3,None,(6,None,None)),(10,None,(14,None,None)))
print("Mong đợi:2; lá:0")
try:
    print(dem_mot_con(g),dem_mot_con((1,None,None)))
except NotImplementedError as e: print("TODO:",e)
```

- Kiểm liên kết, không kiểm khóa khác0.
- Dữ liệu đã có sẵn trong chương trình.

```text
python -X utf8 bai_tap/python/bai32.py
```

### Khung code Julia

```julia
function dem_mot_con(g)
    g===nothing && return 0
    _,trai,phai=g
    a,b=trai!==nothing,phai!==nothing
    # TODO: xor(a,b) cho đóng góp; cộng hai con.
    error("TODO B32: số nút một con")
end
g=(8,(3,nothing,(6,nothing,nothing)),(10,nothing,(14,nothing,nothing)))
println("Mong đợi:2; lá:0")
try; println(dem_mot_con(g)," ",dem_mot_con((1,nothing,nothing)))
catch e; println(sprint(showerror,e)); end
```

- xor làm việc trên hai Bool chỉ sự có mặt của con.
- Không đếm nút hai con.

```text
julia bai_tap/julia/bai32.jl
```

### Tự kiểm tra

- Cây ví dụ.: 2.
- Chuỗi4 nút.: 3.

Thay mọi giá trị khóa có làm thay đổi số nút một con không?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 33 — Tổng giá trị nút và lá

**Mục đích:** Tính tổng mọi nút và tổng riêng các lá.

### Ôn lý thuyết

**Tổng khác đếm**

Tổng nút cộng giá trị khóa, không cộng1 như phép đếm. Giá trị có thể âm hoặc bằng0. Cây rỗng có tổng0, là phần tử trung hòa phép cộng. Cần giữ nguyên dấu của giá trị.

**Tổng lá**

Lá không có cả con trái lẫn con phải. Nút chỉ thiếu một con vẫn là nút trong nên không cộng vào tổng lá. Hai hàm cùng kết hợp kết quả con, nhưng khác đóng góp của gốc.

```text
Tổng nút = khóa + hai tổng con; tổng lá chỉ cộng khóa ở lá.
```

### Ví dụ nhỏ

Gốc5, trái-2, phải9 có con trái0.

### Cách làm

1. Cho cây rỗng trả0 ở cả hai hàm.
2. Trong tổng lá, kiểm đồng thời hai con rỗng.
3. Cộng kết quả con và thử giá trị âm,0.

### Khung code Python

```python
def tong_nut(g):
    if g is None: return 0
    x,trai,phai=g
    # TODO: cộng x và tổng hai con.
    raise NotImplementedError("tổng mọi nút")
def tong_la(g):
    if g is None: return 0
    x,trai,phai=g
    if trai is None and phai is None: return x
    # TODO: nút trong chỉ chuyển tiếp tổng hai con.
    raise NotImplementedError("tổng lá con")
g=(5,(-2,None,None),(9,(0,None,None),None))
print("Mong đợi: tổng nút12, tổng lá-2")
try: print(tong_nut(g),tong_la(g))
except NotImplementedError as e: print("TODO:",e)
```

- Rỗng trả0 nhưng một lá khóa0 vẫn là một nút thật.
- Không dùng trị tuyệt đối của khóa.

```text
python -X utf8 bai_tap/python/bai33.py
```

### Khung code Julia

```julia
function tong_nut(g)
    g===nothing && return 0
    x,trai,phai=g
    error("TODO: cộng khóa và tổng hai con")
end
function tong_la(g)
    g===nothing && return 0
    x,trai,phai=g
    trai===nothing && phai===nothing && return x
    error("TODO: tổng lá hai con")
end
g=(5,(-2,nothing,nothing),(9,(0,nothing,nothing),nothing))
println("Mong đợi:12,-2")
try; println(tong_nut(g)," ",tong_la(g))
catch e; println(sprint(showerror,e)); end
```

- Hai hàm trả số, phần in đặt trong đoạn thử.
- AND mới là điều kiện lá.

```text
julia bai_tap/julia/bai33.jl
```

### Tự kiểm tra

- Cây ví dụ.: 12 và-2.
- Một nút -7.: Cả hai tổng -7.

Tổng lá có thể lớn hơn tổng nút khi có số âm không?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 34 — In cây thụt đầu dòng

**Mục đích:** In cây theo độ sâu để quan sát hình dạng.

### Ôn lý thuyết

**Độ sâu và cách thụt**

Gốc sâu0; mỗi cạnh xuống con tăng sâu thêm1. Mỗi mức thụt thêm bốn dấu cách. Độ sâu tính từ gốc, khác chiều cao tính xuống lá. Không dùng tab vì số cột hiển thị có thể khác nhau.

```text
Khoảng trắng = 4 × độ sâu.
```

**Duyệt trước để hiển thị**

Xuất gốc trước, rồi trái, rồi phải. Hàm trả chuỗi giúp kiểm nội dung dễ hơn in ngay trong đệ quy. Gom từng dòng rồi nối bằng xuống dòng. Cây rỗng không thêm dòng nào.

### Ví dụ nhỏ

Gốc8, trái3 có phải6, phải10; độ thụt các dòng là0,4,8,4.

### Cách làm

1. Viết hàm phụ nhận nút và độ sâu.
2. Thêm dòng gốc rồi gọi trái/phải với sâu+1.
3. Nối các dòng và đối chiếu mức thụt.

### Khung code Python

```python
def in_cay(g):
    dong=[]
    def ve(nut,sau):
        if nut is None: return
        x,trai,phai=nut
        # TODO: thêm dòng 4*sau dấu cách; đi trái rồi phải.
        raise NotImplementedError("thụt và duyệt")
    ve(g,0)
    return "\n".join(dong)
g=(8,(3,None,(6,None,None)),(10,None,None))
print("Mong đợi:\n8\n    3\n        6\n    10")
try: print(in_cay(g))
except NotImplementedError as e: print("TODO:",e)
```

- Danh sách dòng được tạo mới mỗi lần gọi.
- Chỉ một giá trị trên mỗi dòng.

```text
python -X utf8 bai_tap/python/bai34.py
```

### Khung code Julia

```julia
function in_cay(g)
    dong=String[]
    function ve(nut,sau)
        nut===nothing && return
        x,trai,phai=nut
        # TODO: push! dòng repeat(" ",4*sau), gọi hai con.
        error("TODO B34: thụt theo độ sâu")
    end
    ve(g,0)
    return join(dong,'\n')
end
g=(8,(3,nothing,(6,nothing,nothing)),(10,nothing,nothing))
println("Mong đợi:\n8\n    3\n        6\n    10")
try; println(in_cay(g))
catch e; println(sprint(showerror,e)); end
```

- repeat tạo đúng số dấu cách.
- Không lưu độ sâu toàn cục.

```text
julia bai_tap/julia/bai34.jl
```

### Tự kiểm tra

- Cây ví dụ.: Các dòng thụt0,4,8,4.
- Rỗng.: Chuỗi rỗng.

Vì sao chuyển từ nút6 sang10 phải giảm độ thụt?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 35 — Duyệt cây bằng ngăn xếp

**Mục đích:** Viết ba duyệt bằng vòng lặp và ngăn xếp.

### Ôn lý thuyết

**Ngăn xếp LIFO**

Phần tử đưa vào sau được lấy ra trước. Vì vậy khi muốn xử lý trái trước, cần cân nhắc thứ tự đẩy hai con. Ngăn xếp lưu công việc đang chờ thay cho lời gọi đệ quy.

**Ba thời điểm xuất**

Duyệt trước xuất khi lấy nút. Duyệt giữa chờ nhánh trái xong. Duyệt sau chờ cả hai con, nên có thể lưu cờ đã mở trong khung. Không gọi hàm đệ quy để làm hộ bản vòng lặp.

```text
Trước G-T-P; giữa T-G-P; sau T-P-G.
```

### Ví dụ nhỏ

Cây gốc8, trái3, phải10; kết quả ba duyệt khác nhau.

### Cách làm

1. Làm duyệt trước với một stack.
2. Làm duyệt giữa với stack và nút hiện tại.
3. Làm duyệt sau với cờ trạng thái, kiểm xuất đúng một lần.

### Khung code Python

```python
def truoc(g):
    stack,out=([g] if g else []),[]
    while stack:
        nut=stack.pop()
        # TODO: xuất gốc; đẩy con theo LIFO.
        raise NotImplementedError("duyệt trước vòng lặp")
    return out
def giua(g):
    stack,out=[],[]
    while g is not None or stack:
        # TODO: hạ trái, pop nút chờ, xuất, sang phải.
        raise NotImplementedError("duyệt giữa vòng lặp")
    return out
def sau(g):
    stack,out=([(g,False)] if g else []),[]
    while stack:
        nut,da_mo=stack.pop()
        # TODO: cờ phân biệt lên lịch con và xuất gốc.
        raise NotImplementedError("duyệt sau vòng lặp")
    return out
g=(8,(3,None,None),(10,None,None))
print("Mong đợi:[8,3,10];[3,8,10];[3,10,8]")
for ham in [truoc,giua,sau]:
    try: print(ham(g))
    except NotImplementedError as e: print("TODO:",e)
```

- Tuple là nút; chỉ dùng while và stack trong ba hàm.
- Không sort dãy để ép kết quả đúng.

```text
python -X utf8 bai_tap/python/bai35.py
```

### Khung code Julia

```julia
function truoc(g)
    stack,out=(g===nothing ? Any[] : Any[g]),Int[]
    while !isempty(stack)
        nut=pop!(stack)
        error("TODO: xuất, đẩy con theo LIFO")
    end
    return out
end
function giua(g)
    stack,out=Any[],Int[]
    while g!==nothing || !isempty(stack)
        error("TODO: hạ trái, pop, xuất, sang phải")
    end
    return out
end
function sau(g)
    stack,out=(g===nothing ? Any[] : Any[(g,false)]),Int[]
    while !isempty(stack)
        nut,da_mo=pop!(stack)
        error("TODO: cờ mở con/xuất nút")
    end
    return out
end
g=(8,(3,nothing,nothing),(10,nothing,nothing))
println("Mong đợi:[8,3,10];[3,8,10];[3,10,8]")
for ham in (truoc,giua,sau)
    try; println(ham(g))
    catch e; println(sprint(showerror,e)); end
end
```

- Any[] chứa được các tuple công việc có cấu trúc khác nhau.
- isempty trước pop! tránh lấy từ stack rỗng.

```text
julia bai_tap/julia/bai35.jl
```

### Tự kiểm tra

- Cây ví dụ.: Ba dãy như phần ví dụ.
- Rỗng.: Cả ba trả [].

Cờ trong duyệt sau thay thế thông tin nào của lời gọi đệ quy?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 36 — Đống cực tiểu và Dijkstra

**Mục đích:** Dùng minheap để chọn đỉnh tiếp theo trong Dijkstra.

### Ôn lý thuyết

**Minheap**

Minheap giữ ưu tiên nhỏ nhất tại gốc mảng. Thêm cần đẩy lên; lấy gốc cần thay bằng phần tử cuối rồi đẩy xuống. Mảng heap không phải mảng đã sắp. Bài dùng ưu tiên là khoảng cách tạm thời.

**Dijkstra**

Với cạnh trọng số không âm, thử đường mới d[u]+w đến v. Nếu ngắn hơn thì cập nhật d[v] và cha, đưa bản mới vào heap. Khi lấy bản khoảng cách cũ phải bỏ qua để tránh xử lý lại vô ích.

```text
Nếu d[u]+w < d[v] thì cải thiện v.
```

### Ví dụ nhỏ

Đồ thị4 đỉnh A,B,C,D khai báo trong code; A→C→B→D là đường tốt đến D.

### Cách làm

1. Hoàn thành thêm/lấy của minheap.
2. Khởi tạo nguồn0, các đỉnh khác vô cực.
3. Lấy min, bỏ bản cũ rồi nới lỏng cạnh.

### Khung code Python

```python
class MinHeap:
    def __init__(self): self.a=[]
    def them(self,d,u):
        self.a.append((d,u))
        i=len(self.a)-1
        # TODO: đẩy lên theo ưu tiên.
        raise NotImplementedError("minheap thêm")
    def lay(self):
        if not self.a: raise IndexError("heap rỗng")
        # TODO: giữ gốc, thay cuối, đẩy xuống.
        raise NotImplementedError("minheap lấy")
def dijkstra(g,nguon):
    d={u:float("inf") for u in g}
    d[nguon]=0
    h=MinHeap();h.them(0,nguon)
    while h.a:
        du,u=h.lay()
        # TODO: bỏ bản cũ; thử du+w với từng cạnh.
        for v,w in g[u]:
            raise NotImplementedError("nới lỏng, cập nhật d, thêm heap")
    return d
g={"A":[("B",4),("C",1)],"B":[("D",1)],
   "C":[("B",2),("D",5)],"D":[]}
print("Mong đợi:A0,B3,C1,D4")
try: print(dijkstra(g,"A"))
except NotImplementedError as e: print("TODO:",e)
```

- Cạnh và đỉnh nằm ngay trong dict; không đọc tệp.
- Hai đỉnh có cùng ưu tiên vẫn phải lấy đúng thứ tự ưu tiên.

```text
python -X utf8 bai_tap/python/bai36.py
```

### Khung code Julia

```julia
mutable struct MinHeap
    a::Vector{Tuple{Int,String}}
end
MinHeap()=MinHeap(Tuple{Int,String}[])
function them!(h,d,u)
    push!(h.a,(d,u))
    i=length(h.a)
    error("TODO: đẩy lên")
end
function lay!(h)
    isempty(h.a) && error("heap rỗng")
    error("TODO: giữ gốc, thay cuối, đẩy xuống")
end
function dijkstra(g,nguon)
    d=Dict(u=>typemax(Int) for u in keys(g))
    d[nguon]=0
    h=MinHeap();them!(h,0,nguon)
    while !isempty(h.a)
        du,u=lay!(h)
        # TODO: bỏ bản cũ trước khi nới lỏng.
        for (v,w) in g[u]
            error("TODO: cập nhật khoảng cách và heap")
        end
    end
    return d
end
g=Dict("A"=>[("B",4),("C",1)],"B"=>[("D",1)],
       "C"=>[("B",2),("D",5)],"D"=>Tuple{String,Int}[])
println("Mong đợi:A0,B3,C1,D4")
try; println(dijkstra(g,"A"))
catch e; println(sprint(showerror,e)); end
```

- Heap nội bộ Julia dùng chỉ số1, khác Python0.
- Chỉ nới lỏng từ đỉnh có khoảng cách hữu hạn.

```text
julia bai_tap/julia/bai36.jl
```

### Tự kiểm tra

- Nguồn A.: A0,B3,C1,D4.
- Thêm ưu tiên4,1,3 rồi lấy.: 1,3,4.

Vì sao bản B=4 cần bị bỏ sau khi đã tìm được B=3?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 37 — Khôi phục cây bằng chương trình

**Mục đích:** Dựng lại cây từ dãy duyệt trước và duyệt giữa.

### Ôn lý thuyết

**Hai nguồn thông tin**

Phần tử đầu của duyệt trước là gốc. Trong duyệt giữa, vị trí gốc chia các khóa thành cây con trái và phải. Số khóa bên trái cho biết độ dài đoạn tương ứng trong duyệt trước. Lặp quy tắc cho hai cây con.

**Điều kiện khôi phục**

Hai dãy phải cùng tập khóa phân biệt và cùng độ dài. Đoạn rỗng cho cây rỗng. Không dựng bằng thao tác chèn BST, vì cây cần khôi phục có thể là cây nhị phân tổng quát.

### Ví dụ nhỏ

Trước=[8,3,1,6,10]; giữa=[1,3,6,8,10].

### Cách làm

1. Kiểm hai dãy và lấy gốc từ duyệt trước.
2. Tìm vị trí gốc trong duyệt giữa, tính số khóa trái.
3. Chia các đoạn tương ứng rồi nối kết quả hai con.

### Khung code Python

```python
def khoi_phuc(truoc,giua):
    if len(truoc)!=len(giua) or set(truoc)!=set(giua):
        raise ValueError("hai dãy không tương ứng")
    if len(set(truoc))!=len(truoc):
        raise ValueError("khóa phải phân biệt")
    if not truoc: return None
    goc=truoc[0]
    p=giua.index(goc)
    # TODO: dùng p chia hai dãy; gọi hai cây con.
    # Trả tuple (goc,trai,phai).
    raise NotImplementedError("chia đoạn và nối cây")
def sau(g):
    return [] if g is None else sau(g[1])+sau(g[2])+[g[0]]
truoc=[8,3,1,6,10];giua=[1,3,6,8,10]
print("Mong đợi duyệt sau:[1,6,3,10,8]")
try: print(sau(khoi_phuc(truoc,giua)))
except NotImplementedError as e: print("TODO:",e)
```

- Hàm sau được cho sẵn để đối chiếu cây mới.
- Lát cắt dùng trong ví dụ nhỏ, không cần tối ưu bảng chỉ số.

```text
python -X utf8 bai_tap/python/bai37.py
```

### Khung code Julia

```julia
function khoi_phuc(truoc,giua)
    length(truoc)==length(giua) && Set(truoc)==Set(giua) ||
        error("hai dãy không tương ứng")
    length(unique(truoc))==length(truoc) || error("khóa trùng")
    isempty(truoc) && return nothing
    goc=first(truoc)
    p=findfirst(==(goc),giua)
    # TODO: chia đoạn theo p, trả (goc,trai,phai).
    error("TODO B37: dựng hai cây con")
end
sau(g)=g===nothing ? Int[] : vcat(sau(g[2]),sau(g[3]),[g[1]])
truoc=[8,3,1,6,10];giua=[1,3,6,8,10]
println("Mong đợi duyệt sau:[1,6,3,10,8]")
try; println(sau(khoi_phuc(truoc,giua)))
catch e; println(sprint(showerror,e)); end
```

- p là chỉ số Julia bắt đầu1; số nút trái bằng p−1.
- Cây kết quả dùng tuple để in và duyệt dễ dàng.

```text
julia bai_tap/julia/bai37.jl
```

### Tự kiểm tra

- Hai dãy ví dụ.: Duyệt sau [1,6,3,10,8].
- Hai dãy rỗng.: Cây rỗng.

Vì sao dãy duyệt trước riêng lẻ chưa xác định duy nhất hình dạng cây?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 38 — AVL có xoá và cân bằng

**Mục đích:** Xóa khóa khỏi AVL và cân bằng lại trên đường về gốc.

### Ôn lý thuyết

**Xóa và cập nhật**

Trước tiên xóa như BST, nhận lại cây con thay thế. Nếu nút còn tồn tại, tính chiều cao hai con rồi xét cân bằng. Xóa làm chiều cao giảm, nên nhiều tổ tiên có thể cần được xử lý.

**Chọn quay sau xóa**

Dùng hệ số của con nặng để chọn quay đơn hoặc kép, không dùng khóa đã xóa. Phải xét cả trường hợp hệ số con bằng0. Quay xong trả gốc mới; thứ tự duyệt giữa phải giữ nguyên.

```text
balance = cao(trái) − cao(phải).
```

### Ví dụ nhỏ

AVL gốc4, trái2 có hai lá1,3, phải là lá5; xóa5.

### Cách làm

1. Viết xóa đủ0/1/2 con trên cây tuple.
2. Xét lệch và hệ số con để chọn quay.
3. Kiểm dãy giữa, gốc và chiều cao sau xóa5.

### Khung code Python

```python
def cao(g):
    return 0 if g is None else 1+max(cao(g[1]),cao(g[2]))
def can(g):
    return 0 if g is None else cao(g[1])-cao(g[2])
def giua(g):
    return [] if g is None else giua(g[1])+[g[0]]+giua(g[2])
def quay_trai(g):
    # TODO: trả tuple mới, giữ cây con trung gian.
    raise NotImplementedError("quay trái")
def quay_phai(g):
    raise NotImplementedError("quay phải đối xứng")
def xoa_avl(g,x):
    if g is None: return None
    k,trai,phai=g
    # TODO: xóa đúng nhánh/0,1,2 con; nối lại tuple.
    # TODO: xét can(g), can(con); quay; trả gốc mới.
    raise NotImplementedError("xóa và cân bằng")
g=(4,(2,(1,None,None),(3,None,None)),(5,None,None))
print("Mong đợi:giữa[1,2,3,4],gốc2,cao3")
try:
    g=xoa_avl(g,5)
    print(giua(g),g[0],cao(g))
except NotImplementedError as e: print("TODO:",e)
```

- Tuple không sửa tại chỗ: tạo tuple mới với hai con vừa cập nhật.
- Các hàm cao/can/giua đã có để tập trung vào xóa và quay.

```text
python -X utf8 bai_tap/python/bai38.py
```

### Khung code Julia

```julia
cao(g)=g===nothing ? 0 : 1+max(cao(g[2]),cao(g[3]))
can(g)=g===nothing ? 0 : cao(g[2])-cao(g[3])
giua(g)=g===nothing ? Int[] : vcat(giua(g[2]),[g[1]],giua(g[3]))
quay_trai(g)=error("TODO: quay trái, giữ cây trung gian")
quay_phai(g)=error("TODO: quay phải đối xứng")
function xoa_avl(g,x)
    g===nothing && return nothing
    k,trai,phai=g
    # TODO: xóa BST, dựng lại tuple, kiểm hệ số con.
    error("TODO B38: cân bằng và trả gốc")
end
println("Mong đợi:giữa[1,2,3,4],gốc2,cao3")
try
    let g=(4,(2,(1,nothing,nothing),(3,nothing,nothing)),(5,nothing,nothing))
        g=xoa_avl(g,5)
        println(giua(g)," ",g[1]," ",cao(g))
    end
catch e; println(sprint(showerror,e)); end
```

- Kiểm hệ số con bằng0 trong ví dụ này.
- Mỗi lần đệ quy nhận lại cây con mới.

```text
julia bai_tap/julia/bai38.jl
```

### Tự kiểm tra

- Xóa5 khỏi cây ví dụ.: Gốc2, giữa1,2,3,4, cao3.
- Xóa khóa9 không có.: Cây giữ nguyên.

Vì sao xóa có thể cần cân bằng lại nhiều tổ tiên?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 39 — Ôn BST, AVL và tập hợp

**Mục đích:** Đối chiếu kết quả tìm trên BST, AVL và tập Set nhỏ.

### Ôn lý thuyết

**Cùng khóa, khác hình dạng**

BST thường có thể lệch, còn AVL giữ chiều cao cân bằng. Hai cây chứa cùng năm khóa phải trả cùng kết quả tìm. Trong bản ôn tập này, hai hình dạng được dựng trực tiếp để tập trung vào đường tìm và kết quả.

**Tập băm**

Python set và Julia Set dùng băm, không phải cây có thứ tự như std::set C++. Bài nhỏ chỉ đối chiếu có/không trên cùng truy vấn; không đo thời gian và không dùng kết quả này để kết luận cấu trúc nào nhanh hơn.

### Ví dụ nhỏ

BST là đường1→2→3→4→5; AVL gốc3. Truy vấn [0,1,3,5,6].

### Cách làm

1. Quan sát hai cây đã khai báo cùng khóa1..5.
2. Hoàn thành tìm kiếm theo so sánh khóa.
3. Đối chiếu với set cho cả khóa có và không có.

### Khung code Python

```python
def tim(g,x):
    while g is not None:
        k,trai,phai=g
        if x==k: return True
        # TODO: chuyển g sang con đúng phía.
        raise NotImplementedError("tìm BST/AVL")
    return False
bst=(1,None,(2,None,(3,None,(4,None,(5,None,None)))))
avl=(3,(2,(1,None,None),None),(4,None,(5,None,None)))
tap={1,2,3,4,5}
truy_van=[0,1,3,5,6]
print("Mong đợi cả ba:[False,True,True,True,False]")
try:
    print("BST:",[tim(bst,x) for x in truy_van])
    print("AVL:",[tim(avl,x) for x in truy_van])
    print("set:",[x in tap for x in truy_van])
except NotImplementedError as e: print("TODO:",e)
```

- Cùng thuật toán tìm dùng cho BST và AVL vì cả hai giữ thứ tự khóa.
- set là đối chứng về nội dung tập.

```text
python -X utf8 bai_tap/python/bai39.py
```

### Khung code Julia

```julia
function tim(g,x)
    while g!==nothing
        k,trai,phai=g
        x==k && return true
        error("TODO: chọn con theo so sánh")
    end
    return false
end
bst=(1,nothing,(2,nothing,(3,nothing,(4,nothing,(5,nothing,nothing)))))
avl=(3,(2,(1,nothing,nothing),nothing),(4,nothing,(5,nothing,nothing)))
tap=Set([1,2,3,4,5]);truy_van=[0,1,3,5,6]
println("Mong đợi cả ba:[false,true,true,true,false]")
try
    println("BST:",[tim(bst,x) for x in truy_van])
    println("AVL:",[tim(avl,x) for x in truy_van])
    println("Set:",[x in tap for x in truy_van])
catch e; println(sprint(showerror,e)); end
```

- Không cần cài thao tác chèn trong bài đối chiếu nhỏ này.
- Cây tuple và Set cùng khai báo ngay trong code.

```text
julia bai_tap/julia/bai39.jl
```

### Tự kiểm tra

- Tìm1,3,5.: Có ở cả ba cấu trúc.
- Tìm0,6.: Không có ở cả ba.

Tìm5 đi qua bao nhiêu nút trong mỗi hình dạng cây đã cho?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 40 — Viết lại Heapsort và Quicksort

**Mục đích:** Ôn heap sort và quick sort trên tám số.

### Ôn lý thuyết

**Heap sort**

Sắp tăng dần dùng đống cực đại. Gốc lớn nhất được đổi về cuối, vùng đống giảm một phần tử rồi vun lại. Chỉ vun trong vùng chưa sắp; phần đuôi đã đúng vị trí không được làm xáo trộn.

**Quick sort**

Chọn chốt rồi phân hoạch thành các đoạn nhỏ hơn để xử lý. Hai thuật toán phải sửa mảng tại chỗ và giữ đủ các phần tử, kể cả khóa trùng. Ở đây chỉ đối chiếu kết quả, không đo thời gian.

```text
Heap sort: xây đống → lấy cực đại → giảm vùng đống.
```

### Ví dụ nhỏ

a=[7,2,9,1,5,3,8,4]; kết quả [1,2,3,4,5,7,8,9].

### Cách làm

1. Viết đẩy xuống và dùng nó xây maxheap.
2. Hoàn thành lấy gốc về cuối và quick sort phân hoạch.
3. Thử hai bản sao của mảng tám số.

### Khung code Python

```python
def day_xuong(a,i,n):
    while 2*i+1<n:
        # TODO: chọn con lớn hơn; đổi nếu cha nhỏ; tiến i.
        raise NotImplementedError("vun đống")
def heap_sort(a):
    n=len(a)
    for i in range(n//2-1,-1,-1): day_xuong(a,i,n)
    for cuoi in range(n-1,0,-1):
        # TODO: đổi gốc/cuối rồi vun vùng còn lại.
        raise NotImplementedError("lấy cực đại")
def quick_sort(a,lo=0,hi=None):
    if hi is None: hi=len(a)-1
    if lo>=hi: return
    # TODO: chốt, phân hoạch và hai đoạn nhỏ hơn.
    raise NotImplementedError("quick sort")
a=[7,2,9,1,5,3,8,4]
print("Mong đợi:[1,2,3,4,5,7,8,9]")
for ham in [heap_sort,quick_sort]:
    b=a.copy()
    try: ham(b);print(b)
    except NotImplementedError as e: print("TODO:",e)
```

- n trong day_xuong là số phần tử của vùng đống, không phải chỉ số cuối.
- Không dùng sort thay phần thuật toán TODO.

```text
python -X utf8 bai_tap/python/bai40.py
```

### Khung code Julia

```julia
function day_xuong!(a,i,n)
    while 2*i<=n
        error("TODO: chọn con lớn, đổi và tiến xuống")
    end
end
function heap_sort!(a)
    n=length(a)
    for i in (n÷2):-1:1;day_xuong!(a,i,n);end
    for cuoi in n:-1:2
        error("TODO: đổi gốc/cuối, vun vùng nhỏ hơn")
    end
end
function quick_sort!(a,lo=1,hi=length(a))
    lo>=hi && return
    error("TODO: chọn chốt, phân hoạch, xử lý hai đoạn")
end
a=[7,2,9,1,5,3,8,4]
println("Mong đợi:[1,2,3,4,5,7,8,9]")
for ham in (heap_sort!,quick_sort!)
    b=copy(a)
    try;ham(b);println(b)
    catch e;println(sprint(showerror,e));end
end
```

- Con trái trong mảng1-based ở2*i.
- Dấu ! cho biết mảng đầu vào bị thay đổi.

```text
julia bai_tap/julia/bai40.jl
```

### Tự kiểm tra

- Tám số đã cho.: [1,2,3,4,5,7,8,9].
- [2,2,-1,2].: [-1,2,2,2].

Vì sao sau mỗi vòng heap sort, phần đuôi đã sắp dài thêm một?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 41 — Fenwick hoặc cây phân đoạn

**Mục đích:** Tính tổng đoạn và gán một phần tử bằng Fenwick.

### Ôn lý thuyết

**Các tổng block**

Fenwick lưu tổng những block kết thúc tại mỗi vị trí nội bộ1-based. lowbit chỉ độ dài block. Cộng các block đi xuống cho tổng tiền tố; cập nhật các block đi lên khi một phần tử đổi.

```text
lowbit(i)=i & (−i).
```

**Tổng đoạn và cập nhật**

Tổng[l,r] bằng hai tổng tiền tố chênh nhau. Giao diện ngoài dùng chỉ số0-based. Khi gán giá trị mới, tính delta=mới−cũ rồi cộng delta vào block, không coi giá trị mới là độ tăng.

```text
sum(l,r)=P(r)−P(l−1).
```

### Ví dụ nhỏ

a=[2,1,4,3,5], hỏi[1,3] được8; gán a[2]=6 rồi hỏi lại được10.

### Cách làm

1. Hoàn thành vòng cập nhật block theo lowbit.
2. Hoàn thành tổng tiền tố rồi tổng đoạn.
3. Thử gán4 thành6 và gán6 lần nữa.

### Khung code Python

```python
class Fenwick:
    def __init__(self,a):
        self.a=a.copy();self.bit=[0]*(len(a)+1)
        for i,x in enumerate(a): self.cong(i,x)
    def cong(self,i,delta):
        j=i+1
        while j<len(self.bit):
            # TODO: cộng delta tại j, tiến j theo lowbit.
            raise NotImplementedError("cập nhật block")
    def gan(self,i,moi):
        delta=moi-self.a[i];self.a[i]=moi
        self.cong(i,delta)
    def tien_to(self,r):
        j=r+1;total=0
        while j>0:
            # TODO: cộng block, giảm j theo lowbit.
            raise NotImplementedError("tổng tiền tố")
        return total
    def doan(self,l,r):
        return self.tien_to(r)-self.tien_to(l-1)
print("Mong đợi:8,10,10")
try:
    f=Fenwick([2,1,4,3,5])
    print(f.doan(1,3))
    f.gan(2,6);print(f.doan(1,3))
    f.gan(2,6);print(f.doan(1,3))
except NotImplementedError as e: print("TODO:",e)
```

- Cấu trúc hỗ trợ đã có; chỉ sửa hai vòng while.
- Tiền tố kết thúc tại-1 trả0.

```text
python -X utf8 bai_tap/python/bai41.py
```

### Khung code Julia

```julia
mutable struct Fenwick
    a::Vector{Int};bit::Vector{Int}
end
function cong!(f,i,delta)
    j=i+1
    while j<=length(f.bit)
        error("TODO: cộng delta và tiến theo lowbit")
    end
end
function Fenwick(a::Vector{Int})
    f=Fenwick(copy(a),zeros(Int,length(a)))
    for i in eachindex(a);cong!(f,i-1,a[i]);end
    return f
end
function gan!(f,i,moi)
    delta=moi-f.a[i+1];f.a[i+1]=moi
    cong!(f,i,delta)
end
function tien_to(f,r)
    j=r+1;total=0
    while j>0
        error("TODO: cộng block và giảm theo lowbit")
    end
    return total
end
doan(f,l,r)=tien_to(f,r)-tien_to(f,l-1)
println("Mong đợi:8,10,10")
try
    f=Fenwick([2,1,4,3,5]);println(doan(f,1,3))
    gan!(f,2,6);println(doan(f,1,3))
    gan!(f,2,6);println(doan(f,1,3))
catch e;println(sprint(showerror,e));end
```

- Giao diện i,l,r vẫn0-based; đổi sang vị trí Vector bằng+1.
- gan! đã chuyển phép gán thành độ tăng delta.

```text
julia bai_tap/julia/bai41.jl
```

### Tự kiểm tra

- Hỏi[1,3], rồi gán4→6.: 8 rồi10.
- Gán6 lần nữa.: Vẫn10.

Vì sao dùng lowbit tại chỉ số0 có thể làm vòng lặp không tiến?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 42 — Mã hóa và giải mã Huffman

**Mục đích:** Tạo mã Huffman và giải mã chuỗi BANANA.

### Ôn lý thuyết

**Ghép hai tần số nhỏ**

Huffman đếm số lần mỗi ký tự rồi liên tục ghép hai nút có tần số nhỏ nhất. Hai nhánh mang bit0/1; đường từ gốc đến lá là mã của ký tự. Chuỗi nhỏ có thể chọn hai cực tiểu từ danh sách.

**Mã tiền tố**

Không mã ký tự nào là tiền tố của mã khác nên giải mã đọc bit đến khi khớp một mã, xuất ký tự rồi bắt đầu lại. BANANA có A3,N2,B1; bộ mã có thể khác khi hòa, nhưng luôn giải về đúng chuỗi.

```text
Với BANANA: tổng độ dài mã =9bit.
```

### Ví dụ nhỏ

Chuỗi s='BANANA' có ba loại ký tự; không đọc hoặc nén tệp.

### Cách làm

1. Đếm tần số, ghép cây và gán mã theo cạnh.
2. Mã hóa bằng cách ghép mã từng ký tự.
3. Giải mã từng đoạn tiền tố và so chuỗi BANANA.

### Khung code Python

```python
def bang_ma(s):
    freq={c:s.count(c) for c in set(s)}
    nodes=[(f,c) for c,f in freq.items()]
    if not nodes: return {}
    while len(nodes)>1:
        nodes.sort(key=lambda x:x[0])
        f1,t1=nodes.pop(0);f2,t2=nodes.pop(0)
        # TODO: đưa (f1+f2,(t1,t2)) trở lại danh sách.
        raise NotImplementedError("ghép hai nút nhỏ nhất")
    ma={}
    def ve(nut,p):
        if isinstance(nut,str): ma[nut]=p or "0";return
        # TODO: đi trái/phải, nối bit0/1.
        raise NotImplementedError("gán mã theo cạnh")
    ve(nodes[0][1],"")
    return ma
def ma_hoa(s,ma):
    bits=[]
    for c in s:
        # TODO: thêm mã của c vào bits.
        raise NotImplementedError("mã hóa ký tự")
    return "".join(bits)
def giai_ma(bits,ma):
    nguoc={v:k for k,v in ma.items()}
    out=[];p=""
    for b in bits:
        p+=b
        # TODO: nếu p khớp mã, xuất ký tự rồi reset p.
        raise NotImplementedError("đọc mã tiền tố")
    return "".join(out)
s="BANANA"
print("Mong đợi:3 mã,9 bit; giải mã=BANANA")
try:
    ma=bang_ma(s);bits=ma_hoa(s,ma)
    print(ma,bits,len(bits),giai_ma(bits,ma))
except NotImplementedError as e: print("TODO:",e)
```

- Nút lá là ký tự; nút trong là tuple hai con.
- Bài nhỏ chỉ làm chuỗi bit, chưa đóng gói byte hoặc tệp.

```text
python -X utf8 bai_tap/python/bai42.py
```

### Khung code Julia

```julia
function bang_ma(s)
    freq=Dict(c=>count(==(c),s) for c in unique(s))
    nodes=Tuple{Int,Any}[(f,c) for (c,f) in freq]
    isempty(nodes) && return Dict{Char,String}()
    while length(nodes)>1
        sort!(nodes;by=x->x[1])
        f1,t1=popfirst!(nodes);f2,t2=popfirst!(nodes)
        error("TODO: ghép tần số và cặp cây con")
    end
    ma=Dict{Char,String}()
    function ve(nut,p)
        if nut isa Char;ma[nut]=isempty(p) ? "0" : p;return;end
        error("TODO: đi hai cạnh và nối0/1")
    end
    ve(nodes[1][2],"");return ma
end
function ma_hoa(s,ma)
    bits=String[]
    for c in s;error("TODO: push! mã ký tự");end
    return join(bits)
end
function giai_ma(bits,ma)
    nguoc=Dict(v=>k for (k,v) in ma);out=Char[];p=""
    for b in bits
        p*=string(b)
        error("TODO: khớp mã, xuất, reset p")
    end
    return join(out)
end
s="BANANA"
println("Mong đợi:3 mã,9bit; giải mã=BANANA")
try
    ma=bang_ma(s);bits=ma_hoa(s,ma)
    println(ma," ",bits," ",length(bits)," ",giai_ma(bits,ma))
catch e;println(sprint(showerror,e));end
```

- Vector nodes cho phép lá Char và nút trong tuple.
- Không đòi cùng bảng mã khi hòa, chỉ đòi mã tiền tố và khôi phục đúng.

```text
julia bai_tap/julia/bai42.jl
```

### Tự kiểm tra

- BANANA.: 9bit, giải mã BANANA.
- AAAA.: Một mã hợp lệ, giải mã AAAA.

Vì sao hai bảng mã khác nhau vẫn có thể nén và giải mã đúng cùng chuỗi?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 43 — Tổ tiên chung gần nhất

**Mục đích:** Tìm tổ tiên chung gần nhất trong BST và cây tổng quát.

### Ôn lý thuyết

**LCA**

Tổ tiên chung gần nhất là tổ tiên chung nằm sâu nhất. Một nút là tổ tiên của chính nó; nếu một nút nằm trên đường tới nút kia thì nó là kết quả. Hai nút phải thực sự có mặt trong cây.

**Hai cách tìm**

BST dùng khóa: cùng phía thì đi xuống, tách phía thì gặp ứng viên. Cây tổng quát xét hai nhánh và so đối tượng nút, không so riêng giá trị. Thông tin thứ tự khóa không dùng được trên cây tổng quát.

### Ví dụ nhỏ

Gốc8, trái3 có hai lá1,6, phải10; LCA(1,6)=3 và LCA(3,6)=3.

### Cách làm

1. Dùng hàm hỗ trợ kiểm hai khóa hoặc hai nút có mặt.
2. Viết LCA BST theo đường chung của hai khóa.
3. Viết LCA tổng quát bằng kết quả từ hai nhánh.

### Khung code Python

```python
class Nut:
    def __init__(self,x,trai=None,phai=None):
        self.gt,self.trai,self.phai=x,trai,phai
def tim(g,x):
    while g is not None:
        if g.gt==x: return g
        g=g.trai if x<g.gt else g.phai
    return None
def co(g,x):
    return g is not None and (g is x or co(g.trai,x) or co(g.phai,x))
def lca_bst(g,x,y):
    if tim(g,x) is None or tim(g,y) is None: return None
    while g is not None:
        # TODO: cùng phía thì đi; tách phía/bằng thì trả g.
        raise NotImplementedError("LCA BST")
def lca_chung(g,x,y):
    if not co(g,x) or not co(g,y): return None
    def di(u):
        if u is None: return None
        if u is x or u is y: return u
        # TODO: lấy hai kết quả con và tổng hợp.
        raise NotImplementedError("LCA tổng quát")
    return di(g)
mot,sau=Nut(1),Nut(6)
ba=Nut(3,mot,sau);g=Nut(8,ba,Nut(10))
print("Mong đợi:3,3")
try: print(lca_bst(g,1,6).gt,lca_chung(g,ba,sau).gt)
except NotImplementedError as e: print("TODO:",e)
```

- tim và co đã có để tập trung vào hai hàm LCA.
- Bản tổng quát dùng is với nút thật đã gắn trong cây.

```text
python -X utf8 bai_tap/python/bai43.py
```

### Khung code Julia

```julia
mutable struct Nut
    gt::Int;trai::Union{Nothing,Nut};phai::Union{Nothing,Nut}
end
Nut(x)=Nut(x,nothing,nothing)
function tim(g,x)
    while g!==nothing
        g.gt==x && return g
        g=x<g.gt ? g.trai : g.phai
    end
    return nothing
end
co(g,x)=g!==nothing && (g===x || co(g.trai,x) || co(g.phai,x))
function lca_bst(g,x,y)
    (tim(g,x)===nothing || tim(g,y)===nothing) && return nothing
    while g!==nothing
        error("TODO: cùng phía đi xuống, tách phía trả g")
    end
end
function lca_chung(g,x,y)
    (!co(g,x) || !co(g,y)) && return nothing
    function di(u)
        u===nothing && return nothing
        (u===x || u===y) && return u
        error("TODO: tổng hợp hai kết quả con")
    end
    return di(g)
end
mot,sau=Nut(1),Nut(6)
ba=Nut(3,mot,sau);g=Nut(8,ba,Nut(10))
println("Mong đợi:3,3")
try;println(lca_bst(g,1,6).gt," ",lca_chung(g,ba,sau).gt)
catch e;println(sprint(showerror,e));end
```

- === kiểm cùng đối tượng Nut trong bản tổng quát.
- Cây và hai nút hỏi đều khai báo trong đoạn thử.

```text
julia bai_tap/julia/bai43.jl
```

### Tự kiểm tra

- Cặp1,6 và cặp3,6.: Đều trả nút3.
- Một nút không thuộc cây.: Rỗng.

Tại sao LCA tổng quát không thể quyết định nhánh bằng so sánh khóa?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 44 — Cây giống nhau và cây con

**Mục đích:** So hình dạng/giá trị hai cây và kiểm cây con nguyên vẹn.

### Ôn lý thuyết

**Hai cây giống nhau**

Hai cây giống nhau nếu hai gốc cùng rỗng, hoặc cùng giá trị và hai cặp con tương ứng giống nhau. Trái phải đúng với trái, không được đổi sang phải. Cùng tập giá trị chưa đủ để kết luận.

**Cây con**

Cây nhỏ phải khớp toàn bộ tại một nút của cây lớn, kể cả vị trí rỗng. Nếu chưa khớp tại gốc thì thử ở hai con. Quy ước cây rỗng là cây con của mọi cây; một lá không khớp nút cùng khóa nhưng còn hậu duệ.

### Ví dụ nhỏ

A gốc8, trái3 có phải6, phải10. B là cây3→6; C chỉ là lá3.

### Cách làm

1. Viết bằng nhau với đủ trường hợp rỗng và so khóa.
2. Thử khớp tại gốc rồi tìm trong hai nhánh.
3. Đối chiếu cây con đủ nhánh và cây chỉ có lá3.

### Khung code Python

```python
def cung_cay(a,b):
    if a is None or b is None: return a is None and b is None
    if a[0]!=b[0]: return False
    # TODO: kiểm cặp trái và cặp phải tương ứng.
    raise NotImplementedError("so hình dạng con")
def la_cay_con(g,b):
    if b is None: return True
    if g is None: return False
    # TODO: cung_cay tại g hoặc tìm ở hai con.
    raise NotImplementedError("tìm cây con nguyên vẹn")
a=(8,(3,None,(6,None,None)),(10,None,None))
b=(3,None,(6,None,None));c=(3,None,None)
print("Mong đợi:B=True,C=False; hai rỗng=True")
try:
    print(la_cay_con(a,b),la_cay_con(a,c),cung_cay(None,None))
except NotImplementedError as e: print("TODO:",e)
```

- Tuple biểu diễn cả vị trí rỗng, không chỉ danh sách khóa.
- Không dùng dãy giữa hoặc set để so hình dạng.

```text
python -X utf8 bai_tap/python/bai44.py
```

### Khung code Julia

```julia
function cung_cay(a,b)
    (a===nothing || b===nothing) && return a===nothing && b===nothing
    a[1]!=b[1] && return false
    error("TODO: so cặp trái và cặp phải")
end
function la_cay_con(g,b)
    b===nothing && return true
    g===nothing && return false
    error("TODO: thử khớp tại g, tìm hai nhánh")
end
a=(8,(3,nothing,(6,nothing,nothing)),(10,nothing,nothing))
b=(3,nothing,(6,nothing,nothing));c=(3,nothing,nothing)
println("Mong đợi:B=true,C=false; hai rỗng=true")
try;println(la_cay_con(a,b)," ",la_cay_con(a,c)," ",cung_cay(nothing,nothing))
catch e;println(sprint(showerror,e));end
```

- Không đòi hai cây cùng đối tượng: chỉ so hình dạng và giá trị.
- Cây nhỏ phải giữ đầy đủ hậu duệ tại vị trí khớp.

```text
julia bai_tap/julia/bai44.jl
```

### Tự kiểm tra

- B và C trong câyA.: B có, C không.
- Hai cây cùng khóa khác hình dạng.: Không giống nhau.

Vì sao lá3 không là cây con nguyên vẹn của nút3 có con phải6?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 45 — Cây quyết định dùng Gini

**Mục đích:** Luyện đi theo các câu hỏi của cây để phân loại.

### Ôn lý thuyết

**Dự đoán từ cây đã có**

Huấn luyện tạo cây; dự đoán dùng cây đó để tìm nhãn cho một mẫu. Ở nút hỏi, đọc đúng thuộc tính rồi chọn cạnh tương ứng. Lặp cho đến lá. Mẫu dự đoán chỉ chứa thuộc tính, không chứa nhãn cần tìm.

**Giá trị chưa gặp**

Một mẫu có thể có giá trị chưa xuất hiện trong các nhánh. Không được tự chọn nhánh đầu tiên. Trong bài nhỏ này hãy báo lỗi rõ; sau đó có thể thảo luận cách dùng nhãn đa số dự phòng. Cột Python bắt đầu 0, Julia bắt đầu 1.

### Ví dụ nhỏ

Cây hỏi thời tiết: mây → có; nắng → hỏi gió, nhẹ → có, mạnh → không.

### Cách làm

1. Khai báo cây nhỏ và xác định nút hỏi, cạnh, lá.
2. Điền bước chọn cây con trong vòng lặp dự đoán.
3. Thử một mẫu quen và một mẫu có giá trị mới.

### Khung code Python

```python
# Dữ liệu nhỏ để đọc và đối chiếu cây:
DATA = [["mây", "nhẹ", "có"], ["mây", "mạnh", "có"],
        ["nắng", "nhẹ", "có"], ["nắng", "mạnh", "không"]]
TREE = (0, {"mây": "có",
            "nắng": (1, {"nhẹ": "có", "mạnh": "không"})})

def predict(tree, sample):
    current = tree
    while not isinstance(current, str):
        col, branches = current
        value = sample[col]
        if value not in branches:
            raise ValueError("Thuộc tính chưa gặp: " + value)
        # TODO: current nhận cây con branches[value].
        raise NotImplementedError("TODO: đi theo một cạnh")
    return current

# Sau TODO: kết quả "không", rồi "có".
print(predict(TREE, ["nắng", "mạnh"]))
print(predict(TREE, ["mây", "nhẹ"]))
```

- Đây là khung phân loại độc lập; bạn có thể dùng cây đã tự học ở TH7.2A.
- Không thêm nhãn vào sample.

```text
python -X utf8 bai_tap/python/bai45.py
```

### Khung code Julia

```julia
DATA = [["mây","nhẹ","có"], ["mây","mạnh","có"],
        ["nắng","nhẹ","có"], ["nắng","mạnh","không"]]
TREE = (1, Dict("mây"=>"có",
       "nắng"=>(2,Dict("nhẹ"=>"có","mạnh"=>"không"))))
function predict(tree,sample)
    current = tree
    while !(current isa String)
        col,branches = current
        value = sample[col]
        haskey(branches,value) ||
            throw(ArgumentError("Thuộc tính chưa gặp: "*value))
        # TODO current = branches[value]
        error("TODO: đi theo một cạnh")
    end
    return current
end
# Sau TODO: "không", rồi "có".
println(predict(TREE,["nắng","mạnh"]))
println(predict(TREE,["mây","nhẹ"]))
```

- Tuple biểu diễn nút hỏi; String biểu diễn lá.
- Cây cùng ý nghĩa với bản Python, chỉ số cột được cộng 1.

```text
julia bai_tap/julia/bai45.jl
```

### Tự kiểm tra

- nắng, mạnh: không.
- mưa, nhẹ: Báo thuộc tính chưa gặp.

Làm sao giải thích một dự đoán bằng đường từ gốc tới lá?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 46 — Entropy và độ lợi thông tin

**Mục đích:** Tự tính entropy và độ lợi thông tin trên bốn mẫu.

### Ôn lý thuyết

**Entropy**

Entropy diễn tả mức khó đoán của nhãn. Nhóm thuần nhất có entropy 0; hai nhãn cân bằng có entropy 1 bit. Mỗi xác suất phải lấy từ số đếm chia tổng mẫu. Chỉ xét nhãn có số đếm dương để tránh logarit của 0.

```text
H = −Σ p × log₂(p).
```

**Độ lợi thông tin**

Độ lợi bằng entropy trước chia trừ entropy sau chia có trọng số. Cột có độ lợi lớn nhất được ưu tiên. Hướng chọn khác Gini sau chia: Gini cần nhỏ nhất, còn độ lợi cần lớn nhất.

```text
Gain = H(cha) − Σ(trọng số nhóm × H(nhóm)).
```

### Ví dụ nhỏ

Bốn mẫu màu/cỡ/nhãn như TH7.2A: chia màu thuần nhất, chia cỡ vẫn lẫn hai nhãn.

### Cách làm

1. Điền một hạng entropy từ xác suất p.
2. Gom mẫu theo cột rồi trừ entropy con có trọng số.
3. Tính gain hai cột và chọn cột tốt hơn.

### Khung code Python

```python
from math import log2  # Thư viện chuẩn.
DATA = [["đỏ", "nhỏ", "có"], ["đỏ", "lớn", "có"],
        ["xanh", "nhỏ", "không"], ["xanh", "lớn", "không"]]

def entropy(labels):
    if not labels:
        return 0.0
    counts = {}
    for x in labels:
        counts[x] = counts.get(x, 0) + 1
    result = 0.0
    for c in counts.values():
        p = c / len(labels)
        # TODO: result cộng -p * log2(p).
        raise NotImplementedError("TODO: một hạng entropy")
    return result

def gain(rows, col):
    parent = entropy([r[-1] for r in rows])
    groups = {}
    for r in rows:
        groups.setdefault(r[col], []).append(r)
    for group in groups.values():
        # TODO: trừ entropy nhóm nhân len(group)/len(rows).
        raise NotImplementedError("TODO: entropy có trọng số")
    return parent

# Sau TODO: gain màu=1.0; gain cỡ=0.0.
print(gain(DATA, 0), gain(DATA, 1))
```

- log2 nằm trong math có sẵn, không cài gói.
- Tính xong hai gain rồi tự chỉ ra hướng chọn lớn nhất.

```text
python -X utf8 bai_tap/python/bai46.py
```

### Khung code Julia

```julia
DATA = [["đỏ","nhỏ","có"], ["đỏ","lớn","có"],
        ["xanh","nhỏ","không"], ["xanh","lớn","không"]]
function entropy(labels)
    isempty(labels) && return 0.0
    counts = Dict{String,Int}()
    for x in labels
        counts[x] = get(counts,x,0)+1
    end
    result = 0.0
    for c in values(counts)
        p = c/length(labels)
        error("TODO: result cộng -p*log2(p)")
    end
    return result
end
function gain(rows,col)
    parent = entropy([r[end] for r in rows])
    groups = Dict{String,Vector{Vector{String}}}()
    for r in rows
        push!(get!(groups,r[col],Vector{String}[]),r)
    end
    for group in values(groups)
        error("TODO: trừ entropy nhóm có trọng số")
    end
    return parent
end
# Sau TODO: gain màu=1.0; gain cỡ=0.0.
println((gain(DATA,1),gain(DATA,2)))
```

- Julia có log2 trong Base.
- Không dùng div để tính xác suất vì đó là chia nguyên.

```text
julia bai_tap/julia/bai46.jl
```

### Tự kiểm tra

- Nhãn có, không: Entropy 1 bit.
- DATA, chia theo màu: Gain 1 bit.

Nếu đổi argmax gain thành argmin thì bạn đang chọn điều gì?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 47 — Thuộc tính liên tục

**Mục đích:** Tìm ngưỡng chia tốt cho một thuộc tính số.

### Ôn lý thuyết

**Chia theo ngưỡng**

Thuộc tính số có thể hỏi x ≤ t thay vì tạo một cạnh cho từng giá trị. Sắp các giá trị phân biệt rồi thử trung điểm giữa hai giá trị liên tiếp. Các ngưỡng nằm trong cùng một khoảng chia mẫu giống nhau.

```text
t = (giá trị trước + giá trị sau) / 2.
```

**Đánh giá hai phía**

Mỗi ngưỡng tạo nhóm trái x ≤ t và nhóm phải x > t. Tính Gini có trọng số của hai nhóm, chọn ngưỡng cho điểm nhỏ nhất. Không tách những dòng cùng giá trị sang hai phía; một phía rỗng không phải phép chia hữu ích.

### Ví dụ nhỏ

Giá trị 1,2 mang nhãn không; 4,7 mang nhãn có. Ngưỡng 3 tách được hai nhóm thuần nhất.

### Cách làm

1. Liệt kê các ngưỡng từ bốn giá trị trong mã.
2. Điền Gini sau chia và cập nhật ngưỡng tốt nhất.
3. Thử một giá trị đúng bằng ngưỡng để kiểm dấu ≤.

### Khung code Python

```python
DATA = [[1, "không"], [2, "không"], [4, "có"], [7, "có"]]

def gini(labels):
    if not labels:
        return 0.0
    return 1 - sum((labels.count(x)/len(labels))**2
                   for x in set(labels))

def best_threshold(rows):
    values = sorted({r[0] for r in rows})
    if len(values) < 2:
        raise ValueError("Không có ngưỡng")
    best_t, best_score = None, float("inf")
    for a, b in zip(values, values[1:]):
        t = (a+b)/2
        left = [r[-1] for r in rows if r[0] <= t]
        right = [r[-1] for r in rows if r[0] > t]
        # TODO: score = Gini hai phía có trọng số.
        # TODO: nếu score tốt hơn thì cập nhật best_t,best_score.
        raise NotImplementedError("TODO: đánh giá ngưỡng " + str(t))
    return best_t, best_score

# Gini là hàm hỗ trợ; phần bạn viết là chọn ngưỡng.
# Sau TODO: (3.0, 0.0).
print(best_threshold(DATA))
```

- Hàm Gini đã cho để tập trung vào ngưỡng.
- Giữ cùng quy tắc ≤/> khi dự đoán.

```text
python -X utf8 bai_tap/python/bai47.py
```

### Khung code Julia

```julia
DATA = [Any[1,"không"],Any[2,"không"],Any[4,"có"],Any[7,"có"]]
function gini(labels)
    isempty(labels) && return 0.0
    return 1-sum((count(==(x),labels)/length(labels))^2
                 for x in unique(labels))
end
function best_threshold(rows)
    values = sort!(unique([r[1] for r in rows]))
    length(values)>1 || throw(ArgumentError("Không có ngưỡng"))
    best_t,best_score = nothing,Inf
    for i in 1:length(values)-1
        t = (values[i]+values[i+1])/2
        left = [r[end] for r in rows if r[1]<=t]
        right = [r[end] for r in rows if r[1]>t]
        # TODO Gini trọng số; cập nhật ngưỡng/điểm.
        error("TODO: đánh giá ngưỡng "*string(t))
    end
    return best_t,best_score
end
# Sau TODO: (3.0,0.0).
println(best_threshold(DATA))
```

- Any[] chứa số và nhãn trên cùng hàng.
- Vòng i bắt đầu 1; trung điểm dùng / chứ không dùng div.

```text
julia bai_tap/julia/bai47.jl
```

### Tự kiểm tra

- DATA: Ngưỡng 3, Gini sau chia 0.
- Mọi giá trị bằng 2: Báo không có ngưỡng.

Vì sao chỉ thử trung điểm các giá trị phân biệt là đủ?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 48 — Giới hạn độ sâu cây quyết định

**Mục đích:** Thử giới hạn chiều cao 1 và 2 trên bốn mẫu cố định.

### Ôn lý thuyết

**Dừng theo chiều cao**

Ở đây chiều cao tính bằng số mức: gốc ở mức 1. Giới hạn 1 chỉ cho một lá; giới hạn 2 cho phép gốc hỏi rồi các con thành lá. Khi đạt giới hạn mà nhãn còn lẫn, trả nhãn đa số của nhóm hiện tại.

**Quan sát trên ví dụ nhỏ**

Cây sâu hơn có thể biểu diễn nhiều quy tắc hơn nhưng không luôn cần sâu. Bài nhỏ này chỉ so hình cây và dự đoán trên bốn mẫu đã cho, không dùng điểm đó để kết luận khả năng dự đoán dữ liệu mới.

### Ví dụ nhỏ

Bốn mẫu: hai đỏ/có, hai xanh/không. Cao 1 trả lá đa số; cao 2 có hai lá phân biệt màu.

### Cách làm

1. Điền điều kiện dừng theo mức hiện tại.
2. Chia theo cột màu và gọi cây con với mức tăng 1.
3. In hai cây giới hạn 1 và 2, so đường hỏi.

### Khung code Python

```python
DATA = [["đỏ", "có"], ["đỏ", "có"],
        ["xanh", "không"], ["xanh", "không"]]

def majority(labels):  # Hỗ trợ: hòa chọn nhãn theo từ điển.
    return max(sorted(set(labels)), key=labels.count)

def learn(rows, max_height, level=1):
    labels = [r[-1] for r in rows]
    if len(set(labels)) == 1:
        return labels[0]
    if level >= max_height:
        # TODO: trả majority(labels), không chia tiếp.
        raise NotImplementedError("TODO: lá tại giới hạn")
    groups = {}
    for r in rows:
        groups.setdefault(r[0], []).append(r)
    children = {}
    for value, group in groups.items():
        # TODO: children[value] nhận learn(group,max_height,level+1).
        raise NotImplementedError("TODO: tăng mức khi gọi cây con")
    return (0, children)

# Sau TODO: cao 1 là lá "có";
# cao 2 hỏi màu: đỏ->có, xanh->không.
print("Cao 1:", learn(DATA, 1))
print("Cao 2:", learn(DATA, 2))
```

- Chỉ một thuộc tính nên chưa cần chọn cột bằng Gini.
- majority có sẵn; bạn viết dừng và tăng mức.

```text
python -X utf8 bai_tap/python/bai48.py
```

### Khung code Julia

```julia
DATA = [["đỏ","có"],["đỏ","có"],
        ["xanh","không"],["xanh","không"]]
function majority(labels)
    names = sort!(unique(labels))
    return names[argmax([count(==(x),labels) for x in names])]
end
function learn(rows,max_height,level=1)
    labels = [r[end] for r in rows]
    length(unique(labels))==1 && return labels[1]
    if level >= max_height
        # TODO return majority(labels)
        error("TODO: lá tại giới hạn")
    end
    groups = Dict{String,Vector{Vector{String}}}()
    for r in rows
        push!(get!(groups,r[1],Vector{String}[]),r)
    end
    children = Dict{String,Any}()
    for (value,group) in groups
        error("TODO: children[value]=learn(group,max_height,level+1)")
    end
    return (1,children)
end
# Sau TODO: cao 1 là "có"; cao 2 có hai lá theo màu.
println(("Cao 1",learn(DATA,1)))
println(("Cao 2",learn(DATA,2)))
```

- Mức gốc vẫn 1; chỉ số cột màu cũng 1 nhưng là hai khái niệm khác nhau.
- Nhóm thuần nhất dừng trước giới hạn.

```text
julia bai_tap/julia/bai48.jl
```

### Tự kiểm tra

- max_height=1: Lá có theo quy ước hòa.
- max_height=2: Nút hỏi màu, hai lá có/không.

Vì sao cây chỉ cao 2 vẫn hợp lệ khi cho giới hạn lớn hơn 2?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 49 — Biểu quyết của một rừng nhỏ

**Mục đích:** Hiểu biểu quyết từ ba cây học trên các mẫu con đã khai báo.

### Ôn lý thuyết

**Ba cây, ba phiếu**

Mỗi cây học trên một danh sách mẫu con và dự đoán một nhãn. Rừng đếm các nhãn đó, trả nhãn nhiều phiếu nhất. Các cây có thể bất đồng vì mẫu học khác nhau. Ví dụ dùng ba cây để quan sát từng phiếu.

**Mẫu có hoàn lại**

Một hàng có thể xuất hiện nhiều lần trong mẫu con: đó là lấy mẫu có hoàn lại. Các chỉ số mẫu con được viết sẵn trong mã, nên không cần sinh ngẫu nhiên. Giữ nguyên các phiếu riêng trước khi tính nhãn thắng.

### Ví dụ nhỏ

Ba mẫu con tạo dự đoán đỏ lần lượt có, có, không; biểu quyết cuối là có.

### Cách làm

1. Từ ba bộ chỉ số, tạo ba danh sách mẫu con.
2. Điền lá đa số cho từng nhóm màu rồi lấy ba dự đoán.
3. Điền bộ đếm phiếu và trả nhãn thắng.

### Khung code Python

```python
DATA = [["đỏ", "có"], ["đỏ", "có"],
        ["xanh", "không"], ["đỏ", "không"]]
BOOT = [[0, 1, 2, 2], [0, 0, 1, 2], [3, 3, 2, 0]]

def majority(labels):
    return max(sorted(set(labels)), key=labels.count)

def learn_stump(rows):
    groups = {}
    for color, label in rows:
        groups.setdefault(color, []).append(label)
    tree = {}
    for color, labels in groups.items():
        # TODO: tree[color] = majority(labels).
        raise NotImplementedError("TODO: lá của một màu")
    return tree

def vote(trees, color):
    counts = {}
    for tree in trees:
        label = tree[color]
        # TODO: tăng counts[label] một phiếu.
        raise NotImplementedError("TODO: đếm phiếu")
    return max(sorted(counts), key=counts.get)

trees = [learn_stump([DATA[i] for i in ids]) for ids in BOOT]
# Sau TODO: các phiếu ["có","có","không"]; kết quả "có".
print([t["đỏ"] for t in trees])
print(vote(trees, "đỏ"))
```

- Ba bộ BOOT là dữ liệu cố định, không cần random.
- Một cây nhỏ hỏi màu rồi trả lá đa số của nhóm màu.

```text
python -X utf8 bai_tap/python/bai49.py
```

### Khung code Julia

```julia
DATA = [["đỏ","có"],["đỏ","có"],
        ["xanh","không"],["đỏ","không"]]
BOOT = [[1,2,3,3],[1,1,2,3],[4,4,3,1]]
function majority(labels)
    names=sort!(unique(labels))
    return names[argmax([count(==(x),labels) for x in names])]
end
function learn_stump(rows)
    groups=Dict{String,Vector{String}}()
    for (color,label) in rows
        push!(get!(groups,color,String[]),label)
    end
    tree=Dict{String,String}()
    for (color,labels) in groups
        error("TODO: tree[color]=majority(labels)")
    end
    return tree
end
function vote(trees,color)
    counts=Dict{String,Int}()
    for tree in trees
        label=tree[color]
        error("TODO: counts[label] tăng một phiếu")
    end
    names=sort!(collect(keys(counts)))
    return names[argmax([counts[x] for x in names])]
end
trees=[learn_stump([DATA[i] for i in ids]) for ids in BOOT]
# Sau TODO: phiếu có,có,không; biểu quyết có.
println([t["đỏ"] for t in trees])
println(vote(trees,"đỏ"))
```

- BOOT Julia cộng 1 vào mỗi chỉ số của Python.
- Đây là ba cây học riêng, không phải ba bản sao của cùng một cây.

```text
julia bai_tap/julia/bai49.jl
```

### Tự kiểm tra

- Màu đỏ: Phiếu có,có,không; đa số có.
- Màu xanh: Cả ba phiếu không.

Ba cây giống hệt nhau có đem lại thông tin khác một cây không?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 50 — Minimax và alpha-beta

**Mục đích:** So giá trị minimax và alpha-beta trên cây điểm nhỏ.

### Ôn lý thuyết

**Tính từ lá lên**

Lá có điểm cho sẵn. Nút MAX lấy điểm lớn nhất của các con, MIN lấy nhỏ nhất. Các tầng thay phiên. Muốn kiểm chương trình, hãy tính từng MIN bằng tay rồi mới tính gốc MAX; không lấy lớn nhất của toàn bộ lá.

**Cùng giá trị, ít nhánh hơn**

Alpha-beta chỉ bỏ những con chưa xét khi cận đủ để biết chúng không đổi quyết định ở phía trên. Ví dụ nhỏ giúp nhìn điều kiện cắt trực tiếp. Giá trị gốc phải bằng minimax, nhưng một nhánh bị cắt có thể chỉ trả cận.

### Ví dụ nhỏ

Cây MAX có hai MIN: [4,7] và [2,9]. Gốc bằng 4; alpha-beta có thể bỏ lá 9.

### Cách làm

1. Điền phép kết hợp max/min trong minimax.
2. Điền cập nhật cận và dừng trong alpha-beta.
3. So hai giá trị gốc với kết quả tính tay.

### Khung code Python

```python
TREE = [[4, 7], [2, 9]]
def minimax(node, is_max=True):
    if isinstance(node, int): return node
    best = float("-inf") if is_max else float("inf")
    for child in node:
        value = minimax(child, not is_max)
        # TODO best = max/min(best,value).
        raise NotImplementedError("TODO: ghép điểm các con")
    return best
def alpha_beta(node, is_max=True,
               alpha=float("-inf"), beta=float("inf")):
    if isinstance(node, int): return node
    best = float("-inf") if is_max else float("inf")
    for child in node:
        value = alpha_beta(child, not is_max, alpha, beta)
        # TODO cập nhật best và alpha hoặc beta.
        raise NotImplementedError("TODO: cập nhật cận")
        if beta <= alpha:
            # TODO break.
            raise NotImplementedError("TODO: bỏ con chưa xét")
    return best
# Sau TODO: 4 và 4.
print(minimax(TREE), alpha_beta(TREE))
```

- Số là lá; list là nút trong nên không cần lớp Node.
- Mỗi lời gọi đảo is_max để đổi lượt.

```text
python -X utf8 bai_tap/python/bai50.py
```

### Khung code Julia

```julia
TREE = [[4,7],[2,9]]
function minimax(node,is_max=true)
    node isa Number && return node
    best=is_max ? -Inf : Inf
    for child in node
        value=minimax(child,!is_max)
        error("TODO: best lấy max/min các con")
    end
    return best
end
function alpha_beta(node,is_max=true,alpha=-Inf,beta=Inf)
    node isa Number && return node
    best=is_max ? -Inf : Inf
    for child in node
        value=alpha_beta(child,!is_max,alpha,beta)
        error("TODO: cập nhật best và alpha/beta")
        if beta<=alpha
            error("TODO: break bỏ con chưa xét")
        end
    end
    return best
end
# Sau TODO: (4,4).
println((minimax(TREE),alpha_beta(TREE)))
```

- Number là lá; vector lồng nhau là cây.
- Dùng !is_max để đổi MAX/MIN.

```text
julia bai_tap/julia/bai50.jl
```

### Tự kiểm tra

- [[4,7],[2,9]]: Gốc 4 ở cả hai thuật toán.
- [[1,8],[5,6]]: Gốc 5 ở cả hai thuật toán.

Vì sao bỏ lá 9 không làm gốc đổi từ 4?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 51 — Thứ tự duyệt và cắt tỉa

**Mục đích:** Quan sát thứ tự xét các nhánh làm thay đổi số lá được duyệt.

### Ôn lý thuyết

**Thứ tự duyệt và cắt tỉa**

Alpha-beta giữ nguyên kết quả minimax khi đổi thứ tự các con. Thứ tự tốt giúp gặp sớm phương án mạnh, tạo cận chặt hơn và bỏ các nhánh không ảnh hưởng quyết định. Trong ví dụ, gốc MAX xét nhánh trái trước nên alpha bằng 4.

**Đếm lá trong minh họa**

Mỗi lần chạm một lá số nguyên, ghi nó vào danh sách. Đổi nhánh MIN phải từ [9, 2] sang [2, 9] sẽ gặp sớm beta bằng 2. Khi beta không vượt alpha, dừng xét các con còn lại của nút đó.

```text
Cắt tỉa khi beta ≤ alpha.
```

### Ví dụ nhỏ

Hai cây chỉ khác thứ tự lá ở nhánh phải: [[4, 7], [9, 2]] và [[4, 7], [2, 9]]. Giá trị gốc đều là 4; số lá xét lần lượt là 4 và 3.

### Cách làm

1. Viết cập nhật best, alpha hoặc beta theo lượt MAX/MIN.
2. Dừng vòng lặp khi beta ≤ alpha; ghi lá ngay trong trường hợp cơ sở.
3. Chạy hai cây đã khai báo, đối chiếu giá trị gốc và số lá.

### Khung code Python

```python
TREES = [[[4, 7], [9, 2]], [[4, 7], [2, 9]]]

def alpha_beta(node, is_max, seen, alpha=-2e9, beta=2e9):
    if isinstance(node, int):
        seen.append(node)
        return node
    best = -2e9 if is_max else 2e9
    for child in node:
        value = alpha_beta(child, not is_max, seen, alpha, beta)
        # TODO: MAX lấy max(best, value), rồi tăng alpha.
        # TODO: MIN lấy min(best, value), rồi giảm beta.
        raise NotImplementedError("TODO: cập nhật giá trị và cận")
        if beta <= alpha:
            # TODO: dùng break để bỏ các con chưa xét.
            raise NotImplementedError("TODO: cắt nhánh")
    return best

# Sau TODO: (4, 4 lá) rồi (4, 3 lá).
for tree in TREES:
    seen = []
    value = alpha_beta(tree, True, seen)
    print(value, len(seen), seen)

```

- Danh sách seen là dấu vết để tự kiểm việc cắt nhánh; không đo thời gian.
- Tham số cận truyền vào mỗi lời gọi con phải là cận hiện tại của nút cha.

```text
python -X utf8 bai_tap/python/bai51.py
```

### Khung code Julia

```julia
const TREES = [[[4, 7], [9, 2]], [[4, 7], [2, 9]]]

function alpha_beta(node, is_max::Bool, seen::Vector{Int},
                    alpha=-2e9, beta=2e9)
    if node isa Integer
        push!(seen, node)
        return node
    end
    best = is_max ? -2e9 : 2e9
    for child in node
        value = alpha_beta(child, !is_max, seen, alpha, beta)
        # TODO: MAX lấy max(best, value), rồi tăng alpha.
        # TODO: MIN lấy min(best, value), rồi giảm beta.
        error("TODO: cập nhật giá trị và cận")
        if beta <= alpha
            # TODO: dùng break để bỏ các con chưa xét.
            error("TODO: cắt nhánh")
        end
    end
    return best
end

# Sau TODO: (4, 4 lá) rồi (4, 3 lá).
for tree in TREES
    seen = Int[]
    value = alpha_beta(tree, true, seen)
    println((value, length(seen), seen))
end

```

- Vector seen được truyền chung xuống các nhánh để ghi đúng số lá thật sự xét.
- Hai cây có cùng cấu trúc MAX/MIN; chỉ đổi vị trí hai lá 9 và 2.

```text
julia bai_tap/julia/bai51.jl
```

### Tự kiểm tra

- Nhánh phải [9, 2]: Gốc 4; xét đủ 4 lá.
- Nhánh phải [2, 9]: Gốc 4; xét 3 lá, bỏ lá 9.

Tại sao đổi thứ tự lá giúp giảm công việc nhưng không đổi nước đi tối ưu?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 52 — Tìm kiếm có giới hạn độ sâu

**Mục đích:** Phân biệt tìm kiếm đủ sâu với đánh giá tạm tại giới hạn độ sâu.

### Ôn lý thuyết

**Giới hạn số bước tìm kiếm**

Depth là số cạnh được phép đi tiếp từ nút hiện tại. Gốc nhận depth bằng 1 thì chỉ xét các con; bằng 2 thì tới lá của cây mẫu. Quy ước này khác chiều cao đếm mức: gốc không tiêu tốn một bước tìm kiếm.

**Lượng giá tại điểm dừng**

Trường h là điểm ước lượng tại nút chưa kết thúc. Nó giúp quyết định sớm nhưng có thể khác giá trị minimax thật. Kiểm tra lá kết thúc trước giới hạn độ sâu, vì điểm thật của lá được ưu tiên hơn điểm ước lượng.

```text
V(n, 0) = h(n) tại nút chưa kết thúc.
```

### Ví dụ nhỏ

Cây gốc có hai nhánh MIN. Nhánh trái ước lượng h = 2, lá [4, 7]; nhánh phải h = 5, lá [1, 6]. Tìm một bước cho 5; tìm hai bước cho 4.

### Cách làm

1. Nhận biết lá số nguyên trước; nếu hết depth, trả trường h.
2. Với nút còn độ sâu, gọi từng con với depth - 1 rồi chọn max hoặc min.
3. So sánh hai lần chạy depth bằng 1 và 2, giải thích vì sao kết quả đổi.

### Khung code Python

```python
TREE = {"h": 0, "children": [
    {"h": 2, "children": [4, 7]},
    {"h": 5, "children": [1, 6]}
]}

def minimax_depth(node, depth, is_max):
    if isinstance(node, int):
        return node
    if depth == 0:
        # TODO: trả node["h"] vì nút chưa kết thúc.
        raise NotImplementedError("TODO: điểm lượng giá")
    best = -2e9 if is_max else 2e9
    for child in node["children"]:
        value = minimax_depth(child, depth - 1, not is_max)
        # TODO: cập nhật best bằng max hoặc min theo is_max.
        raise NotImplementedError("TODO: gộp điểm con")
    return best

# Sau TODO: depth=1 -> 5; depth=2 -> 4.
for depth in [1, 2]:
    print(depth, minimax_depth(TREE, depth, True))

```

- Hàm nhận nút dạng số hoặc từ điển; lá là điểm thật, trường h là điểm tạm.
- Ví dụ cố định giúp hiểu giới hạn độ sâu mà không cần tự xây bàn cờ 4×4.

```text
python -X utf8 bai_tap/python/bai52.py
```

### Khung code Julia

```julia
const TREE = Dict("h" => 0, "children" => Any[
    Dict("h" => 2, "children" => [4, 7]),
    Dict("h" => 5, "children" => [1, 6])
])

function minimax_depth(node, depth::Int, is_max::Bool)
    if node isa Integer
        return node
    end
    if depth == 0
        # TODO: trả node["h"] vì nút chưa kết thúc.
        error("TODO: điểm lượng giá")
    end
    best = is_max ? -2e9 : 2e9
    for child in node["children"]
        value = minimax_depth(child, depth - 1, !is_max)
        # TODO: cập nhật best bằng max hoặc min theo is_max.
        error("TODO: gộp điểm con")
    end
    return best
end

# Sau TODO: depth=1 -> 5; depth=2 -> 4.
for depth in [1, 2]
    println((depth, minimax_depth(TREE, depth, true)))
end

```

- Any[] cho phép chứa nút từ điển lẫn lá số trong cùng cấu trúc nhỏ.
- Giảm depth đúng một đơn vị mỗi lần đi theo cạnh; không giảm thêm tại gốc.

```text
julia bai_tap/julia/bai52.jl
```

### Tự kiểm tra

- depth = 1: MAX chọn max(2, 5) = 5 từ điểm ước lượng.
- depth = 2: Hai nhánh MIN có điểm 4 và 1; gốc chọn 4.

Vì sao điểm ước lượng tốt hơn ở độ sâu nhỏ vẫn có thể dẫn tới lựa chọn sai?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## Bài 53 — Ghi nhớ kết quả tìm kiếm

**Mục đích:** Ghi nhớ kết quả của trạng thái xuất hiện qua nhiều đường đi.

### Ôn lý thuyết

**Trạng thái lặp và khóa ghi nhớ**

Hai đường tìm kiếm có thể dẫn tới cùng trạng thái. Ghi nhớ cho phép dùng lại kết quả thay vì tính lại. Khóa phải chứa đủ trạng thái và lượt chơi; ví dụ dùng tên nút cùng cờ MAX/MIN. Tuple là khóa bất biến dùng được trong từ điển.

**Giá trị lưu trong ví dụ**

Minimax duyệt đầy đủ nên các giá trị lưu ở đây là chính xác. Khi mở rộng sang alpha-beta, nhánh bị cắt có thể chỉ cho cận. Khi ấy phải phân biệt EXACT, LOWER và UPPER; không dùng một cận như giá trị chính xác.

### Ví dụ nhỏ

Sơ đồ khai báo ngay mã: A→B,C; B→D,E; C→D,F; D=5, E=3, F=7. B và C là MIN. Giá trị A là 5; chỉ tính sáu trạng thái, dùng lại D một lần.

### Cách làm

1. Kiểm khóa trong memo trước khi tính; cập nhật số lần dùng lại.
2. Tính lá hoặc duyệt các con rồi chọn max/min; lưu best trước khi trả.
3. Chạy cây có nút D dùng chung, kiểm giá trị gốc và hai bộ đếm.

### Khung code Python

```python
GRAPH = {"A": ["B", "C"], "B": ["D", "E"],
         "C": ["D", "F"], "D": 5, "E": 3, "F": 7}

def solve(name, is_max, memo, stats):
    key = (name, is_max)
    if key in memo:
        stats["hit"] += 1
        return memo[key]
    stats["computed"] += 1
    node = GRAPH[name]
    if isinstance(node, int):
        memo[key] = node
        return node
    best = -2e9 if is_max else 2e9
    for child in node:
        value = solve(child, not is_max, memo, stats)
        # TODO: cập nhật best bằng max hoặc min theo is_max.
        raise NotImplementedError("TODO: gộp điểm con")
    # TODO: lưu memo[key] = best trước khi trả.
    raise NotImplementedError("TODO: ghi nhớ nút trong")
    return best

# Sau TODO: điểm 5, computed=6, hit=1.
memo, stats = {}, {"computed": 0, "hit": 0}
print(solve("A", True, memo, stats), stats)
# Gọi lại: không tính thêm; hit tăng thành 2.
print(solve("A", True, memo, stats), stats)

```

- computed đếm khóa chưa có trong memo; hit đếm lời gọi dùng lại kết quả.
- Khóa không chỉ là tên nút: cùng trạng thái nhưng đổi lượt có thể có giá trị khác.

```text
python -X utf8 bai_tap/python/bai53.py
```

### Khung code Julia

```julia
const GRAPH = Dict{String,Any}(
    "A" => ["B", "C"], "B" => ["D", "E"],
    "C" => ["D", "F"], "D" => 5, "E" => 3, "F" => 7)

function solve(name::String, is_max::Bool, memo, stats)
    key = (name, is_max)
    if haskey(memo, key)
        stats["hit"] += 1
        return memo[key]
    end
    stats["computed"] += 1
    node = GRAPH[name]
    if node isa Integer
        memo[key] = node
        return node
    end
    best = is_max ? -2e9 : 2e9
    for child in node
        value = solve(child, !is_max, memo, stats)
        # TODO: cập nhật best bằng max hoặc min theo is_max.
        error("TODO: gộp điểm con")
    end
    # TODO: lưu memo[key] = best trước khi trả.
    error("TODO: ghi nhớ nút trong")
    return best
end

# Sau TODO: điểm 5, computed=6, hit=1.
memo = Dict{Tuple{String,Bool},Float64}()
stats = Dict("computed" => 0, "hit" => 0)
println((solve("A", true, memo, stats), stats))
# Gọi lại: không tính thêm; hit tăng thành 2.
println((solve("A", true, memo, stats), stats))

```

- Dict có khóa Tuple{String,Bool}; giá trị Float64 chứa được các điểm nguyên trong ví dụ.
- D chỉ được tính một lần vì hai đường đều tới cùng khóa (D, true).

```text
julia bai_tap/julia/bai53.jl
```

### Tự kiểm tra

- Lần đầu tính A: Giá trị 5; computed = 6; hit = 1.
- Lần thứ hai dùng lại cùng memo: Giá trị 5; computed vẫn 6; hit = 2.

Khi thêm giới hạn độ sâu, vì sao khóa ghi nhớ thường phải chứa cả độ sâu còn lại?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## TH7.1 — Ôn BST và AVL trên vài khóa

**Mục đích:** Ôn BST và nhận biết bốn trường hợp cân bằng AVL trên cây nhỏ.

### Ôn lý thuyết

**BST**

Mỗi nút chứa khóa và hai cây con. Mọi khóa bên trái nhỏ hơn gốc, mọi khóa bên phải lớn hơn gốc; khóa trùng không thêm lại. Chèn, tìm và xóa phải giữ quy tắc này. Duyệt giữa của BST cho dãy tăng dần.

```text
Chiều cao rỗng = 0; lá = 1.
```

**AVL**

AVL còn yêu cầu chiều cao hai con chênh không quá một. Khi chèn gây lệch, phân biệt TT, PP, TP, PT; quay đổi liên kết nhưng giữ dãy duyệt giữa. Sau quay phải nhận lại gốc mới.

```text
balance = cao(trái) − cao(phải).
```

### Ví dụ nhỏ

BST dùng [4,2,6,1,3,5,7]. AVL dùng [30,20,10], [10,20,30], [30,10,20], [10,30,20].

### Cách làm

1. Hoàn thành BST với bảy khóa cho sẵn và đối chiếu dãy giữa.
2. Viết hai phép quay, rồi chọn quay trong chen_avl.
3. Thử bốn dãy ba khóa; kiểm gốc mới và chiều cao.

### Khung code Python

```python
class Nut:
    def __init__(self,gt,trai=None,phai=None):
        self.gt,self.trai,self.phai=gt,trai,phai
def cao(g):
    return 0 if g is None else 1+max(cao(g.trai),cao(g.phai))
def chen(g,x):
    if g is None: return Nut(x)
    if x==g.gt: return g
    # TODO: chọn con, chèn đệ quy, nhận lại liên kết.
    raise NotImplementedError("chen BST")
def tim(g,x):
    while g is not None:
        if x==g.gt: return g
        # TODO: chuyển sang con đúng phía.
        raise NotImplementedError("tim BST")
    return None
def xoa(g,x):
    if g is None: return None
    # TODO: tìm nút; xử lý 0/1/2 con, dùng kế vị.
    raise NotImplementedError("xoa BST")
def giua(g):
    if g is None: return []
    # TODO: ghép dãy trái, khóa gốc, dãy phải.
    raise NotImplementedError("duyet giua")
def quay_trai(g):
    # TODO: giữ cây trung gian, đổi liên kết, trả gốc.
    raise NotImplementedError("quay trai")
def quay_phai(g):
    raise NotImplementedError("quay phai: đổi liên kết đối xứng")
def chen_avl(g,x):
    if g is None: return Nut(x)
    # TODO: chèn BST; xét balance; chọn TT/PP/TP/PT.
    raise NotImplementedError("chen AVL")
print("Mong đợi BST: [1,2,3,4,5,6,7]; AVL: gốc20,cao2")
try:
    g=None
    for x in [4,2,6,1,3,5,7]: g=chen(g,x)
    print(giua(g),tim(g,5).gt)
    print("Sau xóa4:",giua(xoa(g,4)))
    for ds in [[30,20,10],[10,20,30],[30,10,20],[10,30,20]]:
        a=None
        for x in ds: a=chen_avl(a,x)
        print(a.gt,cao(a))
except NotImplementedError as e: print("TODO:",e)
```

- Các TODO tập trung chèn, tìm, xóa, duyệt và quay; Nut/cao đã hỗ trợ sẵn.
- Mỗi hàm sửa cây trả gốc để nơi gọi nhận lại.

```text
python -X utf8 bai_tap/python/TH7_1.py
```

### Khung code Julia

```julia
mutable struct Nut
    gt::Int; trai::Union{Nothing,Nut}; phai::Union{Nothing,Nut}
end
Nut(x)=Nut(x,nothing,nothing)
cao(g)=g===nothing ? 0 : 1+max(cao(g.trai),cao(g.phai))
function chen(g,x)
    g===nothing && return Nut(x)
    x==g.gt && return g
    # TODO: chèn đúng phía, nhận lại con.
    error("TODO chen BST")
end
function tim(g,x)
    while g!==nothing
        x==g.gt && return g
        error("TODO tim: chọn con")
    end
    return nothing
end
function xoa(g,x)
    g===nothing && return nothing
    error("TODO xoa: 0/1/2 con và kế vị")
end
function giua(g)
    g===nothing && return Int[]
    error("TODO giua: trái, gốc, phải")
end
quay_trai(g)=error("TODO quay trái: giữ cây trung gian")
quay_phai(g)=error("TODO quay phải: đổi liên kết đối xứng")
function chen_avl(g,x)
    g===nothing && return Nut(x)
    error("TODO chèn BST rồi xét TT/PP/TP/PT")
end
println("Mong đợi BST:1..7; bốn AVL: gốc20,cao2")
try
    let g=nothing
        for x in [4,2,6,1,3,5,7]; g=chen(g,x); end
        println(giua(g)," tìm5=",tim(g,5).gt)
        println("Sau xóa4:",giua(xoa(g,4)))
    end
    for ds in ([30,20,10],[10,20,30],[30,10,20],[10,30,20])
        a=nothing
        for x in ds; a=chen_avl(a,x); end
        println(a.gt," ",cao(a))
    end
catch e; println(sprint(showerror,e)); end
```

- Dùng nothing cho cây rỗng; hàm cao giúp kiểm hình dạng sau quay.
- Chạy mã như một tệp Julia độc lập.

```text
julia bai_tap/julia/TH7_1.jl
```

### Tự kiểm tra

- Bảy khóa BST; xóa4.: Giữa1..7; sau xóa [1,2,3,5,6,7].
- Bốn dãy AVL ba khóa.: Mọi cây có gốc 20, chiều cao 2.

Vì sao quay có thể đổi gốc nhưng không đổi thứ tự duyệt giữa?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## TH7.2A — Ôn Gini và cây quyết định

**Mục đích:** Tự xây cây quyết định nhỏ từ dữ liệu khai báo trong mã.

### Ôn lý thuyết

**Cây và độ thuần nhất**

Cây quyết định hỏi thuộc tính ở nút trong và trả nhãn ở lá. Mỗi đường từ gốc đến lá là một luật nếu–thì. Nhóm chỉ có một nhãn dừng ngay; nhóm còn lẫn nhãn cần chia tiếp. Nhãn cuối hàng không được dùng làm thuộc tính.

**Chọn phép chia**

Gini đo độ lẫn nhãn. Gini sau chia là trung bình có trọng số của các nhóm; chọn cột có giá trị nhỏ nhất. Với hai cột hòa điểm, chọn cột đứng trước để kết quả cố định.

```text
Gini = 1 − Σp²; Gini chia = Σ(số mẫu nhóm / tổng mẫu) × Gini nhóm.
```

### Ví dụ nhỏ

Bốn hàng: đỏ/nhỏ/có, đỏ/lớn/có, xanh/nhỏ/không, xanh/lớn/không. Hỏi màu tách được hai nhóm thuần nhất.

### Cách làm

1. Điền công thức Gini từ số đếm nhãn.
2. Điền Gini có trọng số cho từng cột, rồi nối các cây con.
3. In cây và giải thích đường hỏi cho một mẫu mới.

### Khung code Python

```python
DATA = [["đỏ", "nhỏ", "có"], ["đỏ", "lớn", "có"],
        ["xanh", "nhỏ", "không"], ["xanh", "lớn", "không"]]

def gini(labels):
    if not labels:
        return 0.0
    counts = {}
    for x in labels:
        counts[x] = counts.get(x, 0) + 1
    total = 0.0
    for c in counts.values():
        # TODO: cộng (c / len(labels)) ** 2 vào total.
        raise NotImplementedError("TODO: bình phương xác suất")
    return 1.0 - total

def learn(rows, cols):
    labels = [r[-1] for r in rows]
    if len(set(labels)) == 1:
        return labels[0]
    if not cols:
        # TODO: trả nhãn đa số, hòa chọn nhãn nhỏ theo từ điển.
        raise NotImplementedError("TODO: lá đa số")
    candidates = []
    for col in cols:
        groups = {}
        for r in rows:
            groups.setdefault(r[col], []).append(r)
        score = 0.0
        for group in groups.values():
            # TODO: cộng len(group)/len(rows) * gini(nhãn nhóm).
            raise NotImplementedError("TODO: Gini có trọng số")
        candidates.append((score, col, groups))
    _, col, groups = min(candidates, key=lambda x: (x[0], x[1]))
    rest = [c for c in cols if c != col]
    return (col, {v: learn(g, rest) for v, g in groups.items()})

# Sau TODO: Gini gốc = 0.5; cây hỏi cột 0.
print(learn(DATA, [0, 1]))
```

- Cây là nhãn str hoặc tuple (cột, các nhánh); Python đánh cột từ 0.
- Các vòng gom nhóm đã có, bạn viết hai phép tính còn thiếu.

```text
python -X utf8 bai_tap/python/TH7_2A.py
```

### Khung code Julia

```julia
DATA = [["đỏ","nhỏ","có"], ["đỏ","lớn","có"],
        ["xanh","nhỏ","không"], ["xanh","lớn","không"]]
function gini(labels)
    isempty(labels) && return 0.0
    counts = Dict{String,Int}()
    for x in labels
        counts[x] = get(counts,x,0) + 1
    end
    total = 0.0
    for c in values(counts)
        # TODO cộng (c/length(labels))^2.
        error("TODO: bình phương xác suất")
    end
    return 1.0-total
end
function learn(rows,cols)
    labels = [r[end] for r in rows]
    length(unique(labels)) == 1 && return labels[1]
    isempty(cols) && error("TODO: trả lá đa số")
    candidates = []
    for col in cols
        groups = Dict{String,Vector{Vector{String}}}()
        for r in rows
            push!(get!(groups,r[col],Vector{String}[]),r)
        end
        score = 0.0
        for group in values(groups)
            # TODO cộng trọng số nhóm * gini([r[end] for r in group]) vào score.
            error("TODO: Gini có trọng số của nhóm")
        end
        push!(candidates,(score,col,groups))
    end
    sort!(candidates;by=x -> (x[1],x[2]))
    _,col,groups = candidates[1]
    rest = [c for c in cols if c != col]
    return (col,Dict(v=>learn(g,rest) for (v,g) in groups))
end
# Sau TODO: Gini gốc=0.5; cây hỏi cột 1.
println(learn(DATA,[1,2]))
```

- Julia đánh cột từ 1; nhãn cuối hàng dùng r[end].
- Không cần đọc CSV hoặc cài thư viện.

```text
julia bai_tap/julia/TH7_2A.jl
```

### Tự kiểm tra

- Hai nhãn có, hai nhãn không: Gini 0,5.
- Chia theo màu ở DATA: Gini sau chia 0; hai lá có/không.

Vì sao phải nhân Gini nhóm với tỉ lệ số mẫu của nhóm?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

## TH7.2B — Ôn minimax và alpha-beta

**Mục đích:** Tự viết minimax và alpha-beta cho bàn cờ còn hai ô trống.

### Ôn lý thuyết

**Giá trị theo lượt**

Điểm nhìn từ X: X thắng 1, O thắng −1, hòa 0. X chọn kết quả lớn nhất, O chọn nhỏ nhất. Kiểm kết thúc trước khi thử nước. Ví dụ chỉ còn hai ô trống nên bạn có thể vẽ hết các nhánh bằng tay.

**Cắt tỉa**

Alpha và beta là các cận từ lựa chọn đã xét. Cập nhật cận theo lượt, dừng nhánh khi beta ≤ alpha. Alpha-beta phải giữ cùng giá trị với minimax. Mỗi nước trong khung dùng bản sao bàn để nhánh này không đổi bàn của nhánh khác.

```text
X: max; O: min; cắt khi β ≤ α.
```

### Ví dụ nhỏ

Bàn: X O X / X O trống / O trống X; tới lượt O. O thắng khi chọn ô 7 Python hoặc 8 Julia.

### Cách làm

1. Điền cập nhật max/min theo lượt trong minimax.
2. Điền cập nhật alpha/beta và lệnh dừng trong alpha-beta.
3. Thử từng ô còn trống của O, so kết quả hai hàm.

### Khung code Python

```python
LINES = [(0,1,2),(3,4,5),(6,7,8),(0,3,6),
         (1,4,7),(2,5,8),(0,4,8),(2,4,6)]
BOARD = list("XOXXO O X")  # O đi, trống ở 5 và 7.
def terminal(b):
    for p in ("X", "O"):
        if any(all(b[i] == p for i in line) for line in LINES):
            return 1 if p == "X" else -1
    return 0 if " " not in b else None
def minimax(b, turn):
    end = terminal(b)
    if end is not None: return end
    best = -2 if turn == "X" else 2
    for i in range(9):
        if b[i] == " ":
            child = b.copy(); child[i] = turn
            value = minimax(child, "O" if turn == "X" else "X")
            # TODO: best = max/min(best,value) theo lượt.
            raise NotImplementedError("TODO: chọn điểm minimax")
    return best
def alpha_beta(b, turn, alpha=-2, beta=2):
    end = terminal(b)
    if end is not None: return end
    best = -2 if turn == "X" else 2
    for i in range(9):
        if b[i] == " ":
            child = b.copy(); child[i] = turn
            value = alpha_beta(child, "O" if turn == "X" else "X",
                               alpha, beta)
            # TODO cập nhật best; X nâng alpha, O hạ beta.
            raise NotImplementedError("TODO: cập nhật cận")
            if beta <= alpha:
                # TODO dừng vòng for, không thử ô còn lại.
                raise NotImplementedError("TODO: cắt nhánh")
    return best
# Sau TODO: cả hai giá trị -1. Không cần chơi cả ván.
print(minimax(BOARD, "O"), alpha_beta(BOARD, "O"))
```

- terminal đã cho để tập trung vào hai thuật toán tìm kiếm.
- Bản sao bàn làm ví dụ dễ theo dõi; số ô dùng 0..8.

```text
python -X utf8 bai_tap/python/TH7_2B.py
```

### Khung code Julia

```julia
LINES = [(1,2,3),(4,5,6),(7,8,9),(1,4,7),
         (2,5,8),(3,6,9),(1,5,9),(3,5,7)]
BOARD = collect("XOXXO O X") # O đi, trống ở 6 và 8.
function terminal(b)
    for p in ('X','O')
        any(line->all(i->b[i]==p,line),LINES) &&
            return p=='X' ? 1 : -1
    end
    return ' ' in b ? nothing : 0
end
function minimax(b,turn)
    last=terminal(b); last!==nothing && return last
    best=turn=='X' ? -2 : 2
    for i in eachindex(b)
        if b[i]==' '
            child=copy(b); child[i]=turn
            value=minimax(child,turn=='X' ? 'O' : 'X')
            error("TODO: best lấy max/min theo lượt")
        end
    end
    return best
end
function alpha_beta(b,turn,alpha=-2,beta=2)
    last=terminal(b); last!==nothing && return last
    best=turn=='X' ? -2 : 2
    for i in eachindex(b)
        if b[i]==' '
            child=copy(b); child[i]=turn
            value=alpha_beta(child,turn=='X' ? 'O' : 'X',alpha,beta)
            error("TODO: cập nhật best và alpha/beta")
            if beta<=alpha
                error("TODO: break cắt nhánh")
            end
        end
    end
    return best
end
# Sau TODO: cả hai -1; chỉ số ô Julia 1..9.
println((minimax(BOARD,'O'),alpha_beta(BOARD,'O')))
```

- Dùng Char 'X'/'O' và copy(b); không import module dự án.
- Ô thắng của O là 8 ở Julia, tương ứng 7 Python.

```text
julia bai_tap/julia/TH7_2B.jl
```

### Tự kiểm tra

- Bàn đã cho, O đi: Minimax và alpha-beta đều −1.
- O đi vào ô 7 Python/8 Julia: Ba O ở cột giữa, kết thúc ngay.

Vì sao O chọn điểm nhỏ nhất nếu mọi điểm đều nhìn từ X?

### Bài làm của tôi

Lý thuyết / cách làm: [Điền]

Code: [Điền]

Kết quả chạy: [Điền]

