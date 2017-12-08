/*
   Copyright (c) 2013, The Linux Foundation. All rights reserved.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <stdlib.h>
#include <cutils/properties.h>
#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>

#include "vendor_init.h"
#include "property_service.h"
#include "log.h"
#include "util.h"

#define ISMATCH(a,b)    (!strncmp(a,b,PROP_VALUE_MAX))
#define SIMSLOT_FILE "/proc/simslot_count"

using namespace std;

/* Read the file at filename and returns the integer
 * value in the file.
 *
 * @prereq: Assumes that integer is non-negative.
 *
 * @return: integer value read if succesful, -1 otherwise. */
int read_integer(const char* filename)
{
	int retval;
	FILE * file;

	/* open the file */
	if (!(file = fopen(filename, "r"))) {
		return -1;
	}
	/* read the value from the file */
	fscanf(file, "%d", &retval);
	fclose(file);

	return retval;
}

void init_dsds() {
    property_set("ro.multisim.set_audio_params", "true");
    property_set("ro.multisim.simslotcount", "2");
    property_set("persist.radio.multisim.config", "dsds");
    property_set("ro.telephony.ril.config", "simactivation");
    property_set("rild.libpath2", "/system/lib/libsec-ril-dsds.so");
}

void init_ss() {
    property_set("ro.multisim.set_audio_params", "false");
    property_set("ro.multisim.simslotcount", "1");
    property_set("persist.radio.multisim.config", "ss");
}

void vendor_load_properties()
{
    char platform[PROP_VALUE_MAX];
    char bootloader[PROP_VALUE_MAX];
    char device[PROP_VALUE_MAX];
    char devicename[PROP_VALUE_MAX];
    int rc;

    rc = property_get("ro.board.platform", platform, "");
    if (!rc || !ISMATCH(platform, ANDROID_TARGET))
        return;

    property_get("ro.bootloader", bootloader, "A300F");

    if (strstr(bootloader, "A300FU")) {
        /* SM-A300FU */
        property_set("ro.product.model", "SM-A300FU");
        property_set("ro.product.device", "a3ulte");
		property_set("ro.product.name", "a3ultexx");
	} else if (strstr(bootloader, "A300YZ")) {
        /* SM-A300YZ */
        property_set("ro.product.model", "SM-A300YZ");
        property_set("ro.product.device", "a3ltezt");
        property_set("ro.product.name", "a3ltezt");
    } else if (strstr(bootloader, "A3000")) {
        /* SM-A3000 */
        property_set("ro.product.model", "SM-A3000");
        property_set("ro.product.device", "a3ltechn");
        property_set("ro.product.name", "a3ltezc");
    } else if (strstr(bootloader, "A3009")) {
        /* SM-A3009 */
        property_set("ro.product.model", "SM-A3009");
        property_set("ro.product.device", "a3ltectc");
        property_set("ro.product.name", "a3ltectc");
    } else if (strstr(bootloader, "A300F")) {
        /* SM-A300F */
        property_set("ro.product.model", "SM-A300F");
        property_set("ro.product.device", "a3lte");
        property_set("ro.product.name", "a3ltexx");
    } else if (strstr(bootloader, "A300H")) {
        /* SM-A300H */
        property_set("ro.product.model", "SM-A300H");
        property_set("ro.product.device", "a33g");
        property_set("ro.product.name", "a33gxx");
	} else if (strstr(bootloader, "A300M")) {
        /* SM-A300M */
        property_set("ro.product.model", "SM-A300M");
        property_set("ro.product.device", "a3lte");
        property_set("ro.product.name", "a3lteub");
	} else if (strstr(bootloader, "A300G")) {
        /* SM-A300G */
        property_set("ro.product.model", "SM-A300G");
        property_set("ro.product.device", "a3ltedd");
        property_set("ro.product.name", "a3ltezso");
	} else if (strstr(bootloader, "A300Y")) {
        /* SM-A300Y */
        property_set("ro.product.model", "SM-A300Y");
        property_set("ro.product.device", "a3ulte");
        property_set("ro.product.name", "a3ultedv");
    } else {
        /* SM-A300? */
        property_set("ro.product.model", bootloader);
        property_set("ro.product.device", "a3lte");
    }

		INFO("INIT: sim_count detecting");

	/* check for multi-sim devices */

	/* check if the simslot count file exists */
	if (access(SIMSLOT_FILE, F_OK) == 0) {
		int sim_count= read_integer(SIMSLOT_FILE);

		/* set the dual sim props */
		if (sim_count == 2)
			init_dsds();
        else
            init_ss();
	}

    property_get("ro.product.device", device, "A300?");
    strlcpy(devicename, device, sizeof(devicename));
    INFO("Found bootloader id %s setting build properties for %s device\n", bootloader, devicename);
}
