import 'package:flutter/material.dart';

class CardMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(13, 14, 18, 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                child: const CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 27.5,
                  backgroundImage: NetworkImage(
                      "https://media-exp1.licdn.com/dms/image/C4D03AQFGsHRvk927EA/profile-displayphoto-shrink_800_800/0/1638278956384?e=1651708800&v=beta&t=Q9fmxMzwmQ4aOCcvC1q_4r-GCSsfRck-VNTp8VqURhA"),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Guilherme",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Olá, seja bem-vindo!",
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("18:00"),
                  SizedBox(
                    height: 4,
                  ),
                  CircleAvatar(
                    child: Text(
                      "2",
                      style: TextStyle(color: Colors.white),
                    ),
                    radius: 11,
                    backgroundColor: Color(0xFF1EBE71),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          indent: 21,
          endIndent: 21,
          color: Colors.black,
        ),
      ],
    );
  }
}
