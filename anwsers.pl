get_anwser(action, Char) :- (Char = '0'), 
                    save(mood, wake_up),
                    read_anwser(action).

get_anwser(action, Char) :- (Char = '1'),
                    save(mood, exercise),
                    read_anwser(action).

get_anwser(action, Char) :- (Char = '2'),
                    save(mood, studying),
                    read_anwser(action).

get_anwser(action, Char) :- (Char = '3'),
                    save(mood, contemplating),
                    read_anwser(action).

get_anwser(action, Char) :- (Char = '4'),
                    save(mood, artistic),
                    read_anwser(action).

get_anwser(action, Char) :- (Char = '5'),
                    save(mood, chill),
                    read_anwser(action).                                        

get_anwser(action, Char) :- (Char = '6'),
                    save(mood, sleepy),
                    read_anwser(action).

get_anwser(feeling, Char) :- (Char = '0'),
                    save(mood, motivated),
                    read_anwser(feeling).

get_anwser(feeling, Char) :- (Char = '1'),
                    save(mood, lonely),
                    read_anwser(feeling).

get_anwser(feeling, Char) :- (Char = '2'),
                    save(mood, emotional),
                    read_anwser(feeling).

get_anwser(feeling, Char) :- (Char = '3'),
                    save(mood, artistic),
                    read_anwser(feeling).

get_anwser(feeling, Char) :- (Char = '4'),
                    save(mood, exhilarated),
                    read_anwser(feeling).

get_anwser(thoughts, Char) :- (Char = '0'),
                    save(mood, contemplating),
                    read_anwser(thoughts).

get_anwser(thoughts, Char) :- (Char ='1'),
                    save(mood, thinking_about_sb),
                    read_anwser(thoughts).




get_anwser(music_type, Char) :- (Char = '0'),
                            save(category, xmas_music),
                            read_anwser(music_type).

get_anwser(music_type, Char) :- (Char = '1'),
                            save(category, liking_pop),
                            read_anwser(music_type).                            

get_anwser(music_type, Char) :- (Char = '2'),
                            save(category, heavier_sound),
                            read_anwser(music_type).
                            

get_anwser(_, _). 