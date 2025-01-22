/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/
-> Enterance

=== Enterance ===
You are in a cold, damp stone  room. "Exhaustion is taking it's toll better look for a warm place to sleep". The room is faintly lit by moonlight. In the middle of the room sits {not Chest:a closed chest.}{Chest: an open chest.} There is an open door way to a {not bedroom_l: dark room.}{bedroom_l: dark room.}
+[Open chest]->Chest
+{not bedroom_l}[Walkthrough the door way]->bedroom_d
+{bedroom_l}[Walkthrough the door way]->bedroom_d





-> END

=== Chest ===
When you open the chest you see {not take_l: a small lantern.}{take_l: nothing.}
*[Take the lantern]->take_l
+[Go back]->Enterance
-> END

=== take_l ===
You take the lantern from the chest, it is already filled with oil
+[Go back]->Chest
-> END



=== bedroom_d ===
This room is to dark to see.
*{take_l}[Light lantern]->bedroom_l
+[Go back]->Enterance
-> END
=== bedroom_l ===
You light the room and see a fireplace in the wall, along with a bed. good place to rest {not Fireplace_h: if it wasn't cold}.
+[Inspect fireplace]->Fireplace_c
+[Inspect Bed]->Bed
+[Go back]->Enterance
-> END
=== Fireplace_c ===
The fireplace has wood beside it, all it needs is some fire to get it started.
*{take_l}[Light fireplace]->Fireplace_h
+[Go back]-> bedroom_l
-> END
=== Fireplace_h ===
You use the flame from the lantern to get a fire started, the room heats up quickly.
+[Go back]->bedroom_l
-> END

=== Bed ===
Nothing fancy but enough to sleep through the night.{not Fireplace_h: too cold to sleep now though.}
*{Fireplace_h}[sleep]-> END
+[Go back]->bedroom_l




