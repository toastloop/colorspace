#!/bin/bash

playerctl -p spotifyd,%any metadata --format " {{ title }} {{ artist }} {{ album }} "