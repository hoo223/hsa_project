#!/usr/bin/python
# -*- coding: utf8 -*- 
"""Joystick Agent."""
import pygame
import numpy as np
import time
import rospy
from std_msgs.msg import Float64MultiArray

#####################################
# Change these to match your joystick
RIGHT_UP_AXIS = 4
RIGHT_SIDE_AXIS = 3
LEFT_UP_AXIS = 1
LEFT_SIDE_AXIS = 0
#####################################

class JoystickActor(object):
    """Joystick Controller for Lunar Lander."""

    def __init__(self, fps=1000):
        """Init."""
        self.human_agent_action = np.array([[0., 0.], [0., 0.]], dtype=np.float32)  # noop
        self.button = np.array([0], dtype=np.int32)
        pygame.joystick.init()
        joysticks = [pygame.joystick.Joystick(x)
                     for x in range(pygame.joystick.get_count())]
        if len(joysticks) != 1:
            raise ValueError("There must be exactly 1 joystick connected.",
                             "Found {len(joysticks)}")
        self.joy = joysticks[0]
        self.joy.init()
        pygame.init()
        self.t = None
        self.fps = fps

    def _get_human_action(self):
        for event in pygame.event.get():
            if event.type == pygame.JOYAXISMOTION:
                if event.axis == LEFT_SIDE_AXIS:
                    self.human_agent_action[0, 1] = event.value
                elif event.axis == LEFT_UP_AXIS:
                    self.human_agent_action[0, 0] = -1.0 * event.value
                if event.axis == RIGHT_SIDE_AXIS:
                    self.human_agent_action[1, 1] = event.value
                elif event.axis == RIGHT_UP_AXIS:
                    self.human_agent_action[1, 0] = -1.0 * event.value
            if event.type == pygame.JOYBUTTONDOWN:
                self.button[0] = event.button
            else:
                # button clear
                self.button[0] = -1
                #print(event.button)
        if abs(self.human_agent_action[0, 0]) < 0.01:
            self.human_agent_action[0, 0] = 0.0
        if abs(self.human_agent_action[1, 0]) < 0.01:
            self.human_agent_action[1, 0] = 0.0
        return self.human_agent_action, self.button

    def __call__(self):
        """Act."""
        action, button = self._get_human_action()
        if self.t and (time.time() - self.t) < 1. / self.fps:
            st = 1. / self.fps - (time.time() - self.t)
            if st > 0.:
                time.sleep(st)
        self.t = time.time()
        return action, button

    def reset(self):
        self.human_agent_action[:] = 0.

if __name__ == '__main__':
    fps = 1100
    actor = JoystickActor(fps=fps)
    pub = rospy.Publisher('joy_command', Float64MultiArray, queue_size=10)
    rospy.init_node('joystick', anonymous=True)
    rate = rospy.Rate(fps)
    while not rospy.is_shutdown():
        # get input from joystick
        input, button = actor()
        command = Float64MultiArray()
        command.data.append(input[0][0])
        command.data.append(input[0][1])
        command.data.append(input[1][0])
        command.data.append(input[1][1])
        command.data.append(button)
        pub.publish(command)

        rate.sleep()