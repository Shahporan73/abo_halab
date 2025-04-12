import 'package:abo_halab_app/app/modules/story/views/story_view.dart';
import 'package:abo_halab_app/app/resource/app_constant/import_list.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_network_image.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget({super.key});

  final List<String> imageList = [
    'https://img.freepik.com/free-photo/handsome-man-with-hat-looking-away_23-2148448878.jpg',
    'https://media.istockphoto.com/id/1388648617/photo/confident-caucasian-young-man-in-casual-denim-clothes-with-arms-crossed-looking-at-camera.jpg?s=612x612&w=0&k=20&c=YxctPklAOJMmy6Tolyvn45rJL3puk5RlKt39FO46ZeA=',
    'https://media.istockphoto.com/id/1389348844/photo/studio-shot-of-a-beautiful-young-woman-smiling-while-standing-against-a-grey-background.jpg?s=612x612&w=0&k=20&c=anRTfD_CkOxRdyFtvsiPopOluzKbhBNEQdh4okZImQc=',
    'https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg',
    'https://static.vecteezy.com/system/resources/thumbnails/053/362/198/small/cheerful-handsome-young-african-american-guy-in-yellow-sweater-posing-alone-on-blue-studio-background-holding-hands-crossed-on-chest-and-smiling-at-camera-copy-space-for-advertisement-photo.jpg',
    'https://media.istockphoto.com/id/2149593400/photo/young-african-american-man-thinking-concentrated-about-doubt-looking-away.webp?b=1&s=612x612&w=0&k=20&c=9_UCR9i6MjzXLOmILAtebIm91w7a_ranzv_3MtW2cuk=',
    'https://media.istockphoto.com/id/1372641618/photo/portrait-of-a-businessman-on-gray-background.jpg?s=612x612&w=0&k=20&c=dr9mAhOR4Nu826FRDcMojzObpbswEEMMGrWoLA2iz4w=',
    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 10,
      width: Get.width,
      child: ListView.builder(
        padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(()=>StoryView(), transition: Transition.downToUp);
              },
              child: Container(
                height: Get.height / 10,
                width: Get.width / 5,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  height: Get.height / 10,
                  width: Get.width / 5,
                  // margin: EdgeInsets.all(3),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffBC67FF), width: 1),
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    clipBehavior: Clip.antiAlias,
                    child: CustomNetworkImage(
                        imageUrl: imageList[index],
                        height: Get.height,
                        width: Get.width
                    ),
                  ),
                ),
              ),
            );
          },
      ),
    );
  }
}
