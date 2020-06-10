import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList()
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'The Career Development Programme (CDP) prepares school students (grades 6-8) college students and young professionals under the age of 30 for the worlds top-ranked universities both at the bachelors and masters level. Registrations are open for the three month Career Development Programme that equips students with a complete understanding of the admissions and scholarship process at the world’s top 500 universities.', text: 'DEXTERITY TO COLLEGE CAREER  DEVELOPMENT PROGRAMME'),
    Quote(author: 'The theme for this year’s contest is “A Letter To Myself From 2030”. Submissions can be made in two age categories - Children (ages up to 14) and Youth (ages 15-25). Essays must be written in 700 words or less and can be submitted through the online portal or postal mail. A total of 150000 Yen will be distributed among 8 winners from each age category. ', text: 'GOI PEACE INTERNATIONAL ESSAY CONTEST'),
    Quote(author: 'The contest invites students to submit articles on a wide range of themes ranging from Food and Comedy to Music and Sports. Participants can choose to submit an article individually or in teams of up to 3 members. Each participant will get a participation certificate and winners will receive cash prizes. ', text: 'TALEGRAM ARTICLE WRITING CONTEST')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('DexConnect'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          }
        )).toList(),
      ),
    );
  }
}





