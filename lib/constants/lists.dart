import 'package:megacy_app/constants/images.dart';
import 'package:megacy_app/model/popup_item_prefix_model.dart';
import 'package:megacy_app/model/product_card_model.dart';
import 'package:megacy_app/model/product_detail_model.dart';
import 'package:megacy_app/model/ranking_item_model.dart';

const socialIconList = [icGoogleLogo, icFacebookLogo, icAppleLogo];
const socialIconList2 = [icTiktok, icInstagram, icYoutube];
const homeSliderList = [
  homeSlider1,
  homeSlider1,
  homeSlider1,
  homeSlider1,
];

final artCollections = [
  CollectionCardModel(
    id: '1',
    name: 'Collection name',
    imageUrl: collectionCardImage,
    floorPrice: 0.12,
    totalVolume: 10,
    chain: 'ETH',
  ),
  CollectionCardModel(
    id: '2',
    name: 'Collection name',
    imageUrl: collectionCardImage,
    floorPrice: 0.12,
    totalVolume: 10,
    chain: 'ETH',
  ),
  CollectionCardModel(
    id: '3',
    name: 'Collection name',
    imageUrl: collectionCardImage,
    floorPrice: 0.12,
    totalVolume: 10,
    chain: 'ETH',
  ),
  CollectionCardModel(
    id: '4',
    name: 'Collection name',
    imageUrl: collectionCardImage,
    floorPrice: 0.12,
    totalVolume: 10,
    chain: 'ETH',
  ),
];

final detailProducts = [
  const ProductDetail(
    id: '1',
    name: 'Áo dạ Tweed Zemmi – MIAK0240S',
    imageUrl: [beautifulGirl2, beautifulGirl],
    price: 29.99,
    description: '',
    categories: ['ÁO DẠ'],
    size: ['XS', 'S', 'M', 'L', 'XL', 'XXL'],
    material: 'Dạ tweed',
  ),
  const ProductDetail(
    id: '1',
    name: 'Áo dạ Tweed Zemmi – MIAK0240S',
    imageUrl: [beautifulGirl2, beautifulGirl],
    price: 29.99,
    description: '',
    categories: ['ÁO DẠ'],
    size: ['XS', 'S', 'M', 'L', 'XL', 'XXL'],
    material: 'Dạ tweed',
  ),
  const ProductDetail(
    id: '1',
    name: 'Áo dạ Tweed Zemmi – MIAK0240S',
    imageUrl: [beautifulGirl2, beautifulGirl],
    price: 29.99,
    description: '',
    categories: ['ÁO DẠ'],
    size: ['XS', 'S', 'M', 'L', 'XL', 'XXL'],
    material: 'Dạ tweed',
  ),
  const ProductDetail(
    id: '1',
    name: 'Áo dạ Tweed Zemmi – MIAK0240S',
    imageUrl: [beautifulGirl2, beautifulGirl],
    price: 29.99,
    description: '',
    categories: ['ÁO DẠ'],
    size: ['XS', 'S', 'M', 'L', 'XL', 'XXL'],
    material: 'Dạ tweed',
  ),
];

final addressList = [
  '- Số 7 Đỗ Quang, Trung Hoà, Cầu Giấy',
  '- Số 324 Bà Triệu, Lê Đại Hành, Hai Bà Trưng, Hà Nội',
  '- 121/33 Lê Thị Riêng, Phường Bến Thành, Quận 1, Thành Phố Hồ Chí Minh'
];

final filterList = [
  'New',
  'BST MỚI NHẤT',
  'TẾT 2024',
  'Áo Dài 2023',
  'THU ĐÔNG 2023',
];

final rangeTime = [
  PopupItemPrefix(
    name: 'Last hour',
    value: 'last-hour',
  ),
  PopupItemPrefix(name: 'Last 6 hours', value: '6-hour'),
  PopupItemPrefix(name: 'Last 24 hours', value: '24-hour'),
  PopupItemPrefix(name: 'Last 7 days', value: '7-day'),
  PopupItemPrefix(name: 'Last 30 days', value: '30-hour'),
  PopupItemPrefix(name: 'Last 60 days', value: '60-hour'),
  PopupItemPrefix(name: 'All Time', value: 'all')
];

