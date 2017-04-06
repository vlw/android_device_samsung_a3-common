#!/system/bin/sh
#


#Enable the ARCH_POWER (ARM Topology Awareness)
echo "ARCH_POWER" > /sys/kernel/debug/sched_features
