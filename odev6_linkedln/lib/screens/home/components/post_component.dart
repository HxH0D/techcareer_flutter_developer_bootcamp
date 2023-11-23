import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:odev6_linkedln/data/entity/post.dart';
import 'package:odev6_linkedln/widgets/custom_button.dart';

class PostComponent extends StatefulWidget {
  Post post;

  PostComponent({required this.post});

  @override
  State<PostComponent> createState() => _PostComponentState();
}

class _PostComponentState extends State<PostComponent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage:
                      AssetImage("images/${widget.post.profileImage}"),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.post.userName,
                      style:
                          const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.post.profileTitle,
                      style: const TextStyle(fontSize: 12),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          widget.post.createdAt,
                          style: const TextStyle(fontSize: 10),
                        ),
                        const Icon(
                          Icons.timelapse_rounded,
                          size: 10,
                        ),
                      ],
                    )
                  ],
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(
                    Icons.more_vert,
                    size: 22,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.close,
                    size: 22,
                  ),
                  onPressed: () {},
                ),
              ],
            ).paddingAll(5),
            Text(widget.post.content).paddingAll(5),
           Container(
              height: 339,
              child: Center(
                child: Image.asset(
                  'images/${widget.post.postImage}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Divider().paddingSymmetric(horizontal: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                  text: const Text(
                    "Like",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color:Color(0xFF757575) ,
                        fontSize: 13),
                  ),
                  icon: const Icon(
                    Icons.thumb_up_off_alt_outlined,
                    size: 16,
                    color:Color(0xFF757575) ,
                  ),
                  sizeBox: const SizedBox(),
                  onPressed: () {},
                  btnPadding: const EdgeInsets.all(0),
                  btnMargin: const EdgeInsets.all(5.0),
                ),
                CustomButton(
                  text: const Text(
                    "Comment",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color:Color(0xFF757575) ,
                        fontSize: 13),
                  ),
                  icon: const Icon(
                    Icons.comment_outlined,
                    size: 16,
                    color:Color(0xFF757575) ,
                  ),
                  sizeBox: const SizedBox(),
                  onPressed: () {},
                  btnPadding: const EdgeInsets.all(0),
                  btnMargin: const EdgeInsets.all(5.0),
                ),
                CustomButton(
                  text: const Text(
                    "Publish",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color:Color(0xFF757575) ,
                        fontSize: 13),
                  ),
                  icon: const Icon(
                    Icons.add_to_photos_rounded,
                    size: 16,
                    color:Color(0xFF757575) ,
                  ),
                  sizeBox: const SizedBox(),
                  onPressed: () {},
                  btnPadding: const EdgeInsets.all(0),
                  btnMargin: const EdgeInsets.all(5.0),
                ),
                CustomButton(
                  text: const Text(
                    "Send",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color:Color(0xFF757575) ,
                        fontSize: 13),
                  ),
                  icon: const Icon(
                    Icons.send,
                    size: 16,
                    color:Color(0xFF757575) ,
                  ),
                  sizeBox: const SizedBox(),
                  onPressed: () {},
                  btnPadding: const EdgeInsets.all(0),
                  btnMargin: const EdgeInsets.all(5.0),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
