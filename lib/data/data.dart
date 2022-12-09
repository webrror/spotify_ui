import 'package:flutter/material.dart';

List<Map> recentSmallCards = [
  recentlyPlayed[0], recentlyPlayed[3]
];

List<Map> songs = [
  {
    'id':1,
    'name':'Temporary',
    'artist':'Ella Vos',
    'album':'Temporary',
    'albumArt':'https://res.cloudinary.com/jgarden/image/upload/v1670526625/Spotify%20UI/Album%20Arts/gmhdlcv7zesm04aeffev.jpg',
    'isLiked':false,
    'isExplicit':false
  },
  {
    'id':2,
    'name':'San Diego',
    'artist':'BRDGS',
    'album':'Ie+',
    'albumArt':'https://res.cloudinary.com/jgarden/image/upload/v1670526692/Spotify%20UI/Album%20Arts/nesr8nolqojpvk2vn1t0.jpg',
    'isLiked':true,
    'isExplicit':false
  },
  {
    'id':3,
    'name':"always, i'll care",
    'artist':'Jeremy Zucker',
    'album':'love is not dying',
    'albumArt':'https://res.cloudinary.com/jgarden/image/upload/v1670526841/Spotify%20UI/Album%20Arts/ky0s1f8xb72qgwnsfng3.jpg',
    'isLiked':true,
    'isExplicit':false
  },
  {
    'id':4,
    'name':"Who Do You Love",
    'artist':'The Chainsmokers, 5 Seconds of Summer',
    'album':'World War Joy',
    'albumArt':'https://res.cloudinary.com/jgarden/image/upload/v1670527083/Spotify%20UI/Album%20Arts/c2dffggeqqtqbnoyhwuh.jpg',
    'isLiked':true,
    'isExplicit':true
  },
  {
    'id':5,
    'name':"O Sanam",
    'artist':'Lucky Ali',
    'album':'Sunoh',
    'albumArt':'https://res.cloudinary.com/jgarden/image/upload/v1670527236/Spotify%20UI/Album%20Arts/xabnghobgk0qxkuyqjcp.jpg',
    'isLiked':true,
    'isExplicit':false
  },
  {
    'id':6,
    'name':"But Us",
    'artist':'Florian Picasso, Echosmith',
    'album':'But Us',
    'albumArt':'https://res.cloudinary.com/jgarden/image/upload/v1670527470/Spotify%20UI/Album%20Arts/aew62zllskwmptfn3oai.jpg',
    'isLiked':true,
    'isExplicit':false
  },
  {
    'id':7,
    'name':"Follow",
    'artist':'Martin Garrix, Zedd',
    'album':'Follow',
    'albumArt':'https://res.cloudinary.com/jgarden/image/upload/v1670527646/Spotify%20UI/Album%20Arts/daq5oivttpp2mx76mhm4.jpg',
    'isLiked':false,
    'isExplicit':false
  },
  {
    'id':8,
    'name':"Higher (feat. Opposite the Other)",
    'artist':'Midnight Kids, Opposite the Other',
    'album':'The Lost Youth',
    'albumArt':'https://res.cloudinary.com/jgarden/image/upload/v1670527879/Spotify%20UI/Album%20Arts/mt65dyljuu8gwsvwotel.jpg',
    'isLiked':true,
    'isExplicit':false
  },
  {
    'id':9,
    'name':"High Tide",
    'artist':'Shallou',
    'album':'High Tide',
    'albumArt':'https://res.cloudinary.com/jgarden/image/upload/v1670528041/Spotify%20UI/Album%20Arts/yfrzerbbau8aynfx5rpl.jpg',
    'isLiked': true,
    'isExplicit':false
  },
  {
    'id':10,
    'name':"Runaway Kids",
    'artist':'HARBOUR',
    'album':'Runaway Kids',
    'albumArt':'https://res.cloudinary.com/jgarden/image/upload/v1670528234/Spotify%20UI/Album%20Arts/soqmmzyzqbp686l3fhm9.jpg',
    'isLiked':false,
    'isExplicit':false
  },
  {
    'id':11,
    'name':"Next2u",
    'artist':'Mike Lee',
    'album':'Another Step',
    'albumArt':'https://res.cloudinary.com/jgarden/image/upload/v1670528518/Spotify%20UI/Album%20Arts/zaepepd6ouljiprwvwox.jpg',
    'isLiked':false,
    'isExplicit':false
  },
  {
    'id':12,
    'name':"PSYCHO",
    'artist':'Anne Marie',
    'album':'PSYCHO',
    'albumArt':'https://res.cloudinary.com/jgarden/image/upload/v1670528773/Spotify%20UI/Album%20Arts/yawzrdxvmcyrdy2zbmo7.jpg',
    'isLiked':false,
    'isExplicit':true
  },
];

