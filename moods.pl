mood_is(angry) :- positive(mood, exercise).
mood_is(angry) :- positive(mood, motivated).
mood_is(angry) :- positive(mood, wake_up).

mood_is(relaxed) :- positive(mood, chill).
mood_is(relaxed) :- positive(mood, studying).
mood_is(relaxed) :- positive(mood, sleepy).

mood_is(sad) :- positive(mood, lonely).
mood_is(sad) :- positive(mood, contemplating).
mood_is(sad) :- positive(mood, emotional).

mood_is(inspirational) :- positive(mood, inspiration).
mood_is(inspirational) :- positive(mood, artistic).
mood_is(inspirational) :- positive(mood, thinking).

mood_is(bright) :- positive(mood, smiling).
mood_is(bright) :- positive(mood, exhilarated).
mood_is(bright) :- positive(mood, well).

mood_is(romantic) :- positive(mood, thinking_about_sb).
mood_is(romantic) :- positive(mood, thinking_about_love).
mood_is(romantic) :- positive(mood, crush).

mood_def(action) :- ask('What are you going to do?
    0 -wake up, 1 - exercise,  2- study, 3-contemplate, 4- do some artistic work, 5- chill, 6- go to sleep, 7- sth else', action).

mood_def(feeling) :- ask('How do you feel?
    0 -motivated,  1- alone,  2- emotional,  3-full of inspiration,  4- exhilarated, 5- I don\'t know', feeling).

mood_def(thoughts) :- ask('What do you think about?
    0 - sth really important for me,  1 - sb I miss, 2 - nothing special', thoughts).


mood_get_all(L1) :- findall(M, mood_is(M), L1).
		
mood_save_all() :- findall(X, mood_def(M), R).
					 

read_anwser(X) :- get_single_char(Reply),
                    put_code(Reply), 
                    nl,
                    char_code(Char, Reply),
                    get_anwser(X, Char).

   