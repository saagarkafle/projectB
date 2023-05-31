import 'package:flutter/material.dart';

import '../../constants/colours.dart';

class StretchyHeader extends StatefulWidget {
  const StretchyHeader({super.key});

  @override
  State<StretchyHeader> createState() => _StretchyHeaderState();
}

class _StretchyHeaderState extends State<StretchyHeader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            pinned: true,
            excludeHeaderSemantics: true,
            expandedHeight: 350,
            stretchTriggerOffset: 200,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const [
                StretchMode.zoomBackground,
                // StretchMode.fadeTitle,
                // StretchMode.blurBackground,
              ],
              title: const Text('About Messi'),
              centerTitle: true,
              background: Stack(
                fit: StackFit.expand,
                children: [
                  DecoratedBox(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: const Alignment(0, 0.5),
                              end: const Alignment(0, 0),
                              colors: [
                        AppColors.bgColor,
                        AppColors.darkBlue
                      ]))),
                  Hero(
                    tag: 'tag-2',
                    child: Image.asset("assets/messi.jpg",
                        height: 200.0, width: 160, fit: BoxFit.cover),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Lionel Messi, in full Lionel Andrés Messi, also called Leo Messi, (born June 24, 1987, Rosario, Argentina), Argentine-born football (soccer) player who received a record-setting seven Ballon d’Or awards as the world’s top male player (2009–12, 2015, 2019, and 2021). In 2022 he helped Argentina win the Fédération Internationale de Football Association (FIFA)’s World Cup.',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Early life',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'Messi started playing football as a boy and in 1995 joined the youth team of Newell’s Old Boys (a Rosario-based top-division football club). Messi’s phenomenal skills garnered the attention of prestigious clubs on both sides of the Atlantic. At age 13 Messi and his family relocated to Barcelona, and he began playing for FC Barcelona’s under-14 team. He scored 21 goals in 14 games for the junior team, and he quickly graduated through the higher-level teams until at age 16 he was given his informal debut with FC Barcelona in a friendly match.',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Club plays',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'In the 2004–05 season Messi, then 17, became the youngest official player and goal scorer in the Spanish La Liga (the country’s highest division of football). Though only 5 feet 7 inches (1.7 metres) tall and weighing 148 pounds (67 kg), he was strong, well-balanced, and versatile on the field. Naturally left-footed, quick, and precise in control of the ball, Messi was a keen pass distributor and could readily thread his way through packed defenses. In 2005 he was granted Spanish citizenship, an honour greeted with mixed feelings by the fiercely Catalan supporters of Barcelona. The next year Messi and Barcelona won the Champions League (the European club championship) title.Messi’s play continued to rapidly improve over the years, and by 2008 he was one of the most dominant players in the world, finishing second to Manchester United’s Cristiano Ronaldo in the voting for the 2008 Ballon d’Or. In early 2009 Messi capped off a spectacular 2008–09 season by helping FC Barcelona capture the club’s first “treble” (winning three major European club titles in one season): the team won the La Liga championship, the Copa del Rey (Spain’s major domestic cup), and the Champions League title. He scored 38 goals in 51 matches during that season, and he bested Ronaldo in the balloting for both the Ballon d’Or and FIFA’s world player of the year by a record margin. During the 2009–10 season Messi scored 34 goals in domestic games as Barcelona repeated as La Liga champions. He earned the Golden Shoe award as Europe’s leading scorer, and he received another Ballon d’Or (the award was known as the FIFA Ballon d’Or in 2010–15)..',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}
