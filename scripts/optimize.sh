#!/bin/sh

(rm _notmatched.sqlite || true) \
&& (rm _matched.sqlite || true) \
&& echo Removed _notmached.sqlite and _matched.sqlite \
&& terracotta optimize-rasters --overwrite $TOA/*.tif -o $NOT_MATCHED \
&& terracotta optimize-rasters --overwrite $HISTOGRAM/*.tif -o $MATCHED \
&& exit 0
