import 'package:card_swiper/card_swiper.dart';
import 'package:megacy_app/constants/constants.dart';
import 'package:megacy_app/constants/lists.dart';
import 'package:megacy_app/model/product_detail_model.dart';
import 'package:megacy_app/views/home_screen/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailScreen extends StatefulWidget {
  final ProductDetail detail;

  const ProductDetailScreen({Key? key, required this.detail}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int _amount = 1;
  String _size = 'XS';
  void _incrementCounter() {
    setState(() {
      _amount++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _amount == 0 ? _amount == 0 : _amount--;
    });
  }

  void _selectSize(value) {
    setState(() {
      _size = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Wrap(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.keyboard_arrow_left_outlined),
                  onPressed: () {
                    Get.to(() => const Home());
                  },
                ),
                Container(
                    padding: const EdgeInsets.only(right: 26),
                    child: shop.text.black.size(16).make()),
                10.widthBox,
              ],
            ),
            Container(
              padding: const EdgeInsets.all(12),
              color: Colors.white,
              width: context.screenWidth,
              height: context.screenHeight,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ConstrainedBox(
                        constraints: BoxConstraints.loose(
                            Size(context.screenWidth, 380.0)),
                        child: Transform.translate(
                          offset: const Offset(0, -20),
                          child: Swiper(
                            itemCount: widget.detail.imageUrl.length,
                            itemBuilder: (itemBuilder, index) {
                              return Image.asset(
                                widget.detail.imageUrl[index],
                                fit: BoxFit.fill,
                              ).box.clip(Clip.antiAlias).make();
                            },
                            itemWidth: context.screenWidth,
                            itemHeight: 340.0,
                            layout: SwiperLayout.CUSTOM,
                            customLayoutOption: CustomLayoutOption(
                                startIndex: -1, stateCount: 3)
                              ..addTranslate([
                                const Offset(-370.0, -40.0),
                                const Offset(0.0, 0.0),
                                const Offset(370.0, -40.0)
                              ]),
                            pagination: const SwiperPagination(
                              alignment: Alignment.bottomCenter,
                              margin: EdgeInsets.only(top: 100),
                              builder: DotSwiperPaginationBuilder(
                                  activeSize: 6,
                                  size: 6,
                                  color: Colors.grey,
                                  activeColor: primaryColor),
                            ),
                          ),
                        )),
                    Row(
                      children: List.generate(
                          widget.detail.categories.length,
                          (index) => widget.detail.categories[index].text.black
                              .size(20)
                              .make()),
                    ),
                    5.heightBox,
                    widget.detail.name.text.black.size(16).make(),
                    5.heightBox,
                    widget.detail.price.text.black
                        .color(primaryColor)
                        .size(18)
                        .make(),
                    Row(
                      children: <Widget>[
                        'Số lượng SP'.text.size(12).make(),
                        10.widthBox,
                        SizedBox(
                          width: 30,
                          height: 30,
                          child: IconButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(999),
                                  side: const BorderSide(
                                    color: grayColor,
                                    width: 1.0,
                                  ),
                                )),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(0)),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                              ),
                              iconSize: 20.0,
                              onPressed: () {
                                _decrementCounter();
                              },
                              icon: const Icon(Icons.remove)),
                        ),
                        10.widthBox,
                        _amount.text.size(16).make(),
                        10.widthBox,
                        SizedBox(
                          width: 30,
                          height: 30,
                          child: IconButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(999),
                                  side: const BorderSide(
                                    color: grayColor,
                                    width: 1.0,
                                  ),
                                )),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(0)),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                              ),
                              iconSize: 20.0,
                              onPressed: () {
                                _incrementCounter();
                              },
                              icon: const Icon(Icons.add)),
                        ),
                      ],
                    ),
                    15.heightBox,
                    Row(
                      children: <Widget>[
                        'Size'.text.size(12).make(),
                        10.widthBox,
                        Row(
                          children: List.generate(
                            widget.detail.size.length,
                            (index) => Container(
                              padding: const EdgeInsets.only(right: 10),
                              child: SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: TextButton(
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(999),
                                        side: const BorderSide(
                                          color: grayColor,
                                          width: 1.0,
                                        ),
                                      )),
                                      padding: MaterialStateProperty.all(
                                          const EdgeInsets.all(0)),
                                      backgroundColor:
                                          _size == widget.detail.size[index]
                                              ? MaterialStateProperty.all(
                                                  Colors.black)
                                              : MaterialStateProperty.all(
                                                  Colors.white),
                                    ),
                                    onPressed: () {
                                      _selectSize(widget.detail.size[index]);
                                    },
                                    child: widget.detail.size[index].text
                                        .size(10)
                                        .color(
                                            _size == widget.detail.size[index]
                                                ? Colors.white
                                                : Colors.black)
                                        .make(),
                                  )),
                            ),
                          ),
                        )
                      ],
                    ),
                    25.heightBox,
                    Container(
                      padding: const EdgeInsets.only(left: 15),
                      width: double.infinity,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: 'Thông tin chi tiết'.text.white.size(14).make(),
                      ),
                    ),
                    10.heightBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        '– Chất liệu: Dạ tweed'.text.size(16).make(),
                        '– Màu sắc: Hồng nhạt'.text.size(16).make(),
                        '– Size: XS S M L XL XXL'.text.size(16).make(),
                      ],
                    ),
                    10.heightBox,
                    Container(
                      padding: const EdgeInsets.only(left: 15),
                      width: double.infinity,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: 'Bảng tư vấn SIZE Nữ theo chiều cao cân nặng'
                            .text
                            .white
                            .size(14)
                            .make(),
                      ),
                    ),
                    10.heightBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        'Size XS – Cân nặng < (45)kg, Chiều cao (150-160)cm'
                            .text
                            .size(16)
                            .make(),
                        'Size S – Cân nặng ( 45-49)kg, Chiều cao (150-160) cm'
                            .text
                            .size(16)
                            .make(),
                        'Size M – Cân nặng (50-54)kg, Chiều cao (155-162) cm'
                            .text
                            .size(16)
                            .make(),
                        'Size L – Cân nặng (55-60)kg, Chiều cao (158-165) cm'
                            .text
                            .size(16)
                            .make(),
                        'Size XL – Cân nặng (61-66)kg, Chiều cao (160-165) cm'
                            .text
                            .size(16)
                            .make(),
                        'Size XXL – Cân nặng (67-72)kg, Chiều cao ( 158-167) cm'
                            .text
                            .size(16)
                            .make(),
                      ],
                    ),
                    10.heightBox,
                    Container(
                      padding: const EdgeInsets.only(left: 15),
                      width: double.infinity,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: 'Bảng tư vấn SIZE theo số đo'
                            .text
                            .white
                            .size(14)
                            .make(),
                      ),
                    ),
                    10.heightBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        'Size XS – Vai (35)cm Ngực 80)cm Eo (62)cm, Mông(82)cm'
                            .text
                            .size(16)
                            .make(),
                        'Size S – Vai (36), Ngực ( 84), Eo (66), Mông(88)'
                            .text
                            .size(16)
                            .make(),
                        'Size M – Vai (37), Ngực ( 88), Eo (70), Mông(92)'
                            .text
                            .size(16)
                            .make(),
                        'Size L – Vai (38), Ngực ( 88), Eo ( 74), Mông(96)'
                            .text
                            .size(16)
                            .make(),
                        'Size XL – Vai (39), Ngực ( 92), Eo ( 78), Mông(100)'
                            .text
                            .size(16)
                            .make(),
                        'Size XXL – Vai (40), Ngực ( 96), Eo ( 82), Mông(104)'
                            .text
                            .size(16)
                            .make(),
                        'Lưu ý: Bảng size chỉ mang tính chất tham khảo tùy thuộc'
                                ' vào số đo cơ thể mỗi người và chất liệu vải khác nhau sẽ'
                                ' có sự chênh lệch nhất định từ 1 – 2cm.'
                            .text
                            .size(16)
                            .make(),
                      ],
                    ),
                    10.heightBox,
                    Container(
                      padding: const EdgeInsets.only(left: 15),
                      width: double.infinity,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child:
                            'Cách bảo quản sản phẩm'.text.white.size(14).make(),
                      ),
                    ),
                    10.heightBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        '– Không nên ngâm những sản phẩm phối màu'
                            .text
                            .size(16)
                            .make(),
                        '– Nên giặt tay và nước lạnh sẽ tăng độ bền của sản phẩm'
                            .text
                            .size(16)
                            .make(),
                        '– Khi phơi đồ nên lộn trái để giữ màu quần áo, tránh phơi dưới ánh nắng gay gắt'
                            .text
                            .size(16)
                            .make(),
                        '– Nên ủi đồ ở nhiệt độ trung bình'
                            .text
                            .size(16)
                            .make(),
                        '– Nhớ tránh xa các bé gián, chuột và nơi ẩm mốc'
                            .text
                            .size(16)
                            .make(),
                        'Size XXL – Vai (40), Ngực ( 96), Eo ( 82), Mông(104)'
                            .text
                            .size(16)
                            .make(),
                        'Cam kết 100% hàng chính hãng từ Mita.'
                            .text
                            .size(16)
                            .make(),
                        'Mita cảm ơn nàng đã yêu thích và mua hàng tại shop. Nếu Sản phẩm được nàng yêu thích thì nhớ đánh giá tốt cho Mita nha.'
                            .text
                            .size(16)
                            .make(),
                      ],
                    ),
                    10.heightBox,
                    Row(children: <Widget>[
                      Expanded(
                          child: Transform.translate(
                        offset: const Offset(0, 3.0),
                        child: const Divider(
                          indent: 100,
                          color: greyColor,
                        ),
                      )),
                      5.widthBox,
                      const Icon(
                        CupertinoIcons.rhombus,
                        color: greyColor,
                        size: 20,
                      ),
                      5.widthBox,
                      Expanded(
                          child: Transform.translate(
                        offset: const Offset(0, 3.0),
                        child: const Divider(endIndent: 100, color: greyColor),
                      )),
                    ]),
                    10.heightBox,
                    Row(
                      children: <Widget>[
                        const Icon(Icons.local_phone_outlined,
                            color: greyColor),
                        16.widthBox,
                        numberPhone.text.color(greyColor).size(16).make()
                      ],
                    ),
                    10.heightBox,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Icon(Icons.add_location_outlined,
                            color: greyColor),
                        16.widthBox,
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                                addressList.length,
                                (index) => addressList[index]
                                    .text
                                    .color(greyColor)
                                    .size(16)
                                    .make()),
                          ),
                        ),
                      ],
                    ),
                    30.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          socialIconList2.length,
                          (index) => Container(
                              padding: const EdgeInsets.all(15),
                              child: Image.asset(
                                socialIconList2[index],
                                width: 24,
                                height: 24,
                              ))),
                    ),
                    130.heightBox,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
