import 'package:clone_ig/widgets/add_story_card_profile.dart';
import 'package:clone_ig/widgets/profile_label_count_widget.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({super.key});

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  bool _isExpansionTileOpen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 12, right: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            AddStoryCardProfile(),
            SizedBox(width: 8),
            ProfileLabelCountWidget(
              count: "140",
              labelText: "Posts",
            ),
            ProfileLabelCountWidget(
              count: "440",
              labelText: "Followers",
            ),
            ProfileLabelCountWidget(
              count: "540",
              labelText: "Following",
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "AfifinIhzaR",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text("-Fotografer Jalanan-"),
              )
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6, bottom: 6),
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5),
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(5)),
                child: Icon(Icons.expand_more_outlined),
              )
            ],
          ),
        ),
        ExpansionTile(
          onExpansionChanged: (_isOpen) => {
            setState(() {
              _isExpansionTileOpen = _isOpen;
            })
          },
          title: Text(
            "Story Highlights",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          subtitle: _isExpansionTileOpen
              ? Text(
                  "Keep Your Favorite Stories on Your Profile",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.5,
                    fontWeight: FontWeight.w400,
                  ),
                )
              : null,
          trailing: Icon(
              _isExpansionTileOpen
                  ? Icons.expand_less_outlined
                  : Icons.expand_more_outlined,
              color: Colors.grey.shade500),
          children: [
            Container(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return index != 0
                      ? Container(
                          width: 80,
                          alignment: Alignment.topCenter,
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey.shade300,
                          ),
                        )
                      : Container(
                          width: 80,
                          child: Column(children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade400),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Icon(
                                Icons.add,
                                size: 30,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "New",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ]),
                        );
                },
              ),
            ),
          ],
        ),
        Divider(
          height: 1,
          color:
              _isExpansionTileOpen ? Colors.transparent : Colors.grey.shade400,
        )
      ],
    );
  }
}
