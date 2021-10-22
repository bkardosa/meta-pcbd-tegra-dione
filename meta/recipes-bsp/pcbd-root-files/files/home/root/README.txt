    Detect camera:
      # v4l2-ctl -l

    GStreamer live stream:
      # gst-launch-1.0 v4l2src device=/dev/video0 ! video/x-raw,format=BGRA,width=640,height=480 ! videoconvert ! video/x-raw,format=NV12 ! nvvidconv ! nvoverlaysink

