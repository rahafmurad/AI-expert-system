go :- hypothesize(Character),
      write('the character is: '),
      write(Character),
      nl,
      undo.

/* hypotheses to be tested */
/* Rahaf */
hypothesize(sponge_bob)  		 :- sponge_bob, !.
hypothesize(gampol)  			 :- gampol, !.
/* Raghad */
hypothesize(powerpuff_girls) 	 :- powerpuff_girls, !.
hypothesize(dexter)  			 :- dexter, !.
/* Randa   */
hypothesize(bugs_bunny)  		 :- bugs_bunny, !.
hypothesize(pinocchio)   	     :- pinocchio, !.
/* Afrah  */
hypothesize(finn_the_human)      :- finn_the_human, !.
hypothesize(chowder)             :- chowder, !.

/* Assel   */
hypothesize(kordg)               :- kordg, !.
hypothesize(dora)                :- dora, !.
hypothesize(unknown).     
/* charecter identification rules */
/* Rahaf*/
/* sponge_bob*/
sponge_bob :-
    male,
    family,
    blue_eyes,
    resturant,
    square,
    squishy,
    yellow,
   
    
    verify(related_to_the_sea),
    verify(work_in_fast_food_resturant),
    verify(square_head),
    verify(squishy),
    verify(yellow).
/* sponge_bob*/
gampol :-
    male,
    family,
    student,
    sister,
    cat,
    cnn,
    blue,
    world,
    
 verify(cat),
 verify(blue),
 verify(appear_on_cnn_kids_in_arabic),
 verify(from_the_world_of_gampol).

/* Raghad*/
/* powerpuff_girls*/
powerpuff_girls :-
    female,
    family,
    ssugar,
    trio_team,
    sister,
    power,
    no_mom,
    save_the_world,
    fly,
    twins,
    

    verify(female),
    verify(made_from_sugars),
    verify(part_of_a_trio_team),
    verify(have_power),
    verify(has_not_Mather),
    verify(saveing_world),
    verify(fly),
    verify(have_twins).
/* dexter*/
dexter :- 
    male,
    family,
    sister,
    lab,
    genius,
    student,
    young,
    wear_glasses,
    evil,
    bald,
    angry,
    

    verify(has_own_lab),
    verify(genius),
    verify(young),
    verify(wear_glasses),
    verify(not_evil),
    verify(have_not_bald),
    verify(angry_all_day).

/* Randa*/
/* pinocchio */
pinocchio :- male,
    student,
    disney,
    nose,
    hat,
    child,
    doll,
    wood,
    
    verify(have_a_long_nose),
    verify(wear_a_hat),
    verify(a_doll),
    verify(made_of_wood).
/* bugsbunny */
bugs_bunny :- 
    male,
    animal,
    family,
    warner_bros,
    tail,
    big_teeth,
    duck,
    carrots,
    grey,
    rabbit,
    
    verify(eat_carrot),
    verify(grey),
    verify(from_the_rabbit_family).

/* Afrah*/
/* finn */
finn_the_human :-
    human,
    male,
    fighter,
    adventure,
    help_others,
    sword,
    missing_teeth,
    backpack,
    blue_clothes,
    hat,
   
    verify(like_human),
    verify(love_adventure),
    verify(fight_with_the_sword),
    verify(have_missing_teeth),
    verify(wear_a_backpack),
    verify(have_a_white_hat).
/* chowder */
chowder :- 
    animal,
    funny,
    rabbit,
    married,
    love_food,
    fat, 
    skilled_cook,
    purple,
    
    
   verify(funny),
   verify(from_the_rabbit_family),
   verify(love_food),
   verify(fat),
   verify(purple).

/* Assel*/
/* Dora */
dora :-
    human,
    cute,
    inquisitive_and_brave,
    child,
    listen,
    best_friend,
    map,
    hair,
    beat,
    
    
 verify(a_child),
 verify(have_a_monkey_best_friend),
 verify(have_a_map),
 verify(have_a_hair_brown).
/* courage*/
kordg :-
    
    animal,
    family,
    afraid,
    scary,
    dog,
    coward,
    elderly_people,
    pink,
    annoy,
    farm,
   
    verify(always_afraid),
    verify(dog),
    verify(pink),
    verify(coward),
    verify(live_with_two_elderly_people),
    verify(ive_on_a_farm).



