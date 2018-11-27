category_is(christmas) :- positive(category, xmas_music).
category_is(christmas) :- positive(category, liking_xmas).

category_is(pop_music) :- positive(category, liking_pop).
category_is(pop_music) :- positive(category, watching_mtv).

category_is(rock) :- positive(category, heavier_sound).
category_is(rock) :- positive(category, electric_guitars).

category(relaxed, christmas).
category(relaxed, pop_music).
category(relaxed, rock).
category(angry, pop_music).
category(angry, rock).
category(inspirational, rock).
category(inspirational, pop_music).
category(bright, rock).
category(bright, pop_music).
category(bright, christmas).
category(romantic, pop_music).
category(romantic, rock).
category(sad, christmas).
category(sad, pop_music).
category(sad, rock).

category_def(music_type, X) :- ask('What music type do you prefer?
       0 - christmas music,  1- popular music,  2- some heavier sounds, 3 - sth different', music_type).
							
category_get_all(L2) :- findall(C, category_is(C), L2).		
			
category_save_all([]).
category_save_all([H|T]) :- findall(X, category_def(C, H), R),
							category_save_all(T).
						