final listChain = [
  PopupItemPrefix(
    icon: ethreumSymbol,
    name: 'Ethereum',
    value: 'ether',
  ),
  PopupItemPrefix(icon: bnbSymbol, name: 'BNB Chain', value: 'bnb'),
  PopupItemPrefix(
    icon: ethreumSymbol,
    name: 'Ethereum',
    value: 'ether',
  ),
  PopupItemPrefix(icon: bnbSymbol, name: 'BNB Chain', value: 'bnb'),
  PopupItemPrefix(
    icon: ethreumSymbol,
    name: 'Ethereum',
    value: 'ether',
  ),
  PopupItemPrefix(icon: bnbSymbol, name: 'BNB Chain', value: 'bnb'),
  PopupItemPrefix(
    icon: ethreumSymbol,
    name: 'Ethereum',
    value: 'ether',
  ),
  PopupItemPrefix(icon: bnbSymbol, name: 'BNB Chain', value: 'bnb'),
  PopupItemPrefix(
    icon: ethreumSymbol,
    name: 'Ethereum',
    value: 'ether',
  ),
  PopupItemPrefix(icon: bnbSymbol, name: 'BNB Chain', value: 'bnb'),
  PopupItemPrefix(
    icon: ethreumSymbol,
    name: 'Ethereum',
    value: 'ether',
  ),
  PopupItemPrefix(icon: bnbSymbol, name: 'BNB Chain', value: 'bnb')
];

final dataTrending = [
  RankingItem(
      id: '1',
      name: 'Otherdeed for Otherside',
      imageUrl: trendingItemImage,
      price: 1.49,
      floorPrice: 1.49,
      fluctuation: 5.23,
      chain: 'AVAX'),
  RankingItem(
      id: '2',
      name: 'Otherdeed for Otherside 2',
      imageUrl: trendingItemImage,
      price: 1.49,
      floorPrice: 1.49,
      fluctuation: 5.23,
      chain: 'AVAX'),
  RankingItem(
      id: '3',
      name: 'Otherdeed for Otherside 3',
      imageUrl: trendingItemImage,
      price: 1.49,
      floorPrice: 1.49,
      fluctuation: 5.23,
      chain: 'AVAX'),
  RankingItem(
      id: '4',
      name: 'Otherdeed for Otherside 4',
      imageUrl: trendingItemImage,
      price: 1.49,
      floorPrice: 1.49,
      fluctuation: 5.23,
      chain: 'AVAX'),
  RankingItem(
      id: '5',
      name: 'Otherdeed for Otherside 5',
      imageUrl: trendingItemImage,
      price: 1.49,
      floorPrice: 1.49,
      fluctuation: 5.23,
      chain: 'AVAX'),
];
final dataTop = [
  RankingItem(
      id: '1',
      name: 'Otherdeed for Otherside',
      imageUrl: trendingItemImage,
      price: 2.49,
      floorPrice: 2.49,
      fluctuation: 1.23,
      chain: 'AVAX'),
  RankingItem(
      id: '1',
      name: 'Otherdeed for Otherside',
      imageUrl: trendingItemImage,
      price: 2.49,
      floorPrice: 2.49,
      fluctuation: 1.23,
      chain: 'AVAX'),
  RankingItem(
      id: '1',
      name: 'Otherdeed for Otherside',
      imageUrl: trendingItemImage,
      price: 2.49,
      floorPrice: 2.49,
      fluctuation: 1.23,
      chain: 'AVAX'),
  RankingItem(
      id: '1',
      name: 'Otherdeed for Otherside',
      imageUrl: trendingItemImage,
      price: 2.49,
      floorPrice: 2.49,
      fluctuation: 1.23,
      chain: 'AVAX'),
  RankingItem(
      id: '1',
      name: 'Otherdeed for Otherside',
      imageUrl: trendingItemImage,
      price: 2.49,
      floorPrice: 2.49,
      fluctuation: 1.23,
      chain: 'AVAX'),
];
