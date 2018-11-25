track(relaxed, christmas, "Jingle Bells").
track(relaxed, pop_music, "Michael Jackson - Billie Jean").
track(relaxed, rock, "Red Hot CHili Pepers - Californication 
  Led Zeppelin, Misty Mountain Hop").
track(angry, pop_music, "Kanye West - Black Skinhead").
track(angry, rock, "Rage Against The Machine - Killing in the name of 
  Pearl Jam, Go").
track(inspirational, rock, "Porcupine Tree, Tinto Brass").
track(inspirational, rock, "Nickelback, Too Bad").
track(inspirational, pop_music, "Enya, Storms in Africa").
track(bright, rock, "Lacey Sturm, Impossible,
  Skillet, Comatose,
  Armia, Green").
track(bright, pop_music, "Peter Gabriel, In Your Eyes").
track(bright, christmas, "Sting, Christmas at Sea").
track(romantic, pop_music, "The Beatles, Yesterday").
track(romantic, rock, "The Police, Message in a Bottle").
track(sad, christmas, "Have Yourself a Merry Little Christmas").
track(sad, pop_music, "Adele - Hello").
track(sad, rock, "SOAD - Lonely Day,
  Czesław Niemen, Dziwny jest ten świat").

isNone("None").
  
track_return_name((Mood, Category), Track) :- track(Mood, Category, Track),
											not(positive(picked, Track)),
											save(picked, Track).
track_return_name(_, "None").

track_return_names([],[]).
track_return_names([H|T], R) :- track_return_name(H, Name),
								track_return_names(T, L),
								append([Name], L, R).
  
track_get_all(R) :- mood_get_all(L1),
					category_get_all(L2),
					findall((X,Y), (member(X, L1), member(Y, L2)), Pairs),
					track_return_names(Pairs, R).
					
track_print(Track) :- not(isNone(Track)),
					  format('~nProposed track = ~w', Track).
track_print_all([]) :- format('~nEnd of proposed track list').	
track_print_all([H|T]) :- findall(_, track_print(H), _),
							track_print_all(T).