List<Map> madeForUser = [
  {
    'id':1,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670510816/Spotify%20UI/Made%20for%20user/sk7k2ynl5xpfmj2qyr2w.jpg',
    'name':'Daily Mix 1',
    'description':'The Chainsmokers, Billie Eilish, Ella Vos and more',
    'duration':'2h 40min',
    'songs': songs,
    'colors':[
      const Color(0xFF98e4d8),
      Colors.transparent
    ]
  },
  {
    'id':2,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670511523/Spotify%20UI/Made%20for%20user/jwfdwkooiepphypsfajj.jpg',
    'name':'Daily Mix 2',
    'description':'Shankar-Ehsaan-Loy, Pritam, Vishal-Shekhar and more',
    'duration':'2h 40min',
    'songs': songs,
    'colors':[
      const Color(0xFFf6c8ca),
      Colors.transparent
    ]
  },
  {
    'id':3,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670511727/Spotify%20UI/Made%20for%20user/mtmu11tj5h3xb7tkvljr.jpg',
    'name':'Daily Mix 3',
    'description':'Audiomachine, Martin Garrix, Mark Petrie and more',
    'duration':'2h 40min',
    'songs': songs,
    'colors':[
      const Color(0xFFb5dcba),
      Colors.transparent
    ]
  },
  {
    'id':4,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670510887/Spotify%20UI/Made%20for%20user/korjmmo8ndal09r0a1ow.jpg',
    'name':'Daily Mix 4',
    'description':'Shallou, Laszlo, Oscillian and more',
    'duration':'2h 40min',
    'songs': songs,
    'colors':[
      const Color(0xFFdc799f),
      Colors.transparent
    ]
  },
  {
    'id':5,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670512107/Spotify%20UI/Made%20for%20user/nvbrkjite97huh699txi.jpg',
    'name':'Daily Mix 5',
    'description':'LANY, HARBOUR, Henry Hall and more',
    'duration':'2h 40min',
    'songs': songs,
    'colors':[
      const Color(0xFFf8c46b),
      Colors.transparent
    ]
  },
  {
    'id':6,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670512323/Spotify%20UI/Made%20for%20user/cuho4hfanlrlwberx6p0.jpg',
    'name':'Daily Mix 6',
    'description':'Chelsea Cutler, FRENSHIP, Forester and more',
    'duration':'2h 40min',
    'songs': songs,
    'colors':[
      const Color(0xFF93b5c1),
      Colors.transparent
    ]
  },
  {
    'id':7,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670512355/Spotify%20UI/Made%20for%20user/k8by3cigompyh2lwhkca.jpg',
    'name':'Discover Weekly',
    'description':'Your weekly mixtape of fresh music. Enjoy new music and deep cuts picked for you. Updates every Monday.',
    'duration':'2h 40min',
    'songs': songs,
    'colors':[
      const Color(0xFF364974),
      Colors.transparent
    ]
  },
  {
    'id':8,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670512410/Spotify%20UI/Made%20for%20user/otcuoeulv4vkpkokirav.jpg',
    'name':'Release Radar',
    'description':'Catch all the latest music from artists you follow, plus new singles picked for you. Updates every Friday.',
    'duration':'2h 40min',
    'songs': songs,
    'colors':[
      const Color(0xFFcacaca),
      Colors.transparent
    ]
  },
];

