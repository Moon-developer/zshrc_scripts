#!/bin/bash

echo "Open settings"
osascript open_mouse.scpt
sleep 2s

echo "Running mouse clicks setup"
./mouse -w 1000 c:260,87 c:265,147 c:90,40 c:210,220 c:280,168 c:522,168 c:95,253 c:90,40 c:300,102 c:44,158 c:20,40 c:20,40
