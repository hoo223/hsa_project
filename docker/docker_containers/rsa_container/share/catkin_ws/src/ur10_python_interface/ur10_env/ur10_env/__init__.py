#!/usr/bin/python
# -*- coding: utf8 -*- 

from gym.envs.registration import register

register(
    id='ur10-v0',
    entry_point='ur10_env.envs:UR10Env'
    #max_episode_steps=1000,
    #reward_threshold=200
)