import 'dart:math';

class Berita {
  final String judul;
  final String kompetisi;
  final String imageUrl;
  final String isiBerita;
  final String penulis;

  Berita({
    required this.judul,
    required this.kompetisi,
    required this.imageUrl,
    required this.isiBerita,
    required this.penulis,
  });
}

String getRandomPenulis() {
  final List<String> penulisList = [
    'John Doe',
    'Jane Smith',
    'Robert Johnson',
    'Emily Wilson',
    'Michael Brown',
    'Sara Davis',
  ];

  final random = Random();
  return penulisList[random.nextInt(penulisList.length)];
}

List<Berita> BeritaUtama = [
  Berita(
    judul: 'Inter Milan',
    kompetisi: 'Serie A',
    imageUrl:
        'https://www.rossoneriblog.com/wp-content/uploads/2023/09/fc-internazionale-v-ac-milan-serie-a-tim.jpg',
    isiBerita:
        'Inter Milan, officially known as FC Internazionale Milano, is an Italian professional football club based in Milan, Italy. Inter Milan is one of the most successful and storied football clubs in Italy and Europe. The team was founded in 1908 and is one of the two major football clubs in Milan, with the other being AC Milan. Inter Milan has a long and successful history, having won numerous Serie A (Italian top division) titles and Coppa Italia (Italian domestic cup) titles. One of the clubs most significant achievements came in the 2009-2010 season when they won the Serie A, Coppa Italia, and the UEFA Champions League, becoming the first Italian club to achieve a historic treble (winning three major trophies in a single season)',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Tottenham Hotspur',
    kompetisi: 'Premier League',
    imageUrl:
        'https://awsimages.detik.net.id/community/media/visual/2023/09/25/tottenham-hotspur.jpeg?w=1200',
    isiBerita:
        'Tottenham Hotspur, commonly referred to as Spurs, is a professional football club based in North London, England. The club was founded in 1882 and has a rich history in English football. Tottenham Hotspur is one of the top clubs in the English Premier League. The clubs home matches are played at the Tottenham Hotspur Stadium, a modern stadium with a capacity of over 60,000 spectators. The teams traditional colors are white and navy blue, and they are known for their passionate fan base.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Barcelona',
    kompetisi: 'La Liga',
    imageUrl:
        'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/113/2023/10/03/Prediksi-FC-Barcelona-vs-Porto-Peluang-Barcelona-Rebut-Puncak-Klasemen-Grup-H-2221757291.jpg',
    isiBerita:
        'FC Barcelona, commonly referred to as Barcelona or Barça, is a prominent Spanish professional football club located in Barcelona, Catalonia. Founded in 1899, Barcelona is one of the most renowned and successful football clubs in the world. The team plays its home matches at the Camp Nou stadium and is renowned for its possession-based style of play, often referred to as "tiki-taka," which has been associated with their legendary former manager Pep Guardiola. Barcelona has a rich history of domestic and international success, with numerous La Liga titles, Copa del Rey victories, and UEFA Champions League triumphs. The club has been home to some of the greatest football talents, including icons like Lionel Messi and Johan Cruyff, and its distinctive blue and red striped jerseys are recognizable worldwide. Barcelona is celebrated not only for its sporting achievements but also for its commitment to promoting Catalan identity and culture, making it a symbol of pride for the people of Catalonia.',
    penulis: getRandomPenulis(),
  ),
];

