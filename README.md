#h5. Tee moduli git-varastoon ja kirjoita raportti sinne MarkDownilla.
#Lopuksi kokeile kloonata uusi modulisi vasta bootatulle live-USB:lle.

##(Lähde: http://terokarvinen.com/2016/aikataulu-palvelinten-hallinta-ict4tn022-1-5-op-uusi-ops-loppusyksy-2016)
Päätin aloittaa kopioimalla VirtualBoxini modules kansion githubiin. 

Ensin asensin gitin komennolla "sudo apt-get -y install git"

Seuraavaksi annoin komennon "sudo git commit"

eero@eero-VirtualBox:/etc/puppet/modules$ sudo git commit
    
[master (root-commit) 1a80964] Luotiin gitti moduuleille sijainnissa /etc/puppet/
    
5 files changed, 154 insertions(+)
    
create mode 100644 lampstack/manifests/init.pp
    
create mode 100644 lampstack/templates/index.html
    
create mode 100644 lampstack/templates/public_html/index.html
    
create mode 100644 ssh1/manifests/init.pp
    
create mode 100644 ssh1/templates/sshd_config



Tämän jälkeen ajoin komennon "sudo git pull"

eero@eero-VirtualBox:/etc/puppet/modules$ sudo git pull
warning: no common commits
remote: Counting objects: 4, done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 4 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (4/4), done.
From https://github.com/eerokolkki/h5
 * [new branch]      master     -> origin/master
There is no tracking information for the current branch.
Please specify which branch you want to merge with.
See git-pull(1) for details.

    git pull <remote> <branch>

If you wish to set tracking information for this branch you can do so with:

    git branch --set-upstream-to=origin/<branch> master

En ole aivan varma mistä komentorivi ilmoitti niin päätin jatkaa eteenpäin.

"sudo git push --force https://github.com/eerokolkki/h5" Tämä oli ainoa komento jolla sain tekemäni repositoryn työnnettyä githubiin. Koska yritin työntää valmista repositoryä toisen repositoryn päälle niin minun olisi pitänyt käyttää edistyneempiä komentoja sen toteuttamiseksi. Päätin jatkaa tehtävässä eteenpäin.

eero@eero-VirtualBox:/etc/puppet/modules$ sudo git push --force https://github.com/eerokolkki/h5
Username for 'https://github.com': eerokolkki
Password for 'https://eerokolkki@github.com': 
Counting objects: 14, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (10/10), done.
Writing objects: 100% (14/14), 2.60 KiB | 0 bytes/s, done.
Total 14 (delta 0), reused 0 (delta 0)
To https://github.com/eerokolkki/h5
 + b4d97b0...1a80964 master -> master (forced update)
eero@eero-VirtualBox:/etc/puppet/modules$ 

Seuraavaksi kokeilen siirtää githubista moduulia live-USB kannettavalleni.
Aloitin antamalla komennot "setxkbmap fi", "sudo apt-get update", "sudo apt-get -y install puppet", "sudo apt-get -y install git".
Tämän jälkeen sain komennolla "sudo git clone (https urli tähän)" laitettua repositoryn sisällön live-USB koneelle.
