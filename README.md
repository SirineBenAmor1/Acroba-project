# ACROBA_Workshop_SIGMA
A Package for developers participating in the worshop conducted by SIGMA about ACROBA skills-primitives architecture

# Dependencies
Developers that want to participate to this workshop should bring their personal computer with the following configuration ready :

    ubuntu 20.04
    ros noetic
    python3

For people that aren't familiar with ROS, a list of tutorials are available here :
http://wiki.ros.org/fr/ROS/Tutorials

# Turtlesim
This workshop will be based on turtlesim. 
The goal will be to develop several primitives to command the turtle basic movement and soms skills using those primitives for more complex tasks.

You can have a look at the python code used in "9 - Practicing Python with Turtlesim" at
http://wiki.ros.org/turtlesim/Tutorials

reminder :
Launching turtlesim node and spawning a turtle in the middle

    rosrun turtlesim turtlesim_node

# Guidelines

## Step 1 - Write a basic primitive to move the turtle (with its .action and test files)

In the first step you will have to write a primitive to command and move the turtle in a straight line.
Our primitive goal will be composed by the desired speed, distance and a variable which defines if the movement is forwards or backwards. 
To command the turtle, we have to publish a velocity to the topic /turtle1/cmd_vel. 
The published message will be a Twist from geometry_msgs that you need to import with :

    from geometry_msgs.msg import Twist

Based on the ActionTemplate.action you can create a Move.action file.
When creating a new .action file it needs to be added to the CMakeLists here :

    ## Generate actions in the 'action' folder
    add_action_files(
    FILES
        # primitives
        ActionTemplate.action
        # skills
    )

Everytime you create a new .action file or modify an existing one you also need to build the package with catkin_make

## Step 2 - Improve the primitive

As we can spawn several turtle in turtlesim, we can add into the goal the name of the turtle we want to move.

To spawn an new turtle we have to use a rosservice with a few arguments ('x', 'y', 'theta', 'name'), like so :

    rosservice call spawn 1 1 0 turtle2

We also want to output as feddback the reached position. For this purpose we need to add a feedback message into the Move.action file, and to create a subscriber to the topic /$TURTLE_NAME$/pose and a callback function where the feedback will be published.
In turtlesim, pose messages are definied like so :

    turtlesim/Pose Message 

    float32 x
    float32 y
    float32 theta
    float32 linear_velocity
    float32 angular_velocity

An example of callback used to publish feedback is given in the pr_template.


## Step 3 - Write a primitive to rotate the turtle

Based on the same syntax, create a pr_rotate primitive with its .action file to rotate the turtle. Test it with a test_rotate file

## Step 4 - Write a skill using both primitives

Based on the sk_template syntax and the two primitives previously created, write a skill that will make the turtle patroling by repetitively moving and rotating.