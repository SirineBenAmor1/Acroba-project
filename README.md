# ACROBA_Workshop_SIGMA
A Package for developers participating in the worshop conducted by SIGMA about ACROBA skills-primitives architecture.

A description of this architecture is detailled in Deliverable 2.3 - Part 2, which has also been copied in the Wiki of this package (https://github.com/bastienm23/ACROBA_Workshop_SIGMA/wiki).

# Dependencies
Developers that want to participate to this workshop should bring their personal computer with the following configuration ready :

    ubuntu 20.04
    ros noetic
    python3

For people that aren't familiar with ROS, a list of tutorials are available here :
http://wiki.ros.org/fr/ROS/Tutorials

# Create workspace and clone package

    mkdir acroba_workshop_ws && cd acroba_workshop_ws
    mkdir src && cd src
    git clone [https://github.com/SirineBenAmor1/Acroba-project]
    cd ..
    catkin_make

If you are using conda or an other environment system you may need to source python paths while building, with the following command: 

    catkin_make -DPYTHON_EXECUTABLE=/usr/bin/python3 -DPYTHON_INCLUDE_DIR=/usr/include/python3.8m

# Turtlesim
This workshop will be based on turtlesim. 
The goal will be to develop several primitives to command the turtle basic movement and soms skills using those primitives for more complex tasks.

You can have a look at the python code used in "9 - Practicing Python with Turtlesim" at
http://wiki.ros.org/turtlesim/Tutorials

Reminder :
To launch turtlesim node and spawn a turtle in the middle, use :

    rosrun turtlesim turtlesim_node

# Guidelines

## Step 1 - Write a basic python code to move the turtle in a straight line

In the first step you will have to write a primitive to command and move the turtle in a straight line.
The inputs will be the desired speed, distance and a variable which defines if the movement is forwards or backwards. 
To command the turtle, we have to publish a velocity to the topic /turtle1/cmd_vel. 
The published message will be a Twist from geometry_msgs that you need to import with :

    from geometry_msgs.msg import Twist

This file can be stored on /scripts/other folder.

Reminders : 
A Twist message is composed by two Vector3 like so :

    geometry_msgs/Vector3 linear
    geometry_msgs/Vector3 angular

A Vector3 message is composed by 3 float like so :

    float64 x
    float64 y
    float64 z


## Step 2 - Write a basic primitive (with its .action and test files)

Based on the ActionTemplate.action (you can find it under /action), you first need to create a Move.action file.
This action file can be composed by 3 kind of message : goal, result and feedback. Results and feedback are non-mandatory.
You can define several inputs in each messages, one per line, by declaring their type and their name. Each message are separated in the file by a line :
    ---

When creating a new .action file it needs to be added to the CMakeLists here :

    ## Generate actions in the 'action' folder
    add_action_files(
    FILES
        # primitives (add .action file for primitives below)
        # ActionTemplate.action
        # skills (add .action file for primitives skills)
    )

Everytime you create a new .action file or modify an existing one you also need to build the package with catkin_make

Then, based on the pr_template file (you can find it under /script/primitives), implement your previously created code inside the primitive syntax.

To test it you need to create a client test file based on the test_template, that will send the goal to your primitive server.
You can also send the goal by manually publish on the right topic through command line.
For instance you can use 

    rostopic pub /Move/goal

then press Tab twice to autocomplete the message. Before pressing enter, change the default goal values to the desired ones.

## Step 3 - Improve the primitive

As we can spawn several turtles in turtlesim, we can add as input in the goal the name of the turtle we want to move. For that you need to add a line in yournMove.action file file previously created. Doing will force you to re-build with catkin_make.

To spawn an new turtle we have to use a rosservice with a few arguments ('x', 'y', 'theta', 'name'), like so :

    rosservice call spawn 1 1 0 turtle2

We also want to output as feedback the reached position. You will need to add a feedback message into the Move.action file and then re-build the package.
We also need to create a subscriber to the topic /$TURTLE_NAME$/pose and a callback function where the feedback will be published.
In turtlesim, pose messages are definied like so :

    turtlesim/Pose Message 

    float32 x
    float32 y
    float32 theta
    float32 linear_velocity
    float32 angular_velocity

An example of callback used to publish feedback is given in the pr_template.


## Step 4 - Write a primitive to rotate the turtle

Based on the same syntax, create a pr_rotate primitive with its .action file to rotate the turtle. Test it with a test_rotate file

## Step 5 - Write a skill using both primitives

Based on the sk_template syntax (scripts/skills/ folder) and the two primitives previously created, write a skill that will make the turtle patroling by repetitively moving and rotating.