List<Berita> BeritaTerbaru = [
  Berita(
    judul: 'Real Madrid',
    kompetisi: 'La Liga',
    imageUrl:
        'https://media.cnn.com/api/v1/images/stellar/prod/230107105224-real-madrid-lineup-010723.jpg',
    isiBerita:
        'Real Madrid Club de Fútbol, commonly known as Real Madrid, is one of the worlds most iconic and successful football clubs. Based in Madrid, Spain, the club was founded in 1902 and has since become synonymous with a rich history of domestic and international triumphs. With a storied legacy of winning numerous La Liga titles and Copa del Rey trophies, as well as a record number of UEFA Champions League titles, Real Madrid boasts a glittering roster of legendary players, including Cristiano Ronaldo, Alfredo Di Stéfano, and Zinedine Zidane. The club plays its home matches at the Santiago Bernabéu Stadium and maintains a passionate global fanbase, known as Madridistas, making it a symbol of excellence in the footballing world.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Sevilla',
    kompetisi: 'La Liga',
    imageUrl:
        'https://www.mykhel.com/img/1200x60x675/2023/05/sevilla-fc-1685544486.jpg',
    isiBerita:
        'Sevilla Fútbol Club, commonly referred to as Sevilla FC or simply Sevilla, is a prominent Spanish football club based in Seville, Andalusia. Founded in 1890, Sevilla is one of the oldest football clubs in Spain and has a rich history of success in both domestic and European competitions. The team plays its home matches at the Ramón Sánchez Pizjuán Stadium and competes in La Liga, Spains top professional football league. Sevilla has enjoyed considerable success in recent years, winning multiple UEFA Europa League titles, which has established the club as a dominant force in European football. The team is known for its passionate fan base, known as Sevillistas, and its commitment to developing talent, both domestically and internationally.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Atlético Madrid',
    kompetisi: 'La Liga',
    imageUrl:
        'https://awsimages.detik.net.id/community/media/visual/2023/08/29/atletico-madrid_169.jpeg?w=1200',
    isiBerita:
        'Club Atlético de Madrid, commonly referred to as Atlético Madrid or simply Atleti, is a prestigious Spanish football club based in Madrid. Established in 1903, Atlético Madrid is one of the most prominent and successful football clubs in Spain and Europe. The team competes in La Liga, the top division of Spanish football, and plays its home matches at the Wanda Metropolitano Stadium. Atlético Madrid has a rich history of domestic success, with numerous La Liga titles and Copa del Rey victories to its name. The club has also excelled in international competitions, winning the UEFA Europa League and reaching the UEFA Champions League final multiple times. Known for its resilient and competitive style of play, Atlético Madrid has a dedicated fan base and a historic rivalry with Real Madrid. The team has been home to several iconic football figures and continues to be a formidable presence in the world of football.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'AC Milan',
    kompetisi: 'Serie A',
    imageUrl:
        'https://www.arsenal.com/sites/default/files/styles/desktop_16x9/public/images/ac-milan-line-up.png?auto=webp&itok=JXgIt80R',
    isiBerita:
        'Associazione Calcio Milan, commonly known as AC Milan, is one of Italys most storied and successful football clubs. Founded in 1899, AC Milan is based in Milan and competes in Serie A, Italys top professional football league. The club plays its home matches at the San Siro Stadium, officially known as the Giuseppe Meazza Stadium, which it shares with Inter Milan, its crosstown rival. AC Milan has a rich history of domestic and international success, having won numerous Serie A titles and Coppa Italia trophies. The club has also achieved remarkable success in European competitions, including the UEFA Champions League, with a history of iconic players such as Paolo Maldini, Franco Baresi, and Marco van Basten gracing its ranks. Known for its red and black striped jerseys, AC Milan has a passionate global fan base and a long-standing rivalry with Inter Milan, creating the famous "Derby della Madonnina" matchups between the two Milanese teams.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Juventus',
    kompetisi: 'Serie A',
    imageUrl:
        'https://www.arsenal.com/sites/default/files/styles/large_16x9/public/images/juventus-line-up.png?auto=webp&itok=6nB1meJs',
    isiBerita:
        'Juventus Football Club, commonly known as Juventus or Juve, is a distinguished Italian football club located in Turin, Italy. Founded in 1897, Juventus is renowned for its rich history of success, boasting a record number of Serie A titles, Italian Cups, and Supercoppa Italiana victories. The team plays their home matches at the Allianz Stadium, which is recognized for its passionate and loyal fan base known as "Bianconeri" (Black and Whites). Juventus has a strong presence in international competitions as well, with two UEFA Champions League titles and numerous appearances in the competitions knockout stages. The club has been home to legendary players such as Alessandro Del Piero, Michel Platini, and Cristiano Ronaldo, further solidifying its status as one of the most dominant and storied clubs in Italian and European football history.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'AS Roma',
    kompetisi: 'Serie A',
    imageUrl:
        'https://asset-2.tstatic.net/madura/foto/bank/images/Skuad-AS-Roma-saat-melawan-Servette-pada-matchday-kedua-Liga-Europa.jpg',
    isiBerita:
        'Associazione Sportiva Roma, commonly known as AS Roma, is a prominent Italian football club based in Rome, Italy. Founded in 1927, AS Roma competes in Serie A, Italys top football league, and plays its home matches at the Stadio Olimpico, which it shares with city rivals Lazio. The club has a dedicated and passionate fan base known as Giallorossi, which translates to Yellow and Reds, representing the teams traditional colors. AS Roma has enjoyed success in Italian football, winning Serie A titles and domestic cups such as the Coppa Italia. The club has also competed in European competitions, including the UEFA Champions League. Throughout its history, AS Roma has been home to notable players and has built a reputation for its attacking style of play and a strong presence in Italian football.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Fiorentina',
    kompetisi: 'Serie A',
    imageUrl:
        'https://cdns.klimg.com/bola.net/library/upload/21/2023/08/645x430/fiorentina-nicolas-g_c725bd7.jpg',
    isiBerita:
        'ACF Fiorentina, commonly known as Fiorentina, is an Italian professional football club based in Florence, Italy. Established in 1926, the club competes in Serie A, Italys top football division, and plays its home matches at the Stadio Artemio Franchi. Fiorentinas distinctive purple and white colors have made it a recognizable presence in Italian football, and the team has a dedicated fan base. Over the years, Fiorentina has experienced varying degrees of success, including Serie A titles and Coppa Italia victories. The club has also been involved in European competitions, such as the UEFA Europa League. Fiorentina is known for its commitment to developing young talent and has seen several renowned players grace its ranks, contributing to its place in the rich tapestry of Italian football history.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Napoli',
    kompetisi: 'Serie A',
    imageUrl:
        'https://awsimages.detik.net.id/community/media/visual/2022/10/27/napoli-5.jpeg?w=1200',
    isiBerita:
        'Società Sportiva Calcio Napoli, commonly referred to as Napoli, is a prominent Italian football club based in Naples, Italy. Founded in 1926, Napoli competes in Serie A, Italys top-tier football league, and plays its home matches at the Stadio Diego Armando Maradona, formerly known as the Stadio San Paolo. The club is distinguished by its sky-blue and white colors and has a passionate fan base, known as Partenopei or Azzurri. Napoli has a storied history, with several Serie A titles and Coppa Italia victories to its name. The club has also made its presence felt in European competitions, including the UEFA Champions League. Napoli is renowned for its attacking style of play and has been home to legendary players, including Diego Maradona, who left an indelible mark on the clubs history.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Liverpool',
    kompetisi: 'Premier League',
    imageUrl:
        'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2022/10/12/1982150214.jpg',
    isiBerita:
        'Liverpool Football Club, commonly known as Liverpool FC or simply Liverpool, is a highly esteemed English football club based in Liverpool, Merseyside. Founded in 1892, Liverpool is one of the most successful and iconic clubs in English football history. The team plays their home matches at Anfield, known for its electric atmosphere and the famous "Youll Never Walk Alone anthem. Liverpool has an extensive trophy cabinet, featuring numerous English league titles, FA Cups, and UEFA Champions League titles. The clubs passionate and dedicated fan base, known as The Reds, is renowned for its unwavering support. Liverpool has a rich history of legendary players, including Steven Gerrard, Kenny Dalglish, and Ian Rush, and continues to be a force in English and international football under the management of Jürgen Klopp.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Manchester United',
    kompetisi: 'Premier League',
    imageUrl:
        'https://akcdn.detik.net.id/visual/2023/09/21/bayern-munchen-vs-manchester-united-3_169.jpeg?w=400&q=90',
    isiBerita:
        'Manchester United Football Club, commonly referred to as Manchester United or Man United, is one of the most prominent and successful football clubs in England and the world. Founded in 1878, the club is based in Manchester and competes in the English Premier League, the top-tier football division in England. The team plays its home matches at Old Trafford, one of the most iconic and well-known stadiums in the sport. Manchester United has a storied history of domestic success, boasting numerous English league titles, FA Cup victories, and UEFA Champions League titles.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Manchester City',
    kompetisi: 'Premier League',
    imageUrl:
        'https://a.espncdn.com/media/motion/2023/1013/dm_231013_COM_SOC_Analysis_Is_Rodri_or_Haaland_Manchester_Citys_MVP_20231013_GLOBAL/dm_231013_COM_SOC_Analysis_Is_Rodri_or_Haaland_Manchester_Citys_MVP_20231013_GLOBAL.jpg',
    isiBerita:
        'Manchester City Football Club, commonly known as Man City, is a prominent English football club based in Manchester. Founded in 1880, Manchester City competes in the English Premier League, the top tier of English football. The team plays its home matches at the Etihad Stadium. Over the years, Manchester City has experienced significant success, including numerous English league titles, FA Cup wins, and EFL Cup victories. The club has been home to various legendary players and managers, and it has achieved newfound prominence and success in the modern era under the ownership of the Abu Dhabi United Group. With its passionate fan base, Manchester City has become a major force in English and European football, competing at the highest levels both domestically and internationally.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Chelsea',
    kompetisi: 'Premier League',
    imageUrl:
        'https://cdns.klimg.com/bola.net/library/upload/21/2023/10/645x430/chelsea-palmer_72b02da.jpg',
    isiBerita:
        'Chelsea Football Club is a highly regarded English football club based in London. Founded in 1905, Chelsea competes in the English Premier League, the top tier of English football, and plays its home matches at Stamford Bridge. The club is known for its royal blue colors and has a passionate and dedicated fan base. Chelsea has a storied history of success, including multiple English Premier League titles, FA Cup wins, and UEFA Champions League triumphs. The club has been home to numerous renowned players and managers, and it is recognized for its ability to attract top talent from around the world. Chelseas transformation into a football powerhouse was notably accelerated by the financial backing of Russian billionaire Roman Abramovich, which ushered in a period of considerable success and expansion.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Bayern Munchen',
    kompetisi: 'Bundesliga',
    imageUrl:
        'https://www.hindustantimes.com/ht-img/img/2023/06/30/1600x900/Soccer-Germany-Schedule-0_1688135902643_1688135975554.jpg',
    isiBerita:
        'FC Bayern München, commonly known as Bayern Munich, is one of the most successful and celebrated football clubs in Germany and Europe. Founded in 1900, Bayern Munich is based in Munich, Bavaria, and competes in the Bundesliga, the top division of German football. The team plays its home matches at the Allianz Arena. Bayern Munich has a rich history of domestic success, with numerous Bundesliga titles and DFB-Pokal (German Cup) victories to its name. The club has also achieved prominence on the international stage, with several UEFA Champions League titles. Bayern Munich is recognized for its iconic red and white colors and boasts a passionate global fan base. The club has been home to legendary players like Franz Beckenbauer, Gerd Müller, and more recently, players like Thomas Müller and Robert Lewandowski. Under various renowned managers, Bayern Munich has maintained a tradition of excellence and continues to be a dominant force in German and European football.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Borussia Dortmund',
    kompetisi: 'Bundesliga',
    imageUrl:
        'https://cloudfront-us-east-2.images.arcpublishing.com/reuters/XIXSFOO3TNJQBJ5TYUOZ4J3U6Y.jpg',
    isiBerita:
        'Borussia Dortmund, often referred to simply as Dortmund or BVB, is one of the most renowned football clubs in Germany and Europe. Established in 1909, Borussia Dortmund is located in Dortmund, North Rhine-Westphalia, and competes in the Bundesliga, the top division of German football. The team plays its home matches at Signal Iduna Park, one of the largest and most iconic stadiums in Europe, known for its passionate and fervent "Yellow Wall" of fans.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'RB Leipzig',
    kompetisi: 'Bundesliga',
    imageUrl:
        'https://imageio.forbes.com/specials-images/imageserve/649ea97fa1d2385ef66aa5c1/RB-Leipzig-players-celebrae-a-goal-/960x0.jpg?format=jpg&width=960',
    isiBerita:
        'RasenBallsport Leipzig, commonly known as RB Leipzig, is a German football club founded in 2009 and based in Leipzig, Saxony. The club quickly rose through the ranks of German football and competes in the Bundesliga, the top division of German football. Known for its high-intensity, pressing style of play, RB Leipzig has enjoyed rapid success, consistently finishing near the top of the Bundesliga and participating in European competitions like the UEFA Champions League. The clubs corporate structure and financial backing by Red Bull have been subject to debate in the football world, but RB Leipzigs commitment to developing young talents and its emergence as a competitive force in German and European football make it a notable presence in the sport.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Bayer Leverkusen',
    kompetisi: 'Bundesliga',
    imageUrl:
        'https://imgresizer.eurosport.com/unsafe/2560x1440/filters:format(jpeg)/origin-imgresizer.eurosport.com/2023/03/19/3658954-74488008-2560-1440.jpg',
    isiBerita:
        'Bayer 04 Leverkusen, commonly known as Bayer Leverkusen, is a prominent German football club based in Leverkusen, North Rhine-Westphalia. Founded in 1904, the club competes in the Bundesliga, Germanys top-tier football league, and plays its home matches at the BayArena. Bayer Leverkusen has a history of competitive performances in domestic competitions, with notable appearances in the Bundesliga and the DFB-Pokal (German Cup). The club has also established a presence in European competitions, including the UEFA Champions League. Known for its red and black colors, Bayer Leverkusen has been home to talented players and managers over the years, making it a respected and competitive club in German football.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Paris Saint-Germain',
    kompetisi: 'Ligue 1',
    imageUrl:
        'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/04/28/3264220148.jpg',
    isiBerita:
        'Paris Saint-Germain Football Club, commonly known as PSG, is a prestigious French football club based in Paris. Established in 1970, PSG competes in Ligue 1, the top division of French football, and plays its home matches at the Parc des Princes. The club is known for its iconic blue and red colors and has achieved considerable domestic success, boasting numerous Ligue 1 titles and Coupe de France victories. PSGs transformation into a football powerhouse was notably accelerated by the financial backing of the Qatar Sports Investments group, which ushered in a period of considerable success and high-profile player acquisitions. The club has been home to football stars like Neymar and Kylian Mbappé and has made a significant impact in European competitions, including the UEFA Champions League, with the ambition of becoming a major force in international football.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Marseille',
    kompetisi: 'Ligue 1',
    imageUrl:
        'https://img.lemde.fr/2022/11/01/0/0/6156/4104/664/0/75/0/3616064_5617059-01-06.jpg',
    isiBerita:
        'Olympique de Marseille, commonly known as Marseille or simply OM, is a prominent French football club based in Marseille, France. Established in 1899, the club competes in Ligue 1, the top division of French football, and plays its home matches at the Stade Vélodrome. Marseille is known for its iconic sky-blue and white colors and has a passionate and dedicated fan base. The club has a rich history of domestic success, with numerous Ligue 1 titles and Coupe de France victories. Marseille is also recognized for its involvement in European competitions, including winning the UEFA Champions League in 1993, which remains a historic achievement for the club. With a tradition of attracting both French and international talent, Marseille continues to be a significant and respected presence in French and European football.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Lille',
    kompetisi: 'Ligue 1',
    imageUrl:
        'https://e0.365dm.com/21/05/1600x900/skysports-burak-yilmaz-lille_5373781.jpg?20210507225406',
    isiBerita:
        'Lille Olympique Sporting Club, commonly known as Lille or LOSC, is a prominent French football club located in Lille, in the northern region of France. Established in 1944, the club competes in Ligue 1, the top division of French football, and plays its home matches at the Stade Pierre-Mauroy. Lille is known for its distinctive red and white colors and has a history of moderate domestic success, including Ligue 1 titles and Coupe de France victories. The club has also been involved in European competitions, such as the UEFA Champions League. Lille has a reputation for nurturing young talent and has been home to promising players who have gone on to successful careers in top European clubs. The teams surprising Ligue 1 title win in the 2020-2021 season was seen as a significant achievement and showcased the clubs ability to compete at the highest level in French football.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Lyon',
    kompetisi: 'Ligue 1',
    imageUrl:
        'https://www.arsenal.com/sites/default/files/styles/desktop_16x9/public/images/lyon-team.png?auto=webp&itok=DM0s7ZLB',
    isiBerita:
        'Olympique Lyonnais, commonly known as Lyon, is a highly regarded French football club based in Lyon, France. Established in 1950, the club competes in Ligue 1, the top division of French football, and plays its home matches at the Groupama Stadium. Lyon is known for its iconic red and blue colors and boasts a dedicated fan base. The club has a history of domestic success, including numerous Ligue 1 titles and Coupe de France victories. Lyon is also notable for its significant presence in European competitions, particularly in the UEFA Champions League. The club is renowned for its emphasis on developing young talents and has been home to notable players like Karim Benzema, Juninho, and Alexandre Lacazette. With a tradition of attractive and attacking football, Lyon continues to be a major force in French and European football.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Galatasaray',
    kompetisi: 'Champions League',
    imageUrl:
        'https://dims.apnews.com/dims4/default/0f6de69/2147483647/strip/true/crop/8640x5760+0+0/resize/599x399!/quality/90/?url=https%3A%2F%2Fassets.apnews.com%2F8c%2F83%2F7682e3983fa00f56015f0976cf7d%2F44fef66eff55468389716d29074d2a8b',
    isiBerita:
        'Galatasaray S.K., commonly known as Galatasaray, is a prestigious Turkish sports club based in Istanbul, Turkey. Founded in 1905, the club is known for its passionate fan base and its participation in a wide range of sports, including football, basketball, and volleyball. Galatasaray is one of the most successful football clubs in Turkey, competing in the Süper Lig, the top-tier football division. The club plays its home matches at Türk Telekom Stadium. Galatasarays football team has achieved multiple Süper Lig titles and Turkiye Kupas (Turkish Cup) wins.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Benfica',
    kompetisi: 'Champions League',
    imageUrl:
        'https://d3j2s6hdd6a7rg.cloudfront.net/v2/uploads/media/default/0002/32/thumb_131363_default_news_size_5.jpeg',
    isiBerita:
        'Sport Lisboa e Benfica, commonly known as Benfica, is a revered Portuguese football club based in Lisbon, Portugal. Established in 1904, the club competes in the Primeira Liga, Portugals top football division, and plays its home matches at the Estádio da Luz. Benfica is known for its iconic red and white colors and has a passionate and devoted fan base. The club boasts a rich history of domestic success, with numerous Primeira Liga titles and Taça de Portugal (Portuguese Cup) victories. Benfica has also made a mark in European competitions, with two European Cup/UEFA Champions League titles to its name. The club is renowned for its emphasis on developing young talent and has been home to notable players like Eusébio, Rui Costa, and more recently, João Cancelo. With an attacking style of play and a tradition of excellence, Benfica continues to be a dominant force in Portuguese and European football.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Feyenoord',
    kompetisi: 'Champions League',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO38svpCPMNtkvvWKWAZlIF5hNpfrd9yGmOkmIhmQzBkkYPQduB9SppJl5NGtdm6FAhRI&usqp=CAU',
    isiBerita:
        'Feyenoord Rotterdam, commonly known as Feyenoord, is a prestigious Dutch football club based in Rotterdam, Netherlands. Founded in 1908, the club competes in Eredivisie, the top division of Dutch football, and plays its home matches at the Stadion Feijenoord, often referred to as De Kuip. Feyenoord is recognized for its distinctive red and white colors and has a passionate fan base. The club has a rich history of domestic success, including numerous Eredivisie titles and KNVB Cups (Dutch domestic cup) victories. Feyenoord has also achieved international prominence, winning the UEFA Cup (now known as the UEFA Europa League) in 1970, making it the first Dutch club to win a major European competition. With a tradition of developing young talents and a competitive presence in both Dutch and European football, Feyenoord is a respected institution in the world of soccer.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'FC Porto',
    kompetisi: 'Champions League',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDns9kXIfFDRcIR5KP-TkYbCHZXKs-cB56z7turiA9GfBEiimM9cSws9xY__Fk1bPEoGk&usqp=CAU',
    isiBerita:
        'Futebol Clube do Porto, commonly known as FC Porto or simply Porto, is a prominent Portuguese football club based in Porto, Portugal. Founded in 1893, Porto competes in the Primeira Liga, Portugals top football division, and plays its home matches at the Estádio do Dragão. The club is recognized for its blue and white striped colors and has a passionate fan base. Porto has a rich history of domestic success, including numerous Primeira Liga titles and Taça de Portugal (Portuguese Cup) victories.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Olympiacos',
    kompetisi: 'Europa League',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKY2jgUKESJqIiN7dL28pzP5p323qS0Dj50-SGXVIiYA-M0x9cZEWKDarY5jtFkV5hRfw&usqp=CAU',
    isiBerita:
        'Olympiacos Football Club, commonly known as Olympiacos, is a highly successful Greek football club based in Piraeus, near Athens. Established in 1925, Olympiacos competes in the Super League Greece, the top division of Greek football, and plays its home matches at the Georgios Karaiskakis Stadium. The club is known for its red and white colors and boasts a fervent and devoted fan base. Olympiacos has a rich history of domestic success, having secured numerous Super League Greece titles and Greek Cup victories. The club has also been a prominent presence in European competitions, particularly the UEFA Champions League and the UEFA Europa League. With a tradition of excellence in Greek football and a strong emphasis on youth development, Olympiacos remains one of the most iconic and competitive football clubs in Greece and Europe.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Ajax',
    kompetisi: 'Europa League',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5QCY-MSX47Xg9JoeWgoZ8BPTQaLGbOowjOKhX1ySxnSqna0_eKVpiPcmW7dS7vA0M_NA&usqp=CAU',
    isiBerita:
        'AFC Ajax, commonly known as Ajax, is a renowned Dutch football club based in Amsterdam, Netherlands. Established in 1900, Ajax competes in the Eredivisie, the top division of Dutch football, and plays its home matches at the Johan Cruijff Arena. The club is recognized for its iconic red and white colors and has a passionate fan base. Ajax has a storied history of domestic success, with numerous Eredivisie titles and KNVB Cup (Dutch Cup) victories. The club has also achieved international prominence, winning multiple European Cup/Champions League titles, which cemented its reputation as a European football giant. Ajax is well-known for its famed youth academy, which has produced world-class talent like Johan Cruyff, Marco van Basten, and more recently, Frenkie de Jong and Matthijs de Ligt. With a tradition of attacking, free-flowing football and a commitment to nurturing young players, Ajax continues to be a dominant force in Dutch and European football.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Rangers',
    kompetisi: 'Europa League',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU1MyRBRljRABThp0F3Jmc4resR5-8c09p-scE93vDFMgyxSKW5e_UGyn0K0VZGauCLPg&usqp=CAU',
    isiBerita:
        'Rangers Football Club, commonly known as Rangers, is one of the most prominent and successful football clubs in Scotland. Established in 1872, Rangers are based in Glasgow and compete in the Scottish Premiership, the top division of Scottish football. The club plays its home matches at Ibrox Stadium. Rangers are known for their iconic blue and white colors and have a passionate and dedicated fan base. The club has a rich history of domestic success, boasting numerous Scottish league titles and Scottish Cup victories. Rangers have also been involved in European competitions, with notable achievements in the UEFA Cup (now the UEFA Europa League). The club has a long-standing rivalry with Celtic, known as the "Old Firm," which is one of the most intense and famous rivalries in world football. Rangers have had legendary players like Ally McCoist, Brian Laudrup, and recently, Steven Davis, and their tradition of success and passionate support continues to make them a major force in Scottish football.',
    penulis: getRandomPenulis(),
  ),
  Berita(
    judul: 'Sporting CP',
    kompetisi: 'Europa League',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaRrmK9tEyOfAJP771NLL9qKWx9Zh8bEnGzvI5p6L_nPWO3cqkD-ddcWeAYtYb3PSC-ek&usqp=CAU',
    isiBerita:
        'Sporting Clube de Portugal, commonly known as Sporting CP or simply Sporting, is a renowned Portuguese football club based in Lisbon, Portugal. Established in 1906, Sporting competes in the Primeira Liga, Portugals top football division, and plays its home matches at the Estádio José Alvalade. The club is known for its iconic green and white colors and has a passionate and devoted fan base. Sporting has a rich history of domestic success, including multiple Primeira Liga titles and Taça de Portugal (Portuguese Cup) victories. The club has also made its mark in European competitions, with success in the UEFA Cup Winners Cup and the UEFA Europa League. Sporting is renowned for its emphasis on youth development and has been home to talented players like Cristiano Ronaldo and Luís Figo. With a tradition of competitive football and a strong presence in both Portuguese and European football, Sporting CP continues to be a respected and historic institution in the world of soccer.',
    penulis: getRandomPenulis(),
  ),
];
