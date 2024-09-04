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

-> school_entrance

== school_entrance ==
You are at the entrance to an abandoned school. {not key_pickup:There is a key on the floor.} You also have a phone with a flashlight. The school has hallways that extends to the north, south, east and west.You also have the choice to go back home.
+[Take the east hallway] -> east_hallway
+[Take the west hallway] -> west_hallway
+[Take the north hallway] -> north_hallway
+[Take the south hallway] -> south_hallway
+[Go home] -> home
*[Pick up the key] -> key_pickup

== east_hallway ==
You are in the east hallway. It is very dark, you can't see anything.
+[Light hallway] -> east_hallway_lit
+ [Go Back] -> school_entrance
-> END

== west_hallway ==
You are in the west hallway
+ [Go Back] -> school_entrance
-> END

== north_hallway ==
You are in the north hallway. It is very dark, you can't see anything.
+[Light hallway] -> north_hallway_lit
+ [Go Back] -> school_entrance
-> END

== south_hallway ==
You are in the south hallway
+ [Go Back] -> school_entrance
-> END

==home==
You go back home and decided to go back to sleep
-> END

=== key_pickup ===
You now have a key. May it open locked doors!
*[Go Back] ->school_entrance
-> END

==east_hallway_lit ==
The light reveals a door. The door is locked.
*[Go Back] ->school_entrance

*{key_pickup} [Open door] -> east_door_open

== east_door_open == 
The room reveals a bunch of dead bodies
-> END

==north_hallway_lit ==
The light reveals a door.{not knife_pickup: The door is locked.There is also a knife on the floor.}
*{key_pickup} [Open door] ->north_door_open
*[Pick up the knife] -> knife_pickup

== knife_pickup ==
You now have a knife. May it protect you from whatever lurks in the dark..
+[Go Back] -> north_hallway_lit

==north_door_open ==
The room reveals a bunch of monsters!! What will you do?
+[Attack them with the knife] -> attack
+[Run] -> run


== attack ==
The monsters died from the knife! You survived the attack.
-> END

==run==
The monsters attacked you and you died. rip.
->END


