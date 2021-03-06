#ls #list dir content
#mkdir folder_name #create directory called "folder_name"
#rmdir folder_name  #remove an empty directory as long as it is empty
#rm -r folder_name  #remove dir that is not empty, "r" stands for recursive
#cd: change dir
#../ # two dots represents parent dir
  . # single dot represents current workingdir 
#cd ~/projects # concatenate with forward slashes
#cd ../.. # change to two parent layer beyond
#cd -  # whatever dir you were before
# cd  # return to the home dir
#mv path-to-file path-to-destination-directory También sirve para cambiar nombre del archivos o directorios
#rm filename-1 filename-2 filename-3 Para eliminar archivos o directorios
#less cv.tex: Ver contenido de archivo. Para salir del viewer se oprime q
  
#Preparar proyecto de Data Science 
  ########### In terminal ###########
#cd ~    # move to home directory
#mkdir projects    # make a new directory called projects
#cd projects    # move to ~/projects directory
#mkdir murders    # make new directory called murders inside of projects
#cd murders    # move to ~/projects/murders/
#mkdir data rda    # make two new directories, one is data the other is rda folder
#ls    # to check if we indeed have one data folder and one rda folder
#pwd    # check the current working directory
#mkdir figs    # make a directory called figs to store figures

  ########## In RStudio ########
# pick existing directory as new project
#getwd()    # to confirm current working directory
#save()    # save into .rda file, .RData is also fine but less preferred
#ggsave("figs/barplot.png")    # save a plot generated by ggplot2 to a dir called "figs"
  

  ##Usar GuutHub desde la terminal##
# pwd
# mkdir git-example
#cd git-example
#git clone https://github.com/rairizarry/murders.git
#cd murders
#ls
#git status
#echo "test" >> new-file.txt
#echo "temporary" >> tmp.txt
#git add new-file.txt
#git status
#git commit -m "adding a new file" 
#git status
#echo "adding a second line" >> new-file.txt
#git commit -m "minor change to new-file" new-file.txt
#git status
#git add
#git log new-file.txt
#git push
#git fetch
#git merge
 
#Recap: there are four stages: working directory, staging area, local repository, and upstream repository
#Clone an existing upstream repository (copy repo url from clone button, and type "git clone <url>"), and all three local stages are the same as upstream remote.
#The working directory is the same as the working directory in Rstudio. When we edit files we only change the files in this place.
#git status: tells how the files in the working directory are related to the files in other stages
#edits in the staging area are not tracked by the version control system by default - we add a file to the staging area by git add command
#git commit: to commit files from the staging area to local repository, we need to add a message stating what we are doing by git commit -m "something"
#git log: keeps track of all the changes we have made to the local repository
#git push: allows moving from the local repository to upstream repository, only if you have the permission (e.g. if it is yours)
#git fetch: update local repository to  be like the upstream repository, from upstream to local
#git merge: make the updated local sync with the working directory and staging area
#To change everything in one shot (from upstream to working dir), use git pull (equivalent to combining git fetch + git merge)
  
  
##Inicializar un repositorio
  
#Key points
#Recap: two ways to get started, one is cloning an existing repository, the other is initializing our own
#Create our own project on our computer (independent of Git) on our own machine
#Create an upstream repo on Github, copy repo's url
#Make a local git repository: On the local machine, in the project directory, use git init. Now git starts tracking everything in the local repo.
#Now we need to start moving files into our local repo and connect local repo to the upstream remote by  git remote add origin <url>
#Note: The first time you push to a new repository, you may also need to use these git push options: git push --set-upstream origin master. If you need to run these arguments but forget to do so, you will get an error with a reminder.
#Code
#cd ~/projects/murders
#git init
#git add README.txt
#git commit -m "First commit. Adding README.txt file just to get started"
#git remote add origin "https://github.com/rairizarry/murders.git"
#git push    # you may need to add these arguments the first time: --set-upstream origin master
  
#Arguments
#Arguments typically are defined using a dash (-) or two dashes (--) followed by a letter of a word.
# r: recursive. For example, rm -r <directory-name>: remove all files, subdirectories, files in subdirectories, subdirectories in subdirectories, etc.
#Combine arguments: rm -rf directory-name
#ls -a: Shows all files in the directories including hidden files (e.g. .git file when initializing using git init) (a for all).
#ls -l: Returns more information about the files (i.e. l for long).
#ls -t: Shows files in chronological order.
#ls -r: Reverses the order of how files are shown.
#ls -lart: Shows more information for all files in reverse chronological order.

  
  