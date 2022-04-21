#include "ros/ros.h"
#include <actionlib/server/simple_action_server.h>
#include "skills/actionfileAction.h" //add Action at the end of the file name

class PrimitiveName
{
protected:
	ros::NodeHandle nh_;
	actionlib::SimpleActionServer<skills::actionfileAction> as_; // NodeHandle instance must be created before this line. Otherwise strange error occurs.
	std::string action_name_;
	// create messages that are used to published feedback/result
	skills::PrimitiveNameFeedback feedback_;
	skills::PrimitiveNameResult result_;

	// if needed define the publisher and subscriber here
	ros::Publisher pub
		ros::Subscriber sub

		public :

		PrimitiveName(std::string name) : as_(nh_, name, boost::bind(&PrimitiveName::executeCB, this, _1), false),
										  action_name_(name)
	{
		as_.start();
		// if needed define the publisher and subscriber here
		pub = nh_.advertise<package::msg>("ros_topic", 1);
		sub = nh_.subscribe<package::msg>("ros_topic", 1, &PrimitiveName::Sub_Callback, this);
	}

	~PrimitiveName(void) {}

	void Callback(moveit_msgs::ExecuteTrajectoryActionResult msg)
	{
		wait_result = false;
		result_trajectory = msg;
	}

	void executeCB(const skills::actionfileGoalConstPtr &goal) // add GoalConstPtr after action file name
	{
		// this block is needed to handle cancelation during processing
		bool success = true;						// init sucess of action
		if (as_.isPreemptRequested() || !ros::ok()) // handle action cancel
		{
			ROS_INFO("%s: Preempted", action_name_.c_str());
			// set the action state to preempted
			as_.setPreempted();
			success = false;
		}

		// code example
		// result_.res1 = goal.goal1 + goal.goal2

		// This block is needed at the end to send success and result data
		if (success) // set sucess
		{
			ROS_INFO("%s: Succeeded", action_name_.c_str());
			// set the action state to succeeded
			as_.setSucceeded(result_);
		}
	}
};

int main(int argc, char **argv)
{
	ros::init(argc, argv, "PrimitiveName");

	PrimitiveName name("PrimitiveName");
	ros::spin();

	return 0;
}