List<Map> recentlyPlayed = [
  {
    'id':1,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670503422/Spotify%20UI/Common/s8o9escqxnc9mhchgfpv.png',
    'title': 'Liked Songs',
    'type': 'Liked',
    'songs': songs,
    'colors': [const Color(0xFF523ba0), Colors.transparent]
  },
  {
    'id':2,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670513754/Spotify%20UI/Common/miiqvskx3mixs87evrvu.jpg',
    'name': 'Your Top Songs 2022',
    'description':
        'Spotify Wrapped presents the songs that you loved most this year.',
    'duration': '2h 40min',
    'type': 'Playlist',
    'songs': songs,
    'colors': [const Color.fromARGB(255, 26, 176, 61), Colors.transparent]
  },
  {
    'id':3,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670514119/Spotify%20UI/Album%20Arts/xcfmr3cllpj2rffgkaoq.jpg',
    'title': 'Sleeping with Roses',
    'type': 'Album',
    'artist': 'Chelsea Cutler',
    'colors': [const Color(0xFF523ba0), Colors.transparent],
    'artistAvatar':
        'https://res.cloudinary.com/jgarden/image/upload/v1670578189/Spotify%20UI/Artist%20Avatar/euzt6hgkfcfe00fxk3yp.jpg',
    'year': '2018',
    'date': 'June 8',
    'copyright': '© ℗ 2018 Chelsea Cutler',
    'songs': [
      {'title': "Deserve This", 'artists': 'Chelsea Cutler'},
      {'title': "Lonely Alone", 'artists': 'Chelsea Cutler, Jeremy Zucker'},
      {'title': "The Reason", 'artists': 'Chelsea Cutler'},
      {'title': "Someone Else", 'artists': 'Chelsea Cutler'},
      {'title': "Hell", 'artists': 'Chelsea Cutler'},
    ]
  },
  {
    'id':4,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670503242/Spotify%20UI/Album%20Arts/gmomfqbdcz7lmlma8tib.jpg',
    'title': 'So Far So Good',
    'type': 'Album',
    'artist': 'The Chainsmokers',
    'colors': [const Color(0xFF523ba0), Colors.transparent],
    'artistAvatar':
        'https://res.cloudinary.com/jgarden/image/upload/v1670578310/Spotify%20UI/Artist%20Avatar/mglr24yy8zdqucq2l6ni.jpg',
    'year': '2022',
    'date': 'May 13',
    'copyright': '℗ 2022 Disruptor Records/Columbia Records',
    'songs': [
      {'title': "Riptide", 'artists': 'The Chainsmokers'},
      {'title': "iPad", 'artists': 'The Chainsmokers'},
      {'title': "Something Different", 'artists': 'The Chainsmokers'},
      {'title': "Why Can't You Wait", 'artists': 'The Chainsmokers'},
      {'title': "The Fall", 'artists': 'The Chainsmokers'},
      {'title': "Testing", 'artists': 'The Chainsmokers'},
    ]
  },
  {
    'id':5,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670514200/Spotify%20UI/Album%20Arts/vycnljsmuyerre8fsnge.jpg',
    'title': 'Acrobatic',
    'type': 'Single',
    'artist': 'SIDEPIECE',
    'colors': [const Color(0xFF523ba0), Colors.transparent],
    'artistAvatar':
        'https://res.cloudinary.com/jgarden/image/upload/v1670578410/Spotify%20UI/Artist%20Avatar/ifcyk7nzvkcqqhprgy8i.jpg',
    'year': '2021',
    'date': 'April 30',
    'copyright': '© ℗ 2021 Insomniac Records',
    'songs': [
      {'title': "Acrobatic", 'artists': 'SIDEPIECE'}
    ]
  },
  {
    'id':6,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670514325/Spotify%20UI/Album%20Arts/fxc1pv8ltauz273fq14u.jpg',
    'title': 'Not That Complicated',
    'type': 'Single',
    'colors': [const Color(0xFF523ba0), Colors.transparent],
    'artist': 'Osrin',
    'artistAvatar':
        'https://res.cloudinary.com/jgarden/image/upload/v1670613592/Spotify%20UI/Artist%20Avatar/jljfjspz7ewhiqzy0kzn.jpg',
    'year': '2019',
    'date': 'April 26',
    'copyright': '© ℗ 2019 STMPD RECORDS B.V.',
    'songs': [
      {'title': "Not That Complicated", 'artists': 'Osrin, Hilda'}
    ]
  },  
];

