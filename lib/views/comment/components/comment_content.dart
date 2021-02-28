import 'package:flutter/material.dart';
import 'package:gunlukburc/commons/colors.dart';
import 'package:gunlukburc/models/comment/comment_model.dart';
import 'package:provider/provider.dart';

class CommentContent extends StatefulWidget {
  @override
  _CommentContentState createState() => _CommentContentState();
}

class _CommentContentState extends State<CommentContent> {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<CommentModel>(context);

    return Container(
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width * 1,
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                'deneme',
                style: TextStyle(
                  color: AppColors.WHITE,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                height: 30,
              ),
              Text(
                'Haftanın Şarkısı: Ferhat Göçer – Mehtabın RengiHaftanın Motivasyon Sözü: \"Her olayda öğrenilecek bir şey vardır; akıllı insan kendini suçlamak yerine, Bu olaydan ne öğrenebilirim? diye düşünür.\"Haftanın ilk günü Ceres asteroidinin Koç burcuna geçmesi ile bilgi, okumak, öğrenmek, felsefe gibi alanlarda kendinizi daha fazla geliştirme olanağı bulabilirsiniz. Bu farkındalık hem kariyerinizde hem de sosyal hayatınızda sizi iyi yerlere taşıyabilir. Venüs’ün Balık burcuna geçmesi, korkularınızla baş etmek konusunda ihtiyacınız olan desteği size verecektir.Özellikle ikili ilişkiler anlamında daha iyi yol alacağınız bir ruh haline bürünebilirsiniz. Kuzey Ay Düğümü ve Jüpiter arasındaki üçgen açı, sizi bu anlamda oldukça güçlü kılacak ve özgürlük anlayışınızı empatiyle, sevgiyle besleyecek etkilerle destekleyebilir.27 Şubat’ta Başak burcunda bir dolunay gerçekleşiyor ve size sahip olduklarınızı, gelir-gider dengenizi yeniden değerlendirmeniz için bir fırsat tanıyor. Buradaki durumunuzu göz önünde bulundurarak artık kendinize yeni ve kalıcı bir alan oluşturmalısınız.',
                style: TextStyle(
                  color: AppColors.WHITE,
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                ),
              ),
              Divider(
                height: 20,
              ),
              ButtonTheme(
                height: 40,
                minWidth:
                MediaQuery.of(context).size.width *
                    0.88,
                child: RaisedButton(
                  child: Text(
                    'Paylaş',
                    style: TextStyle(
                        fontSize: 20,
                        color: AppColors.WHITE),
                  ),
                  color: AppColors.ORANGE,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(18.0),
                  ),
                  onPressed: () => {},
                ),
              ),
              Divider(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
