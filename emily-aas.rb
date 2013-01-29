# -*- coding: utf-8 -*-
# Special thanks to http://www.gutenberg.org/files/12242/12242-h/12242-h.htm

require 'sinatra'

get '/poems/random' do
  poems.sample
end

get '/poem/about/:word' do |word|
  content_type 'text/plain'
  poems.select { |poem| poem =~ /#{word}/i }.sample
end

def poems
  [ <<-EOF,
I wonder if the sepulchre
   Is not a lonesome way,
When men and boys, and larks and June
   Go down the fields to hay!
EOF

   <<-EOF,
There's been a death in the opposite house
   As lately as to-day.
I know it by the numb look
   Such houses have alway.

The neighbors rustle in and out,
   The doctor drives away.
A window opens like a pod,
   Abrupt, mechanically;

Somebody flings a mattress out, —
   The children hurry by;
They wonder if It died on that, —
   I used to when a boy.

The minister goes stiffly in
   As if the house were his,
And he owned all the mourners now,
   And little boys besides;

And then the milliner, and the man
   Of the appalling trade,
To take the measure of the house.
   There'll be that dark parade

Of tassels and of coaches soon;
   It's easy as a sign, —
The intuition of the news
   In just a country town.
EOF

   <<-EOF,
THE SOUL'S STORM.

It struck me every day
   The lightning was as new
As if the cloud that instant slit
   And let the fire through.

It burned me in the night,
   It blistered in my dream;
It sickened fresh upon my sight
   With every morning's beam.

I thought that storm was brief, —
   The maddest, quickest by;
But Nature lost the date of this,
   And left it in the sky.
EOF

   <<-EOF,
Water is taught by thirst;
Land, by the oceans passed;
   Transport, by throe;
Peace, by its battles told;
Love, by memorial mould;
   Birds, by the snow.
EOF

  <<-EOF,
Life, and Death, and Giants
   Such as these, are still.
Minor apparatus, hopper of the mill,
Beetle at the candle,
   Or a fife's small fame,
Maintain by accident
   That they proclaim.
EOF

  <<-EOF,
I worked for chaff, and earning wheat
   Was haughty and betrayed.
What right had fields to arbitrate
   In matters ratified?

I tasted wheat, — and hated chaff,
   And thanked the ample friend;
Wisdom is more becoming viewed
   At distance than at hand.
EOF

  <<-EOF,
A WORD.

A word is dead
When it is said,
   Some say.
I say it just
Begins to live
   That day.
EOF

  <<-EOF,
WITH A FLOWER.

When roses cease to bloom, dear,
   And violets are done,
When bumble-bees in solemn flight
   Have passed beyond the sun,

The hand that paused to gather
   Upon this summer's day
Will idle lie, in Auburn, —
   Then take my flower, pray!
EOF

  <<-EOF,
WHO?

My friend must be a bird,
     Because it flies!
Mortal my friend must be,
     Because it dies!
Barbs has it, like a bee.
Ah, curious friend,
     Thou puzzlest me!
EOF

  <<-EOF,
To make a prairie it takes a clover and one bee, —
One clover, and a bee,
And revery.
The revery alone will do
If bees are few.
EOF
  ]
end
