# Description:
#   This is to annoy someone by the name of Marcus.
#
# Notes:
#   This doesn't need notation.
#
#   https://en.wikipedia.org/wiki/Marcus_(name)


module.exports = (robot) ->

  marcusReplies = [
    'Dear Diary, Mood: Apathetic',
    'My life is spiraling downward',
    'I couldn\'t get enough money',
    'To go to the Blood Red Romance',
    'And Suffocate Me Dry concert',
    'It sucks \'cause they play',
    'Some of my favorite songs like,',
    'Stab My Heart, Because I Love You',
    'And Rip Apart My Soul',
    'And of course Stabby, Rip, Stab, Stab',
    'And it doesn\'t help that I couldn\'t',
    'Get my hair do that flippy thing either,',
    'Like that guy from that band could do.',
    'I\'m an emo kid, non-conforming as can be',
    'You\'d be non-conforming too if you looked just like me',
    'I have paint on my nails and make-up on my face',
    'I\'m almost emo enough to start shaving my legs,',
    '\'Cause I feel real deep when I\'m dressing in drag',
    'I call it freedom of expression, most just call me a fag',
    '\'Cause our dudes look like chicks and our chicks look like dikes',
    '\'Cause emo is one step below transvestite',
    'I\'m dark, and sensitive with low self-esteem',
    'The way I dress makes everyday feel like Halloween',
    'I have no real problems but I like to make-believe',
    'I stole my sister\'s mascara and now I\'m grounded for a week',
    'Sulking and writing poetry are my hobbies',
    'I can\'t get through a Hawthorne Heights album without sobbing',
    'Girls keep breaking up with me',
    'It\'s never any fun',
    'They say they already have a pussy',
    'They don\'t need another one',
    'Stop my breathing and slit my throat',
    'I must be emo',
    'I don\'t jump around when I go to shows',
    'I must be emo',
    'Dye in my hair and polish on my toes',
    'I play guitar and write suicide notes',
    'My life is just a black abyss',
    'You know? It\'s so dark',
    'And it\'s suffocating me',
    'Grabbing a hold of me and tightening its grip',
    'Tighter than a pair of my little sister\'s jeans.',
    'Which look great on me, by the way',
    'When I get depressed I cut my wrists in every direction',
    'Hearing songs about getting dumped give me an erection',
    'I write in a live journal and wear thick rimmed glasses',
    'I tell my friends I bleed black and cry during classes',
    'I\'m just a bad, cheap, imitation of goth',
    'You could read me Catcher In The Rye and watch me jack-off',
    'I wear skin tight clothes while hating my life',
    'If I said I like girls I\'d only be half right',
    'I look like I\'m dead and dress like a homo',
    'Screw Xbox I play old school Nintendo',
    'I like to whine and hit my parentals',
    'Penis',
    'I must be emo',
    'Me and my friends all look like clones',
    'I must be emo',
    'My parents don\'t get me, you know?',
    'They think I\'m gay just because they saw me kiss a guy',
    'Well, a couple of guys',
    'But I mean, it\'s the 2000\'s, can\'t two, or four dudes',
    'Make out with each other without being gay?',
    'I mean chicks dig that kind of thing anyways',
    'I don\'t know, Diary, sometimes I think',
    'You\'re the only one on that gets me,',
    'You\'re my best friend',
    'I love you, you love me',
    'We\'re a happy family',
    'With a great big hug',
    'And a kiss from me to you',
    'Won\'t you say you love me too?',
    'We\'re best friends like friends should be',
    'I love tacos',
    'I love pizza'
  ]

  robot.hear /marcus/i, (msg) ->
    msg.send msg.random marcusReplies

  movieReplies = [
    'I can\'t make it',
    'Looking forward to it',
    'What movie are we doing?',
    'We will see, I currently have a head cold and haven\'t slept in 38 hours and Myna is throwing up',
    'I am currently throwing up while typing this',
    'I am currently typing this by throwing up',
    'I will be 5 minutes late as I am cleaning up cat vomit off of the floor',
    'Bad news, I am bleeding from my eyeballs and only hear tongues when people speak so I won\'t be able to make it tonight',
    'The kids are put to bed, Amanda is busy on her phone, and my microphone is strapped to my head with a rubber band',
    'I can\'t make it for reasons unspecified',
    'I love movie night',
    'Bro, movie night',
    'Wouldn\'t miss it for the world',
    'Wouldn\'t miss it for the world. Not this one, at least',
    'I wants it',
    'I needs it',
    'I\'m busy',
    'Movie night? My place or yours?',
    'Who has time to watch a movie when I only want to watch you',
    'Who has time to watch a movie when I only want to watch you from the bushes',
    'Your timing is on fleek',
    'Movie night is a big mood',
    '*Our* movie night, comrade',
    'Yeet',
    'Cowabunga!'
  ]

  robot.hear /movie night/i, (msg) ->
    msg.send msg.random movieReplies
