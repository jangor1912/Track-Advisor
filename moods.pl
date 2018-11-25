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

mood_def(exercise) :- ask('Do you want to exercise?'),
          save(mood, exercise).

mood_def(motivated) :- ask('Do you want to stay motivated?'),
          save(mood, motivated).

mood_def(wake_up) :- ask('Do you need a proper wake up?'),
          save(mood, wake_up).

mood_def(chill) :- ask('Do you want to chill?'),
            save(mood, chill).

mood_def(studying) :- ask('Do you want to play some study music?'),
            save(mood, studying).

mood_def(sleepy) :- ask('Do you want to listen to music just to get some sleep?'),
            save(mood, sleepy).

mood_def(lonely) :- ask('Do you feel alone?'),
        save(mood, lonely).

mood_def(contemplating) :- ask('Do you contemplate on something?'),
        save(mood, contemplating).

mood_def(emotional) :- ask('Are you feeling emotional?'),
        save(mood, emotional).

mood_def(thinking) :- ask('Do you want to think over something?'),
        save(mood, thinking).

mood_def(inspiration) :- ask('Do you need some inspiration?'),
        save(mood, inspiration).

mood_def(artistic) :- ask('Are you painting, carve or doing some other artistic work?'),
        save(mood, artistic).

mood_def(smiling) :- ask('Are you smiling all the day?'),
        save(mood, smiling).

mood_def(well) :- ask('Has everything gone well today?'),
        save(mood, well).

mood_def(exhilarated) :- ask('Are you exhilarated?'),
        save(mood, exhilarated).

mood_def(thinking_about_sb) :- ask('Do you think about someone very much?'),
        save(mood, thinking_about_sb).

mood_def(thinking_about_love) :- ask('Do you think about love?'),
        save(mood, thinking_about_love).

mood_def(crush) :- ask('Have you fallen in love recently?'),
        save(mood, crush).