List<Map> indiaBest = [
  {
    'id':1,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670516156/Spotify%20UI/Playlist%20Covers/cnsyreoq4izzt4tfmhcg.jpg',
    'description': 'The best Indie tracks. Cover - Anuv Jain',
    'name': 'Indie India',
    'colors': [const Color(0xFFccf368), Colors.transparent],
    'likes': '263,222',
    'duration': '2h 40min',
    'by': 'Spotify',
    'byAvatar':
        'https://res.cloudinary.com/jgarden/image/upload/v1670615586/Spotify%20UI/Common/smnu60nhzbv4ohdhpaak.jpg',
    'songs': songs,
  },
  {
    'id':2,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670516129/Spotify%20UI/Playlist%20Covers/xxqvawplrxzf173ox0yz.jpg',
    'description':
        'The finest quality of Bollywood music handpicked for you. Cover- Alia and Ranbir.',
    'name': 'Bollywood Butter',
    'colors': [const Color(0xFFff4632), Colors.transparent],
    'by': 'Spotify',
    'byAvatar':
        'https://res.cloudinary.com/jgarden/image/upload/v1670615586/Spotify%20UI/Common/smnu60nhzbv4ohdhpaak.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
  {
    'id':3,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670516205/Spotify%20UI/Playlist%20Covers/rq5w9bmnayfckz27jffg.jpg',
    'description': 'Trending dance hits in India. Cover: King & Masked Wolf',
    'name': 'mint India',
    'colors': [const Color(0xFF5ef550), Colors.transparent],
    'by': 'Spotify',
    'byAvatar':
        'https://res.cloudinary.com/jgarden/image/upload/v1670615586/Spotify%20UI/Common/smnu60nhzbv4ohdhpaak.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
  {
    'id':4,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670516178/Spotify%20UI/Playlist%20Covers/ijsomiyebsavepgrtxb2.jpg',
    'description':
        'Catch the most streamed female artists in 2022 #SpotifyWrapped',
    'name': 'Best of EQUAL India 2022',
    'colors': [const Color(0xFFf36ebd), Colors.transparent],
    'by': 'Spotify',
    'byAvatar':
        'https://res.cloudinary.com/jgarden/image/upload/v1670615586/Spotify%20UI/Common/smnu60nhzbv4ohdhpaak.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
  {
    'id':5,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670516237/Spotify%20UI/Playlist%20Covers/frr88rrx0o10e385g520.jpg',
    'description': 'The Kiraak-est set of Telugu Music! Cover: Pushpa',
    'name': 'Kiraak Telugu',
    'colors': [const Color(0xFFf9e14a), Colors.transparent],
    'by': 'Spotify',
    'byAvatar':
        'https://res.cloudinary.com/jgarden/image/upload/v1670615586/Spotify%20UI/Common/smnu60nhzbv4ohdhpaak.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
];

List<Map> charts = [
  {
    'id':1,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670517438/Spotify%20UI/Charts/tjsim1s62vauukwaenyd.jpg',
    'description':
        'Your daily update of the most played tracks right now - Global.',
    'name': 'Top 50 - Global',
    'colors': [const Color(0xFF1e3264), Colors.transparent],
    'by': 'Spotify',
    'byAvatar':
        'https://res.cloudinary.com/jgarden/image/upload/v1670615586/Spotify%20UI/Common/smnu60nhzbv4ohdhpaak.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
  {
    'id':2,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670517411/Spotify%20UI/Charts/lwh8poq3zszqjnhdrwsi.jpg',
    'description':
        'Your daily update of the most played tracks right now - India.',
    'name': 'Top 50 - India',
    'colors': [const Color(0xFF0e6e51), Colors.transparent],
    'by': 'Spotify',
    'byAvatar':
        'https://res.cloudinary.com/jgarden/image/upload/v1670615586/Spotify%20UI/Common/smnu60nhzbv4ohdhpaak.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
  {
    'id':3,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670517465/Spotify%20UI/Charts/zty71oejoe6dlpvzsyn5.jpg',
    'description': 'The hottest tracks in India. Cover: Taylor Swift.',
    'name': 'Hot Hits India',
    'colors': [const Color(0xFFfea32a), Colors.transparent],
    'by': 'Spotify',
    'byAvatar':
        'https://res.cloudinary.com/jgarden/image/upload/v1670615586/Spotify%20UI/Common/smnu60nhzbv4ohdhpaak.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
  {
    'id':4,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670517516/Spotify%20UI/Charts/oxtpu25mdpch0qdafugi.jpg',
    'description': 'Hottest Hindi music served here. Cover- Ranbir & Alia.',
    'name': 'Hot Hits Hindi',
    'colors': [const Color(0xFFe9142a), Colors.transparent],
    'by': 'Spotify',
    'byAvatar':
        'https://res.cloudinary.com/jgarden/image/upload/v1670615586/Spotify%20UI/Common/smnu60nhzbv4ohdhpaak.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
];

List<Map> moods = [
  {
    'id':1,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670517946/Spotify%20UI/Mood/sa1noudixo8erusrkb4v.jpg',
    'description': 'Feel good with this positively timeless playlist!',
    'name': "Feelin' Good",
    'colors': [const Color(0xFF529df2), Colors.transparent],
    'by': 'Spotify',
    'byAvatar':
        'https://res.cloudinary.com/jgarden/image/upload/v1670615586/Spotify%20UI/Common/smnu60nhzbv4ohdhpaak.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
  {
    'id':2,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670517967/Spotify%20UI/Mood/kew8exfr3fkqmgapkb5i.jpg',
    'description': 'Beautifully dark, dramatic tracks.',
    'name': "Dark & Stormy",
    'colors': [const Color(0xFF261d44), Colors.transparent],
    'by': 'Spotify',
    'byAvatar':
        'https://res.cloudinary.com/jgarden/image/upload/v1670615586/Spotify%20UI/Common/smnu60nhzbv4ohdhpaak.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
  {
    'id':3,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670517996/Spotify%20UI/Mood/dkp9eh7awcptz14tjuoy.jpg',
    'description': 'Happy vibes for an upbeat morning.',
    'name': "Feel Good Piano",
    'colors': [const Color(0xFF22379d), Colors.transparent],
    'by': 'Spotify',
    'byAvatar':
        'https://res.cloudinary.com/jgarden/image/upload/v1670615586/Spotify%20UI/Common/smnu60nhzbv4ohdhpaak.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
  {
    'id':4,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670518026/Spotify%20UI/Mood/tbkifhjqmzfiids1njxj.jpg',
    'description':
        'Somehow heartbreak feels good in a place like this. Cover: Taylor Swift',
    'name': "sad hour",
    'colors': [const Color(0xFF2a1815), Colors.transparent],
    'by': 'Spotify',
    'byAvatar':
        'https://res.cloudinary.com/jgarden/image/upload/v1670615586/Spotify%20UI/Common/smnu60nhzbv4ohdhpaak.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
  {
    'id':5,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670518046/Spotify%20UI/Mood/wt5fv5sptvyyub24jowm.jpg',
    'description': 'Softer kinda dance.',
    'name': "Chill Tracks",
    'colors': [const Color(0xFF4d6e71), Colors.transparent],
    'by': 'Spotify',
    'byAvatar':
        'https://res.cloudinary.com/jgarden/image/upload/v1670615586/Spotify%20UI/Common/smnu60nhzbv4ohdhpaak.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
  {
    'id':6,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670518062/Spotify%20UI/Mood/hobyddlbsyxzenfndwj7.jpg',
    'description': 'We hear you.',
    'name': "idk.",
    'colors': [const Color(0xFF8a8ca4), Colors.transparent],
    'by': 'Spotify',
    'byAvatar':
        'https://res.cloudinary.com/jgarden/image/upload/v1670615586/Spotify%20UI/Common/smnu60nhzbv4ohdhpaak.jpg',
    'duration': '2h 40min',
    'songs': songs,
    'likes': '263,222',
  },
];

List<Map> newReleases = [
  {
    'id':1,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670512410/Spotify%20UI/Made%20for%20user/otcuoeulv4vkpkokirav.jpg',
    'title':null,
    'description':
        'Catch all the latest music from artists you follow, plus new singles picked for you. Updates every Friday.',
    'duration': '2h 40min',
    'type': 'Playlist',
    'songs': songs,
    'name': 'Release Radar',
    'colors': [const Color(0xFFcacaca), Colors.transparent]
  },
  {
    'id':2,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670518764/Spotify%20UI/Album%20Arts/dljfaka6jcjhbs0zooof.jpg',
    'title':'Up To The Cloud',
    'description': 'Single • Neural Cloud',
    'type': 'Single',
    'artist': 'Neural Cloud',
    'colors': [const Color(0xFFac86e2), Colors.transparent],
    'artistAvatar':
        'https://res.cloudinary.com/jgarden/image/upload/v1670617477/Spotify%20UI/Artist%20Avatar/uhiiatotmty6bsmzfk8c.jpg',
    'year': '2022',
    'date': 'November 25',
    'copyright': '© ℗ 2022  Neural Cloud',
    'songs': [
      {'title': "Up To The Cloud", 'artists': 'Neural Cloud, Owl City'}
    ]
  },
  {
    'id':3,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670518813/Spotify%20UI/Album%20Arts/gaocv1zppgbffxdmv47n.jpg',
    'title':'Black Marble',
    'description': 'Album • Louis The Child',
    'type': 'Album',
    'artist': 'Louis The Child',
    'colors': [const Color(0xFF3c3c3c), Colors.transparent],
    'artistAvatar':
        'https://res.cloudinary.com/jgarden/image/upload/v1670617580/Spotify%20UI/Artist%20Avatar/eloe7qff6ryoemg2ij6g.jpg',
    'year': '2022',
    'date': 'December 2',
    'copyright': '© ℗ 2022 Interscope Records',
    'songs': [
      {'title': "The City Is Mine", 'artists': 'Louis The Child'},
      {'title': "Gritty", 'artists': 'Louis The Child'},
      {'title': "Hype", 'artists': 'Louis The Child'},
      {'title': "ooh", 'artists': 'Louis The Child'},
      {'title': "Wolf Teeth", 'artists': 'Louis The Child'},
      {'title': "Crushed Pieces", 'artists': 'Louis The Child'}
    ]
  },
  {
    'id':4,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670518879/Spotify%20UI/Album%20Arts/d8slagpkjbtuaxbn7b87.jpg',
    'title':'Worst Day (FIGHT CLVB x Tannergard Remix)',
    'description': 'Single • ILLENIUM, MAX, FIGHT CLVB',
    'type': 'Single',
    'artist': 'ILLENIUM',
    'colors': [const Color(0xFF2b0d41), Colors.transparent],
    'artistAvatar':
        'https://res.cloudinary.com/jgarden/image/upload/v1670617805/Spotify%20UI/Artist%20Avatar/xpat3wqrztskeynnj7rf.jpg',
    'year': '2022',
    'date': 'December 2',
    'copyright':
        '© ℗ 2022 Illenium LLC, under exclusive license to Warner Records Inc.',
    'songs': [
      {
        'title': "Worst Day - FIGHT CLVB x Tannergard Remix",
        'artists': 'ILLENIUM, MAX, FIGHT CLVB, Tannergard'
      }
    ]
  },
  {
    'id':5,
    'imageUrl':'https://res.cloudinary.com/jgarden/image/upload/v1670518922/Spotify%20UI/Album%20Arts/l2eck9c1axrrtxtyrs9s.jpg',
    'title':'Echo',
    'description': 'Single • Mokita, Augustana',
    'type': 'Single',
    'artist': 'Mokita',
    'colors': [const Color(0xFF545454), Colors.transparent],
    'artistAvatar':
        'https://res.cloudinary.com/jgarden/image/upload/v1670618009/Spotify%20UI/Artist%20Avatar/q4fwfrhanl9plhf22nir.jpg',
    'year': '2022',
    'date': 'December 2',
    'copyright':
        '© ℗ 2022 Mokita under exclusive license to Nettwerk Music Group Inc.',
    'songs': [
      {'title': "Echo", 'artists': 'Mokita, Augustana'}
    ]
  },
];
