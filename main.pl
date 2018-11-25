:- style_check(-singleton).

:- dynamic
    positive/2.
:- include(tracks).
:- include(categories).
:- include(moods).

ask(X) :- !, format('~w (y/n)~n',[X]),
                    get_single_char(Reply),
                    put_code(Reply), 
                    nl,
                    char_code(Char, Reply),
                    (Char = 'y').
                    
save(X,Y) :- assertz(positive(X,Y)).

clear_all :- retractall(positive(_,_)).

greeting :- write('Welcome to Music Expert System! I hope I\'ll help you find the best tracks for you.\n'), 
            nl.
                    
run :- greeting,
     mood_def(M),
     mood_is(X),
     category_def(C, X),
     category_is(Y),
     track(X, Y, Z), !,
            format('~nMusic for you = ~w', Z),
            nl, clear_all,
    halt(0).
            
run :- write('I am not able to gues your mood'), nl,
            clear_all,
    halt(0).

:- run.