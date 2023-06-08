export EE=quay.io/tmichett/travis_do374:1.0

[student@workstation Add_Users]$ ansible-navigator run Install_Collections.yml --eei $EE -m stdout

[student@workstation Add_Users]$ ansible-navigator run Create_Users.yml --eei $EE -m stdout


