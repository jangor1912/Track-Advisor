:- style_check(-singleton).

:- dynamic
    positive/2.
:- include(tracks).
:- include(categories).
:- include(moods).
:- include(anwsers).



ask(X, Y) :- not(positive(question, X)),
		  save(question, X),
		  !, format('~w (y/n)~n',[X]),
          read_anwser(Y).

                    
save(X,Y) :- assertz(positive(X,Y)).

read_anwser(X) :- get_single_char(Reply),
                    put_code(Reply), 
                    nl,
                    char_code(Char, Reply),
                    get_anwser(X, Char).

clear_all :- retractall(positive(_,_)).

greeting :- write('Welcome to Track Advisor! I hope I\'ll help you find the best tracks for you.\n'), 
            nl.
  
run :- greeting,
	 mood_save_all(),
	 mood_get_all(Moods),
	 category_save_all(Moods),
     track_get_all(Tracks),
	 track_print_all(Tracks),
            nl, clear_all.
            
run :- write('I am not able to guess your mood'), nl,
            clear_all.

:- run.