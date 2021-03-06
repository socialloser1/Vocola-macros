# Voice commands for powershell

argument <_anything> = " --" $1 " ";
flag <_anything> = " -" $1 " ";

#git
get = "git ";
git commit all = "git commit -am """"" {Left};
git create branch = "git checkout -b ";

#Git
git pull = "git pull --ff-only" {Enter};
git commit all = "git commit -am """"" {Left};
git status = "git status" {Enter};
git stash = "git stash" {Enter};
git checkout master = "git checkout master" {Enter};
git create branch = "git checkout -b ";

bundle install = "bundle install" {Enter};
bundle exec rails console = "bundle exec rails console" {Enter};
bundle exec rails server = "RAILS_ENV=development bundle exec rails server --bind 0.0.0.0" {Enter};
bundle exec sidekiq = "bundle exec sidekiq -c 1" {Enter};
bundle exec rake test = "bundle exec rake test" {Enter};
bundle exec rake assets precompile = "RAILS_ENV=production bundle exec rake assets:precompile" {Enter};

bower install = "bower install --allow-root" {Enter};


#Console commands
repeat command  = {Up} {Enter};
repeat command 1..5 = {Up_$1} {Enter};
CD up = "cd ../" {Enter};
complete and run = {Tab} Wait(0) {Enter};
fix duplicate = {Home} {Del} {End};
ipconfig = "Get-NetIPAddress | ? AddressFamily -eq IPv4 | ? InterfaceAlias -eq Ethernet | FT ľAutoSize" {Enter};

Really end = "y" {Enter} Wait(1) "y" {Enter};
<YesNo> := (yes =y| no =n | diff =d);
answer <YesNo>= "$1" {Enter};

#Debugging
debug next = "next" {Enter};
debug step = "step" {Enter};
debug continue = "continue" {Enter};
debug finish = "finish" {Enter};

#Shortcut directories
<shortcut_directory> := (health eFilings = C:\Users\Ben\documents\RubymineProjects\Health-eFilings
			| health data standards =C:\Users\Ben\Documents\RubymineProjects\hef-health-data-standards
			| quality measures engine = C:\Users\Ben\Documents\RubymineProjects\hef-quality-measure-engine);
change directory = "cd ";
change directory <shortcut_directory> = "cd $1" {Enter};
change directory <_anything> = "cd $1" {Tab};