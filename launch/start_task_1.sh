#start primitive’s servers
screen -S pr_primitive_1 -d -m rosrun skills pr_primitive_1.py &
screen -S pr_primitive_2 -d -m rosrun skills pr_primitive_2.py &

#start skill’s servers
screen -S sk_skill_1 -d -m rosrun skills sk_skill_1.py &
screen -S sk_skill_2 -d -m rosrun skills sk_skill_2.py 
