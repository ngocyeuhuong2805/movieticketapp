import 'movie.dart';

class Caster {
  final String name;
  final String image;
  Caster({required this.name, required this.image});
}

// Sample casters
List<Caster> sampleCasters = [
  Caster(name: 'Caster 1', image: 'https://5sfashion.vn/storage/upload/images/ckeditor/4KG2VgKFDJWqdtg4UMRqk5CnkJVoCpe5QMd20Pf7.jpg'),
  Caster(name: 'Caster 2', image: 'https://i.pinimg.com/236x/c2/9a/7d/c29a7d29348b1a3f502803ab9d8355cc.jpg'),
  Caster(name: 'Caster 3', image: 'https://i.pinimg.com/236x/c2/9a/7d/c29a7d29348b1a3f502803ab9d8355cc.jpg'),
  Caster(name: 'Caster 4', image: 'https://i.pinimg.com/236x/c2/9a/7d/c29a7d29348b1a3f502803ab9d8355cc.jpg'),
];

// Sample movies
List<Movie> movies = [
  Movie(
    id: '1',
    name: 'Action',
    image: 'https://gcs.tripi.vn/public-tripi/tripi-feed/img/474091gUu/hinh-nen-hoat-hinh-1.jpg',
    background: 'https://hoanghamobile.com/tin-tuc/wp-content/uploads/2024/03/anh-hoat-hinh.jpg',
    casters: sampleCasters,
  ),
  Movie(
    id: '2',
    name: 'Comedy',
    image: 'https://kenh14cdn.com/2016/photo-1-1472807212772.jpg',
    background: 'https://vov.vn/sites/default/files/styles/large/public/2022-12/pororo-01.jpg',
    casters: sampleCasters,
  ),
  Movie(
    id: '3',
    name: 'Drama',
    background: 'https://tienghancoban.edu.vn/images/2018/10/03/hoc-tieng-han-qua-phim-hoat-hinh-1.jpg',
    image: 'https://images.fpt.shop/unsafe/filters:quality(5)/fptshop.com.vn/uploads/images/tin-tuc/169649/Originals/hinh-nen-anime-cute%20(15).jpg',
    casters: sampleCasters,
  ),
  Movie(
    id: '4',
    name: 'Horror',
    background: 'https://bazaarvietnam.vn/wp-content/uploads/2022/07/Harpers-Bazaar-phim-hoat-hinh-thu-cung-pet_05.jpg',
    image: 'https://hoanghamobile.com/tin-tuc/wp-content/uploads/2024/03/anh-hoat-hinh.jpg',
    casters: sampleCasters,
  ),
  Movie(
    id: '5',
    background: 'https://simg.zalopay.com.vn/zlp-website/assets/nhung_bo_phim_hoat_hinh_gan_lien_voi_tuoi_tho_Pokemon_Pocket_Monster_6b8d3ba2c4.jpg',
    name: 'Horror',
    image: 'https://www.vietnamfineart.com.vn/wp-content/uploads/2023/03/photo115400037547011355871135-2.jpg',
    casters: sampleCasters,
  ),
  Movie(
    id: '6',
    background: 'https://gcs.tripi.vn/public-tripi/tripi-feed/img/473834CUY/-152077.jpg',
    name: 'Horror',
    image: 'https://vnpay.vn/s1/statics.vnpay.vn/2023/9/0z0xhxxiyveq1694338872221.jpg',
    casters: sampleCasters,
  ),
  Movie(
    id: '7',
    background: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf31LDVkJ-jinWV4Rz6sj4n9BLW0YVQOdf9w&s',
    name: 'Horror',
    image: 'https://gcs.tripi.vn/public-tripi/tripi-feed/img/474114CHq/anh-dep-hoat-hinh-de-thuong_052251425.jpg',
    casters: sampleCasters,
  ),
  Movie(
    background: 'https://simg.zalopay.com.vn/zlp-website/assets/nhung_bo_phim_hoat_hinh_gan_lien_voi_tuoi_tho_Oggy_Va_Nhung_Chu_Gian_Tinh_Nghich_Oggy_And_The_Cockroaches_c40637c209.jpg',
    id: '8',
    name: 'Horror',
    image: 'https://gcs.tripi.vn/public-tripi/tripi-feed/img/474091gUu/hinh-nen-hoat-hinh-1.jpg',
    casters: sampleCasters,
  ),
];