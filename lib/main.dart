import 'package:flutter/material.dart';
import 'package:quest/models/contests/AppDetail.dart';

import 'components/StoriesLandingPage.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
  
final appDetails ={
    'type': 'generics',
    'contests': [
        {
            'generalConfig': {
                'gameTheme': 'dark',
                'thumbnail': 'https://image.freepik.com/free-vector/colorful-gradient-liquid-shapes-background_23-2148250143.jpg',
                'audioUrl': 'http://nl03.mp3pro.xyz/abc5139b5a924781951d3/JONY%20Love%20Your%20Voice%20My%20baby%20I%20love%20your%20voice%20English%20Songs%F0%9F%94%A5%F0%9F%94%A5%F0%9F%94%A5.mp3'
            },
            'gameLabel': 'A Dreadful Start',
            'gameName': 'adventure',
            'questions': [
                {
                    'text': 'NAME You have a box',
                    'questionConfig': {
                        'textColor': 'ghostwhite',
                        'imageTheme': 'fullScreen',
                        'img': 'https://images.unsplash.com/photo-1519074069444-1ba4fff66d16?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=linus-sandvide-5DIFvVwe6wk-unsplash.jpg&w=640'
                    },
                    'options': [
                        {
                            'text': 'Open the box',
                            'actionIndex': 1
                        },
                        {
                            'text': 'throw the box',
                            'actionIndex': 4
                        }
                    ]
                },
                {
                    'text': 'There is a key',
                    'questionConfig': {
                        'textColor': '#aaaaab',
                        'imageTheme': 'gallery',
                        'img': 'https://images.unsplash.com/photo-1519599189038-58e6fc7a060d?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=michael-shannon-mE6zS5LwScM-unsplash.jpg&w=640'
                    },
                    'options': [
                        {
                            'text': 'take the key',
                            'actionIndex': 2
                        },
                        {
                            'text': 'throw the box',
                            'actionIndex': 4
                        }
                    ]
                },
                {
                    'text': 'There is a door, but thats locked',
                    'questionConfig': {
                        'imageTheme': 'gallery',
                        'img': 'https://images.unsplash.com/photo-1553519247-44662ceaaf0b?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=fabrizio-conti-oMhdPgs6y7Q-unsplash.jpg&w=1920'
                    },
                    'options': [
                        {
                            'text': 'Open the door using the key',
                            'actionIndex': 3
                        },
                        {
                            'text': 'Go back',
                            'actionIndex': 4
                        }
                    ]
                },
                {
                    'text': 'You found the treasure,you won!',
                    'questionConfig': {
                        'textHighlight': 'neonBlink',
                        'imageTheme': 'fullScreen',
                        'img': 'https://images.unsplash.com/photo-1585924775990-bd3f24bbc72e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80'
                    },
                    'options': [
                        {
                            'text': 'exit the game',
                            'actionIndex': 0
                        }
                    ]
                },
                {
                    'text': 'Failed',
                    'questionConfig': {
                        'imageTheme': 'fullScreen',
                        'textHighlight': 'neonBlink'
                    },
                    'options': [
                        {
                            'text': 'exit the game',
                            'actionIndex': 0
                        }
                    ]
                }
            ]
        },
        {
            'generalConfig': {
                'canReset': true,
                'gameTheme': 'light',
                'thumbnail': 'https://image.cnbcfm.com/api/v1/image/105074499-quit_job.jpg?v=1532563667&w=1600&h=900',
                'audioUrl': 'http://nl03.mp3pro.xyz/abc5139b5a924781951d3/JONY%20Love%20Your%20Voice%20My%20baby%20I%20love%20your%20voice%20English%20Songs%F0%9F%94%A5%F0%9F%94%A5%F0%9F%94%A5.mp3'
            },
            'gameLabel': 'Should I Quit',
            'gameName': 'shouldIQuit',
            'questions': [
                {
                    'text': 'Hi, NAME You clicked on this right ?',
                    'questionConfig': {
                        'imageTheme': 'fullScreen',
                        'img': 'https://images.unsplash.com/photo-1577705998148-6da4f3963bc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'
                    },
                    'options': [
                        {
                            'text': 'Yes',
                            'actionIndex': 1
                        }
                    ]
                },
                {
                    'text': 'Did Your Boss send yoou this link ?',
                    'questionConfig': {
                        'imageTheme': 'gallery',
                        'img': 'https://images.unsplash.com/photo-1562701447-8ec5d514a2a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'
                    },
                    'options': [
                        {
                            'text': 'Yes',
                            'actionIndex': 0
                        },
                        {
                            'text': 'No',
                            'actionIndex': 2
                        }
                    ]
                },
                {
                    'text': 'Do you have a job offer ?',
                    'questionConfig': {
                        'imageTheme': 'fullScreen',
                        'img': 'https://images.unsplash.com/photo-1542251224-3e60f8d50cd8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1527&q=80'
                    },
                    'options': [
                        {
                            'text': 'Yes',
                            'actionIndex': 3
                        },
                        {
                            'text': 'No',
                            'actionIndex': 4
                        }
                    ]
                },
                {
                    'text': 'You found the treasure,you won!',
                    'questionConfig': {
                        'imageTheme': 'fullScreen',
                        'textHighlight': 'neonBlink',
                        'img': 'https://images.unsplash.com/photo-1585924775990-bd3f24bbc72e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80'
                    },
                    'options': [
                        {
                            'text': 'exit the game',
                            'actionIndex': 0
                        }
                    ]
                },
                {
                    'text': 'NAME Failed',
                    'questionConfig': {
                        'textHighlight': 'neonBlink',
                        'imageTheme': 'fullScreen'
                    },
                    'options': [
                        {
                            'text': 'exit the game',
                            'actionIndex': 0
                        }
                    ]
                }
            ]
        },
        {
            'generalConfig': {
                'canReset': true,
                'gameTheme': 'dark',
                'thumbnail': 'https://ichef.bbci.co.uk/news/1024/cpsprodpb/E909/production/_112375695_crucible976.jpg',
                'audioUrl': 'http://nl03.mp3pro.xyz/abc5139b5a924781951d3/JONY%20Love%20Your%20Voice%20My%20baby%20I%20love%20your%20voice%20English%20Songs%F0%9F%94%A5%F0%9F%94%A5%F0%9F%94%A5.mp3'
            },
            'gameLabel': 'Find Your Happiness',
            'gameName': 'happiness',
            'questions': [
                {
                    'text': 'NAME erangi podaa',
                    'questionConfig': {
                        'imageTheme': 'fullScreen',
                        'img': 'https://images.unsplash.com/photo-1519074069444-1ba4fff66d16?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=linus-sandvide-5DIFvVwe6wk-unsplash.jpg&w=640'
                    },
                    'options': [
                        {
                            'text': 'Open the box',
                            'actionIndex': 2
                        },
                        {
                            'text': 'throw the box',
                            'actionIndex': 4
                        }
                    ]
                },
                {
                    'text': 'There is a key',
                    'questionConfig': {
                        'imageTheme': 'gallery',
                        'img': 'https://images.unsplash.com/photo-1519599189038-58e6fc7a060d?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=michael-shannon-mE6zS5LwScM-unsplash.jpg&w=640'
                    },
                    'options': [
                        {
                            'text': 'take the key',
                            'actionIndex': 2
                        },
                        {
                            'text': 'throw the box',
                            'actionIndex': 4
                        }
                    ]
                },
                {
                    'text': 'There is a door, but thats locked',
                    'questionConfig': {
                        'imageTheme': 'fullScreen',
                        'img': 'https://images.unsplash.com/photo-1553519247-44662ceaaf0b?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=fabrizio-conti-oMhdPgs6y7Q-unsplash.jpg&w=1920'
                    },
                    'options': [
                        {
                            'text': 'Open the door using the key',
                            'actionIndex': 3
                        },
                        {
                            'text': 'Go back',
                            'actionIndex': 4
                        }
                    ]
                },
                {
                    'text': 'You found the treasure,you won!',
                    'questionConfig': {
                        'imageTheme': 'fullScreen',
                        'textHighlight': 'neonBlink',
                        'img': 'https://images.unsplash.com/photo-1541542684-be0c46417a12?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=edoardo-busti-HVWVERp33tQ-unsplash.jpg&w=640'
                    },
                    'options': [
                        {
                            'text': 'exit the game',
                            'actionIndex': 0
                        }
                    ]
                },
                {
                    'text': 'Failed',
                    'questionConfig': {
                        'imageTheme': 'gallery',
                        'textHighlight': 'neonBlink'
                    },
                    'options': [
                        {
                            'text': 'exit the game',
                            'actionIndex': 0
                        }
                    ]
                }
            ]
        },
        {
            'generalConfig': {
                'canReset': true,
                'gameTheme': 'dark',
                'thumbnail': 'https://images.greenmangaming.com/f73a2c9616654542802cdef97ef8c86e/9ac2fbebe01e4af2b6679d784c18dcff.jpg',
                'audioUrl': 'http://nl03.mp3pro.xyz/abc5139b5a924781951d3/JONY%20Love%20Your%20Voice%20My%20baby%20I%20love%20your%20voice%20English%20Songs%F0%9F%94%A5%F0%9F%94%A5%F0%9F%94%A5.mp3'
            },
            'gameLabel': 'Master Hunt',
            'gameName': 'spongeBob',
            'questions': [
                {
                    'text': 'NAME You have a box',
                    'questionConfig': {
                        'imageTheme': 'fullScreen',
                        'img': 'https://images.unsplash.com/photo-1577705998148-6da4f3963bc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'
                    },
                    'options': [
                        {
                            'text': 'Open the box',
                            'actionIndex': 2
                        },
                        {
                            'text': 'throw the box',
                            'actionIndex': 4
                        }
                    ]
                },
                {
                    'text': 'There is a key',
                    'questionConfig': {
                        'imageTheme': 'fullScreen',
                        'img': 'https://images.unsplash.com/photo-1562701447-8ec5d514a2a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'
                    },
                    'options': [
                        {
                            'text': 'take the key',
                            'actionIndex': 2
                        },
                        {
                            'text': 'throw the box',
                            'actionIndex': 4
                        }
                    ]
                },
                {
                    'text': 'There is a door, but thats locked',
                    'questionConfig': {
                        'imageTheme': 'fullScreen',
                        'img': 'https://images.unsplash.com/photo-1542251224-3e60f8d50cd8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1527&q=80'
                    },
                    'options': [
                        {
                            'text': 'Open the door using the key',
                            'actionIndex': 3
                        },
                        {
                            'text': 'Go back',
                            'actionIndex': 4
                        }
                    ]
                },
                {
                    'text': 'You found the treasure,you won!',
                    'questionConfig': {
                        'textHighlight': 'neonBlink',
                        'imageTheme': 'fullScreen',
                        'img': 'https://images.unsplash.com/photo-1585924775990-bd3f24bbc72e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80'
                    },
                    'options': [
                        {
                            'text': 'exit the game',
                            'actionIndex': 0
                        }
                    ]
                },
                {
                    'text': 'NAME Failed',
                    'questionConfig': {
                        'imageTheme': 'fullScreen',
                        'textHighlight': 'neonBlink'
                    },
                    'options': [
                        {
                            'text': 'exit the game',
                            'actionIndex': 0
                        }
                    ]
                }
            ]
        }
    ]
};
AppDetail appDetailObj = AppDetail.fromJson(appDetails);
print(appDetailObj);
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome to Flutter'),
          ),
          body: Center(
            child: StoriesLandingPage(contests: appDetailObj.contests),
          )),
    );
  }
}
