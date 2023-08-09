import 'package:events_app/styles/custom_text_style.dart';
import 'package:flutter/material.dart';

class DetailedNewsPage extends StatelessWidget {
  const DetailedNewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Новость',
                        style: CustomTextStyle.textStyle18,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(242, 243, 247, 1),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.close, color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 36,
              ),
              SizedBox(
                width: double.infinity,
                child: Image.asset('assets/images/detailed_news.png', fit: BoxFit.cover),
              ),
              const SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Последние разработки в области энергоэффективности, инженерных систем, архитектуры и дизайна: что покажет Россия на выставке UzBuild',
                    style: CustomTextStyle.textStyle18,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '28 фев 2023 • 5 мин',
                    style: CustomTextStyle.textStyle12.copyWith(
                        color: const Color.fromRGBO(119, 138, 155, 1), fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    '28 февраля в Ташкенте Российский экспортный центр (входит в ВЭБ.РФ) впервые открыл российский павильон на крупнейшей строительной выставке в Узбекистане. Под брендом Made in Russia на UzBuild 20 российских компаний представят свои достижения и новейшие разработки в сфере строительства. На выставке российские компании продемонстрируют инновационные технологии и материалы, которые уже успешно применяются в строительной отрасли. Посетители смогут ознакомиться с последними разработками в области энергоэффективности, инженерных систем, архитектуры и дизайна. Экспозиция Made in Russia площадью более 350 кв.м занимает одно из главных мест на выставке. На стенде российские компании проведут переговоры с представителями специалистов строительной отрасли Узбекистана, Казахстана, Киргизии, Таджикистана и других стран. «Участие России в UzBuild под национальным брендом является важным шагом в укреплении экономических связей и развитии строительной отрасли наших стран. В течение следующих четырех дней участники проведут более 150 целевых встреч с потенциальными партнерами и наладят деловые связи. Российский экспортный центр, в свою очередь, будет оказывать им поддержку на каждом этапе выхода на рынок Узбекистана», — отметил представитель РЭЦ в Узбекистане Павел Буханов. «Узбекистан интересен российским компаниям, и главное, что этот интерес взаимный. Наши компании представляют на UzBuild качественную продукцию, которая пользуется спросом на местном рынке. Уверен, работа будет плодотворная и переговоры приведут к долгосрочному сотрудничеству», — отметил Заместитель председателя ВЭБ.РФ Даниил Алгульян. Бренд «Сделано в России» Российский экспортный центр продвигает в партнерстве с Фондом Росконгресс. ',
                    style: CustomTextStyle.textStyle14.copyWith(color: const Color(0xFF778A9B)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
