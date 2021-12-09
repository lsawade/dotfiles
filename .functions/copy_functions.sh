#!/bin/bash

# Copying to Adroit
function scpToAd()
{
    scp $1 lsawade@adroit.princeton.edu:$2
}

function scpFrAd()
{
    scp lsawade@adroit.princeton.edu:$1 $2
}


function scprToAd()
{
scp -r $1 lsawade@adroit.princeton.edu:$2
}

function scprFrAd()
{
scp -r lsawade@adroit.princeton.edu:$1 $2
}

function cp2sum {
    scp -r $1 lsawade@dtn.ccs.ornl.gov:$2
}

function sum2it {
    scp -r lsawade@dtn.ccs.ornl.gov:$1 $2
}

function getevent {
    rsync -av --exclude='synt' lsawade@dtn.ccs.ornl.gov:$1 $2
}

function sync-stats {
    rsync -av --exclude='database_measurement*.pkl' lsawade@dtn.ccs.ornl.gov:$1/ $2
}

# Copying to Clover
function scpToClv()
{
scp $1 lsawade@clover.princeton.edu:$2
}

function scpFrClv()
{
scp lsawade@clover.princeton.edu:$1 $2
}


function scprToClv()
{
scp -r $1 lsawade@clover.princeton.edu:$2
}

function scprFrClv()
{
scp -r lsawade@clover.princeton.edu:$1 $2
}

# Copying to tigercpu
function scprTigC()
{
scp -r $1 lsawade@tigercpu:$2
}

function scprFrTigC()
{
scp -r lsawade@tigercpu:$1 $2
}

# Copying to traverse
function sT()
{
scp -r $1 lsawade@traverse8.princeton.edu:$2
}

function sTb()
{
scp -r lsawade@traverse8.princeton.edu:$1 $2
}

# Copying to tigercpu
function scpTigC()
{
scp $1 lsawade@tigercpu.princeton.edu:$2
}

function scpFrTigC()
{
scp lsawade@tigercpu.princeton.edu:$1 $2
}


# Copying to Vrientius
function scpV()
{
scp $1 lsawade@128.112.20.221:$2
}

function scpFrV()
{
scp lsawade@128.112.20.221:$1 $2
}
