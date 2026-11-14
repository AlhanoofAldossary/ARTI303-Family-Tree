
% User Dataset
user(admin, 1234).
user(student, 5678).
user(alhanouf, 1111).

% Start Login
login :-
    login_attempt(3).

% Check Login
login_attempt(Attempts) :-
    Attempts > 0,
    write('Enter Username: '),
    read(Username),
    write('Enter Password: '),
    read(Password),
    (
        user(Username, Password)
    ->
        write('Login Successful'), nl
    ;
        write('Login Unsuccessful'), nl,
        Remaining is Attempts - 1,
        login_attempt(Remaining)
    ).

% Maximum Attempts Exceeded
login_attempt(0) :-
    write('Sorry, you exceeded the maximum number of attempts, try again later.'),
    nl.
