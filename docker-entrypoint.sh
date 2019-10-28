#!/bin/bash
echo "Starting AZCOPY container"
date
echo azcopy $MODE $SOURCE $DESTINATION
azcopy $MODE $SOURCE $DESTINATION