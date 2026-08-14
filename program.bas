_FullScreen 'didnt wanna start in a small hard to see window so this is here'
coordx = 1 'sets starting coordinates here'
coordy = 1
Wrongway = 0

Dim Shared swordy 'these dim shared lines set the coordinates for items you can pick up'
Dim Shared swordx
swordy = 3
swordx = 2
Dim Shared keyy
Dim Shared keyx
keyy = 6
keyx = 2
Dim Shared mkeyy
Dim Shared mkeyx
mkeyy = 1
mkeyx = 9
Dim Shared axey
Dim Shared axex
axey = 3
axex = 7
Dim Shared gkeyy
Dim Shared gkeyx
gkeyy = 4
gkeyx = 4
Dim Shared shieldy
Dim Shared shieldx
shieldy = 4
shieldx = 9

MKEY = 0 'the equals 0 just means you start off without them, if it were set to eguals 1 i'd have them in my bag'
IRON_KEY = 0
SWORD = 0
AXE = 0
GKEY = 0
SHIELD = 0

Cls
10
While comm$ <> "END"

    Select Case coordy
        Case 1 'my y coord, this would be y1, its more indented than the cases below it (the x coords)'
            Select Case coordx
                Case 1 'my x coord, its under case 1 for the y coord so it means this is on x1, y1, its the same for the case below it which would be x2, y1'
                    Print "________________________________________________________________________________"
                    Print "You are standing outside the cave entrance, you heard of a legend of riches so grand, even the richest men of men would kneel to you, you can continue SOUTH into the cave or you can retreat EAST and leave the cave entrance." 'obviously this is just room descriptions, the lines above and below it dont mean anything, they just make the text look boxed in'
                    Print "________________________________________________________________________________"
                Case 2
                    Print "________________________________________________________________________________"
                    Print "You retreat away and find yourself in a sprawling, dark forest, there is nothing of use here, you can go back WEST to the cave entrance"
                    Print "________________________________________________________________________________"
                Case 5
                    Print "________________________________________________________________________________"
                    Print "You push through the small opening and step on some sort of pressure sensor, you hear cogs spinning but before you can go back through the opening, it's too late... YOU DIED!"
                    Print "________________________________________________________________________________"
                    End
                Case 6
                    Print "________________________________________________________________________________"
                    Print "You walk into a small, enclosed cave with smooth, dry walls. The air is still, and dust covers the floor. The ceiling hangs low, uneven in places. The space is empty and silent. There is a small opening to the WEST you could squeeze through or you could go EAST through the hallway. You can also go back SOUTH"
                    Print "________________________________________________________________________________"
                Case 7
                    Print "________________________________________________________________________________"
                    Print "You take the path to the east and continue down the hallway, there is nothing of note here, all the walls are smooth and neat, you can only continue down EAST or you can go back WEST."
                    Print "________________________________________________________________________________"
                Case 8
                    Print "________________________________________________________________________________"
                    Print "You keep going down the hallway and see a flimsy wooden door to the EAST, you are not strong enough to break it down yourself but maybe you could find somethng to help."
                    Print "________________________________________________________________________________"
                Case 9
                    If AXE = 0 Then
                        Print "________________________________________________________________________________"
                        Print "The door is too sturdy for you too break, but seems flimsy enough for something else to work."
                        Print "________________________________________________________________________________"
                        Wrongway = 1
                    Else
                        Print "________________________________________________________________________________"
                        Print "You break down the door with your axe and walk through the doorway to find a dead body with a makeshift key sticking out of his pocket, the only way back now is WEST."
                        Print "________________________________________________________________________________"
                    End If
                Case Else
                    Wrongway = 1 'if you type anything other than a valid room direction the wrongway code activates here'
            End Select
        Case 2
            Select Case coordx
                Case 1
                    Print "________________________________________________________________________________"
                    Print "You are now in the cave's entrance path, the walls are laiden with scratched in messages, typically telling you not to continue. The only way to continue is SOUTH or you can go back NORTH to the cave entrance."
                    Print "________________________________________________________________________________"
                Case 4 'i skipped case 2 and 3 because the rooms are unused, they are set as invalid now'
                    Print "________________________________________________________________________________"
                    Print "You walk further into the storeroom and step on something, but before you can react, it's already too late. YOU DIED!"
                    Print "________________________________________________________________________________"
                    End
                Case 6
                    Print "________________________________________________________________________________"
                    Print "The moss thins as rough stone replaces damp earth. A short, worn staircase leads up to an open archway. Beyond it, the air feels drier, and faint traces of dust replace the scent of moss. A single lantern, long extinguished, hangs from a rusted hook. It seems the only way is NORTH or you can head back SOUTH"
                    Print "________________________________________________________________________________"
                Case Else
                    Wrongway = 1
            End Select
        Case 3
            Select Case coordx
                Case 1
                    Print "________________________________________________________________________________"
                    Print "You find yourself in the cave's entrance , it's a large, intimidating room which you can barely see in, your voice echoes even in a whisper, you are able to barely make out a mineshaft to the EAST of you and to the SOUTH a hallway that looks just big enough for you to squeeze through."
                    Print "________________________________________________________________________________"
                Case 2
                    Print "________________________________________________________________________________"
                    Print "You are standing in a dishevelled, broken mineshaft. The air gets thinner as you go on. The only light comes from a suspicious room at the end of the mineshaft to the EAST of you. You can also head back WEST to the cave entrance."
                    Print "________________________________________________________________________________"
                Case 3
                    Print "________________________________________________________________________________"
                    Print "As you get closer to the suspicious room, your nose is filled with a horrible smell, you push further into the room and enter into a rotting cellar, the stench has become almost unbearable. There are barrels all around the room filled with a mysterious liquid you don't care enough to investigate, you can continue EAST again to what you hope is an improvement on this or you can head back WEST."
                    Print "________________________________________________________________________________"
                Case 4
                    Print "________________________________________________________________________________"
                    Print "You walk into what looks like it was a once a tidy supply chamber, now overrun with creeping vines and scurrying creatures. Shelves sag under the weight of rotting crates, their contents long spoiled or stolen. A rusted Iron door stands at the SOUTH end of the room, it looks like you might need a key to open it... You see a door up NORTH that looks like it goes further into the storeroom or you can continue on EAST or go back WEST."
                    Print "________________________________________________________________________________"
                Case 5
                    Print "________________________________________________________________________________"
                    Print "Past the storeroom, the air clears a little. Roots push through cracked stone, and the scent of damp wood replaces the rot. Moss covers the floor in patches, and faded carvings peek from the walls, worn, but still there. It's quiet. You can keep continuing on EAST or retreat WEST."
                    Print "________________________________________________________________________________"
                Case 6
                    Print "________________________________________________________________________________"
                    Print "As you move on, the green starts to clear out only leaving the occasional patch of moss, the walls start to become more jagged and uneven as you continue. You eventually reach a turn at the end of the cave, you can turn up NORTH or continue EAST. You can also retreat WEST."
                    Print "________________________________________________________________________________"
                Case 7
                    Print "________________________________________________________________________________"
                    Print "You push on east and find yourself in a small opening with nowhere else to go, but you do find an axe on the ground, this could come in handy. The only way is back WEST."
                    Print "________________________________________________________________________________"
                Case Else
                    Wrongway = 1
            End Select
        Case 4
            Select Case coordx
                Case 1
                    Print "________________________________________________________________________________"
                    Print "You start pushing yourself through the hallway, you have to continue SOUTH or you can give up and go back NORTH"
                    Print "________________________________________________________________________________"
                Case 4
                    If IRON_KEY = 0 Then 'added a locked door function, it just uses the wrongway code if you dont have the right key'
                        Print "________________________________________________________________________________"
                        Print "The door is locked, you need to find a key for it."
                        Print "________________________________________________________________________________"
                        Wrongway = 1
                    Else
                        Print "________________________________________________________________________________"
                        Print "You find yourself in a largely empty room save for a small, golden chest in the middle of the room, you open it to find a Golden Key. You can only exit the room back to the NORTH."
                        Print "________________________________________________________________________________"
                    End If
                Case 9
                    Print "________________________________________________________________________________"
                    Print "You walk through the doorway and find a dead man gripping a shield, his face frozen in fear. Clearly something bad happened here. Your only way is back SOUTH."
                    Print "________________________________________________________________________________"
                Case Else
                    Wrongway = 1
            End Select
        Case 5
            Select Case coordx
                Case 1
                    Print "________________________________________________________________________________"
                    Print "The air turns cool and damp, clinging to slick rock. Stalactites drip into scattered pools, and the jagged passage ahead looks torn rather than carved. Faint scratches trail forward into the dark. The only way to continue it seems is EAST past a rough ledge or you could retreat NORTH."
                    Print "________________________________________________________________________________"
                Case 2
                    Print "________________________________________________________________________________"
                    Print "This room is largely the same as the first, but much foggier. It's hard to see anything at all, there seems to be two paths, EAST or SOUTH, you can't see past them at all. You can also retreat WEST."
                    Print "________________________________________________________________________________"
                Case 3
                    Print "________________________________________________________________________________"
                    Print "You make your way into the room and accidentally kick a rock into a wall, it makes a loud sound and you hear cracking above you, the last thing you see is a large stalagmite falling towards you. YOU DIED!"
                    Print "________________________________________________________________________________"
                    End
                Case 5
                    If SWORD = 0 Then
                        Print "________________________________________________________________________________"
                        Print "You continue north into the chamber and suddenly a huge spider drops from the ceiling and disembowels you. Probably should've picked that sword up... YOU DIED!"
                        Print "________________________________________________________________________________"
                        End
                    Else
                        Cls
                        Print "________________________________________________________________________________"
                        Print "You continue north into the chamber and suddenly a huge spider drops from the ceiling! You are quick enough to react and reflect its attack with your sword."
                        Print "________________________________________________________________________________"
                        Print "Type 'HIT' to attack the spider!"
                        Print "________________________________________________________________________________"

                        Call Fight 'I don't know how to
                        Dim userHealth As Integer
                        Dim bossHealth As Integer
                        Dim userDamage As Integer
                        Dim bossDamage As Integer
                        Dim action As String

                        userHealth = 10
                        bossHealth = 20

                        Do
                            Print "Your health: "; userHealth
                            Print "Spider health: "; bossHealth
                            Input "Type 'HIT' to attack: ", action

                            If UCase$(action) = "HIT" Then
                                userDamage = Int(Rnd * 10) + 1 ' Random damage between 1 and 5
                                bossHealth = bossHealth - userDamage
                                Print "You hit the spider for"; userDamage; "damage!"

                                If bossHealth <= 0 Then
                                    Print "Congratulations! You defeated the spider! After defeating your foe you see a path covered in cobwebs to the EAST. Alternatively, you could go back SOUTH."
                                    Exit Do
                                End If

                                bossDamage = Int(Rnd * 3) + 1 ' Random damage between 1 and 5
                                userHealth = userHealth - bossDamage
                                Print "The boss strikes back for"; bossDamage; "damage!"

                                If userHealth <= 0 Then
                                    Print "You have been defeated! Better luck next time."
                                    Exit Do
                                End If
                            Else
                                Print "Invalid input! Type 'HIT' to attack."
                            End If
                        Loop
                    End If
                Case 6
                    Print "________________________________________________________________________________"
                    Print "You walk into a shallow pool stretching across the chamber, its surface still and murky. Occasional ripples disturb the water, though there’s no sign of what causes them. There is only a path to the EAST, it seems if you go back WEST though there is another spider waiting for you..."
                    Print "________________________________________________________________________________"
                Case 7
                    Print "________________________________________________________________________________"
                    Print "The walls squeeze inward, forcing passage through a tight gap. Scratches line the stone as if something struggled here recently. to your SOUTH there is an opening but also to your EAST. It seems you are nearing the end now, if you think you've forgotten anything, now seems like a good time to go back WEST."
                    Print "________________________________________________________________________________"
                Case 8
                    Print "________________________________________________________________________________"
                    Print "You walk through the east opening and find yourself in a passageway you can't see the end of, the walls that were filled with scratch marks earlier fade out slowly, almost like something was trying to escape this way... It seems you can only continue EAST, this seems like your best option right now but back WEST is also an option."
                    Print "________________________________________________________________________________"
                Case 9
                    Print "________________________________________________________________________________"
                    Print "You continue down the passageway when it suddenly comes to an end save for a door to the NORTH, it seems like it's unlocked. Do you continue or go back WEST?"
                    Print "________________________________________________________________________________"
                Case Else
                    Wrongway = 1
            End Select
        Case 6
            Select Case coordx
                Case 2
                    If MKEY = 0 Then
                        Print "________________________________________________________________________________"
                        Print "You continue down the path but find a locked wooden door, it looks sturdy, you'd need a key to continue."
                        Print "_______________________________________________________________________________"
                        Wrongway = 1
                    Else
                        Print "________________________________________________________________________________"
                        Print "You unlock the door and continue, you find a lockbox in a small crevice in the wall, you open it to find an Iron Key. You can continue EAST or go back NORTH."
                        Print "________________________________________________________________________________"
                    End If
                Case 3
                    Print "________________________________________________________________________________"
                    Print "You venture past the Iron Key room and find yourself in a dark passageway, all you can see is the path continuing to the EAST, you feel compelled to go back WEST but you must continue..."
                    Print "________________________________________________________________________________"
                Case 4
                    Print "________________________________________________________________________________"
                    Print "Continuing east you find nothing interesting yet, it seems eerily quiet past this point, it's almost like any life down here has disappeared. You have to continue though, the thought of riches beyond your wildest dreams compels you. Continue EAST to your dreams or give up and go back WEST."
                    Print "________________________________________________________________________________"
                Case 5
                    Print "________________________________________________________________________________"
                    Print "You enter a large, open chamber that seems completely empty, you can only continue NORTH it seems or back WEST."
                    Print "________________________________________________________________________________"
                Case 7
                    Print "________________________________________________________________________________"
                    Print "You walk into a quiet, open space where shallow puddles reflect the dim light. Occasional drops create gentle ripples, breaking the stillness. The only path is down SOUTH, or you can go back NORTH incase you are missing anything."
                    Print "________________________________________________________________________________"
                Case Else
                    Wrongway = 1
            End Select
        Case 7
            Select Case coordx
                Case 7
                    Print "________________________________________________________________________________"
                    Print "You go through a narrow gap in the rock where the temperature noticeably drops. The walls are slick with condensation, and the air feels dense. The path turns EAST, this seems like the last stretch."
                    Print "________________________________________________________________________________"
                Case 8
                    Print "________________________________________________________________________________"
                    Print "The ceiling dips lower here, forcing you to stoop slightly as you pass through. Fine dust hangs in the air, stirred by movement. The path still only goes EAST."
                    Print "________________________________________________________________________________"
                Case 9
                    Print "________________________________________________________________________________"
                    Print "The path winds beneath a smooth, naturally formed arch of rock, framing the way forward like an ancient doorway. Once again you can only go EAST, it gets incredibly silent after this point. Before continuing, make sure you are ready."
                    Print "________________________________________________________________________________"
                Case 10
                    If GKEY = 0 Then
                        Print "________________________________________________________________________________"
                        Print "There is a large, ornate golden door infront of you. You require a key to continue."
                        Print "________________________________________________________________________________"
                        Wrongway = 1
                    Else
                        If SHIELD = 0 Then
                            Print "________________________________________________________________________________"
                            Print "You unlock the door and continue into this ominous room, the ceiling reaches to what seems like the sky and the whole room is devoid of sound. Before you can react, a figure drops down and kills you instantly, you could've probably defended yourself with the proper arms... YOU DIED!"
                            Print "________________________________________________________________________________"
                        Else
                            If SWORD = 0 Then
                                Print "________________________________________________________________________________"
                                Print "You unlock the door and continue into this ominous room, the ceiling reaches to what seems like the sky and the whole room is devoid of sound. Before you can react, a figure drops down and kills you instantly, you could've probably defended yourself with the proper arms... YOU DIED!"
                                Print "________________________________________________________________________________"
                                End
                            Else
                                Cls
                                Print "________________________________________________________________________________"
                                Print "You unlock the door and continue into this ominous room, the ceiling reaches to what seems like the sky and the whole room is devoid of sound. Out of the corner of your eye you see a figure drop from the ceiling and try to attack you, but you are just quick enough to block its attack with your shield."
                                Print "________________________________________________________________________________"
                                Print "Type 'HIT' to attack the boss!"
                                Print "________________________________________________________________________________"

                                Call Fight
                                Dim usersHealth As Integer
                                Dim bosseHealth As Integer
                                Dim usersDamage As Integer
                                Dim bosseDamage As Integer
                                Dim actions As String

                                usersHealth = 10
                                bosseHealth = 20

                                Do
                                    Print "Your health: "; usersHealth
                                    Print "Boss health: "; bosseHealth
                                    Input "Type 'HIT' to attack: ", actions

                                    If UCase$(actions) = "HIT" Then
                                        usersDamage = Int(Rnd * 10) + 1 ' Random damage between 1 and 5
                                        bosseHealth = bosseHealth - usersDamage
                                        Print "You hit the boss for"; usersDamage; "damage!"

                                        If bosseHealth <= 0 Then
                                            Print "Congratulations! You defeated the boss! After defeating this treacherous foe you see a bedazzled door to the EAST. This must be the coveted treasure spoken of in the rumours..."
                                            Exit Do
                                        End If

                                        bosseDamage = Int(Rnd * 3) + 1 ' Random damage between 1 and 5
                                        usersHealth = usersHealth - bosseDamage
                                        Print "The boss strikes back for"; bosseDamage; "damage!"

                                        If usersHealth <= 0 Then
                                            Print "You have been defeated! You missed out on your chance at greatness."
                                            Exit Do
                                        End If
                                    Else
                                        Print "Invalid input! Type 'HIT' to attack."
                                    End If
                                Loop
                            End If
                        End If
                    End If
                Case 11
                    Print "________________________________________________________________________________"
                    Print "You walk through the bedazzled door and find riches so grand you don't even know what to do with them, now is your time for greatness."
                    Print "________________________________________________________________________________"
                    End
                Case Else
                    Wrongway = 1
            End Select
        Case Else
            Wrongway = 1
    End Select
    If Wrongway = 1 Then 'my wrongway code, anywhere it says wrongway = 1 just means that its not valid'
        Wrongway = 0
        Print "________________________________________________________________________________"
        Print "This is not a valid room"
        Print "________________________________________________________________________________"

        Select Case comm$
            Case "WEST"
                coordx = coordx + 1
            Case "EAST"
                coordx = coordx - 1
            Case "NORTH"
                coordy = coordy + 1
            Case "SOUTH"
                coordy = coordy - 1
        End Select
        GoTo 10
    End If

    magical_bag_of_holding 'really simple, lets you see bag items, the sub end is all the way at the bottom'

    Print ""
    Print "________________________________________________________________________________"
    Print "Enter the direction you wish to go, or type MENU to see a list of commands"
    Print "________________________________________________________________________________"
    Input comm$
    Cls

    Select Case comm$
        Case "WEST"
            coordx = coordx - 1
        Case "EAST"
            coordx = coordx + 1
        Case "NORTH"
            coordy = coordy - 1
        Case "SOUTH"
            coordy = coordy + 1
        Case "END"
            End
        Case "MENU" 'if you are confused about controls ive typed them here for people so if you type MENU this shows up'
            Print ""
            Print "________________________________________________________________________________"
            Print "Make sure your capslock is ON"
            Print "________________________________________________________________________________"
            Print "Type the direction you wish to travel, EAST, WEST, SOUTH or NORTH"
            Print "________________________________________________________________________________"
            Print "Type BAG to see your current inventory items"
            Print "________________________________________________________________________________"
            Print "Type DROP (ITEM) to drop items"
            Print "________________________________________________________________________________"
            Print "Type an item's name to pick it up"
            Print "________________________________________________________________________________"
            Print "Type END for the game to end"
            Print "________________________________________________________________________________"
    End Select

    Select Case comm$
        Case "BAG" 'this lets you see items and their descriptions when you type BAG, uses the magic bag of holding. if you lose track of what youve grabbed this is useful'
            If SWORD = 1 Then
                Print "________________________________________________________________________________"
                Print "SWORD: It's in surprisingly good condition"
                Print "________________________________________________________________________________"
            End If
            If IRON_KEY = 1 Then
                Print "IRON KEY: You could most likely use this on that Iron Door."
                Print "________________________________________________________________________________"
            End If
            If MKEY = 1 Then
                Print "MAKESHIFT KEY: A bit rough around the edges... You could probably use this on some type of wooden door."
                Print "________________________________________________________________________________"
            End If
            If AXE = 1 Then
                Print "AXE: It doesn't seem strong enough to break through anything sturdy but it's better than nothing."
                Print "________________________________________________________________________________"
            End If
            If GKEY = 1 Then
                Print "GOLD KEY: An ornate key, seems like it could be of use somewhere at the end of the line."
                Print "________________________________________________________________________________"
            End If
            If SHIELD = 1 Then
                Print "SHIELD: A worn shield covered in slashes and splinters, it doesn't seem like thats affected its reliability though."
                Print "________________________________________________________________________________"
            End If
    End Select



    Select Case comm$ 'all these cases are just to define coordinates when you pick them up, you need to be able to keep them in your inventory'
        Case "SWORD"
            If coordy = swordy And coordx = swordx Then
                swordy = 0
                swordx = 0
            End If

            If swordy = 0 And swordx = 0 Then
                SWORD = 1
            End If

        Case "DROP SWORD"
            Print "You drop your sword."
            If swordy = 0 And swordx = 0 Then
                swordy = coordy
                swordx = coordx
                SWORD = 0
            Else
                Print "You can't do that"
            End If
    End Select

    If coordx = swordx And coordy = swordy Then
        Print "________________________________________________________________________________"
        Print "There is a SWORD for you to pick up"
        Print "________________________________________________________________________________"
    End If
    Select Case comm$
        Case "IRON KEY"
            If coordy = keyy And coordx = keyx Then
                keyy = 0
                keyx = 0
            End If

            If keyy = 0 And keyx = 0 Then
                IRON_KEY = 1
            End If

        Case "DROP IRON KEY"
            Print "You drop the Iron Key."
            If keyy = 0 And keyx = 0 Then
                keyy = coordy
                keyx = coordx
                IRON_KEY = 0
            Else
                Print "You can't do that"
            End If
    End Select

    If coordx = keyx And coordy = keyy Then
        Print "________________________________________________________________________________"
        Print "There is an IRON KEY for you to pick up"
        Print "________________________________________________________________________________"
    End If
    Select Case comm$
        Case "MAKESHIFT KEY"
            If coordy = mkeyy And coordx = mkeyx Then
                mkeyy = 0
                mkeyx = 0
            End If

            If mkeyy = 0 And mkeyx = 0 Then
                MKEY = 1
            End If

        Case "DROP MAKESHIFT KEY"
            Print "You drop the Makeshift Key."
            If mkeyy = 0 And mkeyx = 0 Then
                mkeyy = coordy
                mkeyx = coordx
                MKEY = 0
            Else
                Print "You can't do that"
            End If
    End Select

    If coordx = mkeyx And coordy = mkeyy Then
        Print "________________________________________________________________________________"
        Print "There is a MAKESHIFT KEY for you to pick up"
        Print "________________________________________________________________________________"
    End If
    Select Case comm$
        Case "AXE"
            If coordy = axey And coordx = axex Then
                axey = 0
                axex = 0
            End If

            If axey = 0 And axex = 0 Then
                AXE = 1
            End If

        Case "DROP AXE"
            Print "You drop the Axe."
            If axey = 0 And axex = 0 Then
                axey = coordy
                axex = coordx
                AXE = 0
            Else
                Print "You can't do that"
            End If
    End Select

    If coordx = axex And coordy = axey Then
        Print "________________________________________________________________________________"
        Print "There is an AXE for you to pick up"
        Print "________________________________________________________________________________"
    End If
    Select Case comm$
        Case "GOLD KEY"
            If coordy = gkeyy And coordx = gkeyx Then
                gkeyy = 0
                gkeyx = 0
            End If

            If gkeyy = 0 And gkeyx = 0 Then
                GKEY = 1
            End If

        Case "DROP GOLD KEY"
            Print "You drop the Gold Key."
            If gkeyy = 0 And gkeyx = 0 Then
                gkeyy = coordy
                gkeyx = coordx
                GKEY = 0
            Else
                Print "You can't do that"
            End If
    End Select

    If coordx = gkeyx And coordy = gkeyy Then
        Print "________________________________________________________________________________"
        Print "There is a GOLD KEY for you to pick up"
        Print "________________________________________________________________________________"
    End If
    Select Case comm$
        Case "SHIELD"
            If coordy = shieldy And coordx = shieldx Then
                shieldy = 0
                shieldx = 0
            End If

            If shieldy = 0 And shieldx = 0 Then
                SHIELD = 1
            End If

        Case "DROP SHIELD"
            Print "You drop the Shield."
            If shieldy = 0 And shieldx = 0 Then
                shieldy = coordy
                shieldx = coordx
                SHIELD = 0
            Else
                Print "You can't do that"
            End If
    End Select

    If coordx = shieldx And coordy = shieldy Then
        Print "________________________________________________________________________________"
        Print "There is a SHIELD for you to pick up"
        Print "________________________________________________________________________________"
    End If


Wend
DECLARE SUB Fight ()
Sub Fight
End Sub
Sub magical_bag_of_holding
End Sub