/* classification rules */
/Rahaf/
male             :-verify(male).%spong_bob,gampol,dexter,bugs_bunny,Pinocchio,kordg,chowder
blue_eyes        :-verify(has_blue_eyes).%spong_bob
resturant        :-verify(work_in_fast_food_resturant).%spong_bob
square           :-verify(hasa_square_head).%spong_bob
squishy          :-verify(squishy).%spong_bob
yellow           :-verify(yellow).%spong_bob
cat              :-verify(cat).%gampol
blue             :-verify(blue).%gampol
cnn 	         :-verify(appear_on_cnn_kids_in_arabic).%gampol
student		     :-verify(student).%gampol,dexter
sister		     :-verify(has_a_sister).%gampol,powerpuff_ girls,dexter 
family		     :-verify(has_a_family).%spong_bob,gampol,powerpuff_ girls,dexter,kordg
world            :-verify(from_the_world_of_gampol).%gampol

/Raghad/
female   		 :-verify(female).%powerpuff_ girls,dora
ssugar    		 :-verify(made_from_sugars).%powerpuff_ girls 
trio_team 		 :-verify(part_of_a_trio_team).%powerpuff_ girls 
power    		 :-verify(have_power).%powerpuff_ girls 
no_mom           :- verify(has_not_Mather).%powerpuff_ girls 
save_the_world   :- verify(saveing_world).%powerpuff_ girls 
fly  			 :- verify(fly).%powerpuff_ girls 
twins  			 :- verify(have_twins).%powerpuff_ girls 
lab   			 :-verify(has_own_lab).%dexter
genius    		 :-verify(genius).%dexter
young 			 :-verify(young).%dexter
wear_glasses     :-verify(wear_glasses).%dexter
evil        	 :- verify(not_evil).%dexter 
bald  			 :- verify(have_not_bald).%dexter
angry  			 :- verify(angry_all_day).%dexter

/* Randa   */
disney   		 :-verify(produced_by_walt_disney).%Pinocchio
nose             :-verify(have_a_long_nose).%Pinocchio
hat              :-verify(wear_a_hat).%Pinocchio
child            :-verify(a_child).%Pinocchio
doll             :-verify(a_doll).%Pinocchio
wood             :-verify(made_of_wood).%Pinocchio
warner_bros      :-verify(produced_by_warner_bros).%Bugs_Bunny
tail             :-verify(have_a_tail).%Bugs_Bunny
big_teeth        :-verify(have_big_teeth).%Bugs_Bunny
duck             :-verify(has_a_duck_friend).%Bugs_Bunny
carrots          :-verify(eat_carrot).%Bugs_Bunny
grey             :-verify(grey).%Bugs_Bunny
rabbit           :-verify(from_the_rabbit_family).%Bugs_Bunny,chowder
/* Afrah  */
human       	 :-verify(like_human).%finn_the_human,dora
fighter		     :-verify(fighter).%finn_the_human 
adventure	     :-verify(love_adventure).%finn_the_human
help_others      :-verify(goal_to_help_others).%finn_the_human
sword            :-verify(fight_with_the_sword).%finn_the_human
missing_teeth    :-verify(have_missing_teeth).%finn_the_human
backpack         :-verify(wear_a_backpack).%finn_the_human
blue_clothes     :-verify(have_a_blue_shirt_and_pants).%finn_the_human
animal           :-verify(is_an_animal).%chowder,kordg
funny            :-verify(funny).%chowder
married          :-verify(live_with_the_teacher_and_his_wife).%chowder
love_food        :-verify(love_food).%chowder
fat              :-verify(fat).%chowder
skilled_cook     :-verify(dream_of_becoming_a_skilled_cook).%chowder
purple           :-verify(purple).%chowder
/* Assel   */
afraid           :-verify(always_afraid).%kordg
scary            :-verify(get_scary_things_whth_him).%kordg
dog              :-verify(a_dog).%kordg
coward           :-verify(a_coward).%kordg
elderly_people   :-verify(live_with_two_elderly_people).%kordg
pink             :-verify(color_pink).%kordg 
annoy            :-verify(behavior_annoy_his_father).%kordg
farm             :-verify(live_on_a_farm).%kordg
cute             :-verify(cute).%dora
inquisitive_and_brave    :-verify(inquisitive_and_brave).%dora
listen           :-verify(listen_to_other_peoples_opininos).%dora
best_friend      :-verify(have_a_monkey_best_friend).%dora
map              :-verify(have_a_map).%dora
hair             :-verify(have_brown_hair).%dora
beat             :-verify(beat_the_senger_fox).%dora




/* how to ask questions */
ask(Question) :-
    write('is the character : '),
    write(Question),
    write('? '),
    read(Response),
    nl,
    ( (Response == yes ; Response == y)
      ->
       assert(yes(Question)) ;
       assert(no(Question)), fail).

:- dynamic yes/1,no/1.

/* How to verify something */
verify(S) :-
   (yes(S) 
    ->
 true ;
    (no(S)
     ->
     fail ;
     ask(S))).

/* undo all yes/no assertions */
undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail.
undo.