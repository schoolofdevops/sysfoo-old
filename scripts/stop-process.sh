#!/bin/bash

ps -ef | grep sysfoo.war | grep -v grep | awk '{print $2}' | xargs kill
