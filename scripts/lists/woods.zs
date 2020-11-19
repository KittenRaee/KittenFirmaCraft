#author KittenRaee
#priority 99
#modloaded tfc
#modloaded debark
import crafttweaker.item.IItemStack;

static woodTypes as IItemStack[string][string] = {
    "acacia" : {
        "log": <tfc:wood/log/acacia>,
        "lumber": <tfc:wood/lumber/acacia>,
        "planks": <tfc:wood/planks/acacia>,
        "debarked": <debark:debarked_log_tfc_wood_log_acacia>
    },
    "ash" : {
        "log": <tfc:wood/log/ash>,
        "lumber": <tfc:wood/lumber/ash>,
        "planks": <tfc:wood/planks/ash>,
        "debarked": <debark:debarked_log_tfc_wood_log_ash>
    },
    "aspen" : {
        "log": <tfc:wood/log/aspen>,
        "lumber": <tfc:wood/lumber/aspen>,
        "planks": <tfc:wood/planks/aspen>,
        "debarked": <debark:debarked_log_tfc_wood_log_aspen>
    },
    "birch" : {
        "log": <tfc:wood/log/birch>,
        "lumber": <tfc:wood/lumber/birch>,
        "planks": <tfc:wood/planks/birch>,
        "debarked": <debark:debarked_log_tfc_wood_log_birch>
    },
    "blackwood" : {
        "log": <tfc:wood/log/blackwood>,
        "lumber": <tfc:wood/lumber/blackwood>,
        "planks": <tfc:wood/planks/blackwood>,
        "debarked": <debark:debarked_log_tfc_wood_log_blackwood>
    },
    "chestnut" : {
        "log": <tfc:wood/log/chestnut>,
        "lumber": <tfc:wood/lumber/chestnut>,
        "planks": <tfc:wood/planks/chestnut>,
        "debarked": <debark:debarked_log_tfc_wood_log_chestnut>
    },
    "douglas_fir" : {
        "log": <tfc:wood/log/douglas_fir>,
        "lumber": <tfc:wood/lumber/douglas_fir>,
        "planks": <tfc:wood/planks/douglas_fir>,
        "debarked": <debark:debarked_log_tfc_wood_log_douglas_fir>
    },
    "hickory" : {
        "log": <tfc:wood/log/hickory>,
        "lumber": <tfc:wood/lumber/hickory>,
        "planks": <tfc:wood/planks/hickory>,
        "debarked": <debark:debarked_log_tfc_wood_log_hickory>
    },
    "kapok" : {
        "log": <tfc:wood/log/kapok>,
        "lumber": <tfc:wood/lumber/kapok>,
        "planks": <tfc:wood/planks/kapok>,
        "debarked": <debark:debarked_log_tfc_wood_log_kapok>
    },
    "maple" : {
        "log": <tfc:wood/log/maple>,
        "lumber": <tfc:wood/lumber/maple>,
        "planks": <tfc:wood/planks/maple>,
        "debarked": <debark:debarked_log_tfc_wood_log_maple>
    },
    "oak" : {
        "log": <tfc:wood/log/oak>,
        "lumber": <tfc:wood/lumber/oak>,
        "planks": <tfc:wood/planks/oak>,
        "debarked": <debark:debarked_log_tfc_wood_log_oak>
    },
    "palm" : {
        "log": <tfc:wood/log/palm>,
        "lumber": <tfc:wood/lumber/palm>,
        "planks": <tfc:wood/planks/palm>,
        "debarked": <debark:debarked_log_tfc_wood_log_palm>
    },
    "pine" : {
        "log": <tfc:wood/log/pine>,
        "lumber": <tfc:wood/lumber/pine>,
        "planks": <tfc:wood/planks/pine>,
        "debarked": <debark:debarked_log_tfc_wood_log_pine>
    },
    "rosewood" : {
        "log": <tfc:wood/log/rosewood>,
        "lumber": <tfc:wood/lumber/rosewood>,
        "planks": <tfc:wood/planks/rosewood>,
        "debarked": <debark:debarked_log_tfc_wood_log_rosewood>
    },
    "sequoia" : {
        "log": <tfc:wood/log/sequoia>,
        "lumber": <tfc:wood/lumber/sequoia>,
        "planks": <tfc:wood/planks/sequoia>,
        "debarked": <debark:debarked_log_tfc_wood_log_sequoia>
    },
    "spruce" : {
        "log": <tfc:wood/log/spruce>,
        "lumber": <tfc:wood/lumber/spruce>,
        "planks": <tfc:wood/planks/spruce>,
        "debarked": <debark:debarked_log_tfc_wood_log_spruce>
    },
    "sycamore" : {
        "log": <tfc:wood/log/sycamore>,
        "lumber": <tfc:wood/lumber/sycamore>,
        "planks": <tfc:wood/planks/sycamore>,
        "debarked": <debark:debarked_log_tfc_wood_log_sycamore>
    },
    "white_cedar" : {
        "log": <tfc:wood/log/white_cedar>,
        "lumber": <tfc:wood/lumber/white_cedar>,
        "planks": <tfc:wood/planks/white_cedar>,
        "debarked": <debark:debarked_log_tfc_wood_log_white_cedar>
    },
    "willow" : {
        "log": <tfc:wood/log/willow>,
        "lumber": <tfc:wood/lumber/willow>,
        "planks": <tfc:wood/planks/willow>,
        "debarked": <debark:debarked_log_tfc_wood_log_willow>
    }
} as IItemStack[string][string];

#<tfc:wood/log/acacia>
#<tfc:wood/log/ash>
#<tfc:wood/log/aspen>
#<tfc:wood/log/birch>
#<tfc:wood/log/blackwood>
#<tfc:wood/log/chestnut>
#<tfc:wood/log/douglas_fir>
#<tfc:wood/log/hickory>
#<tfc:wood/log/kapok>
#<tfc:wood/log/maple>
#<tfc:wood/log/oak>
#<tfc:wood/log/palm>
#<tfc:wood/log/pine>
#<tfc:wood/log/rosewood>
#<tfc:wood/log/sequoia>
#<tfc:wood/log/spruce>
#<tfc:wood/log/sycamore>
#<tfc:wood/log/white_cedar>
#<tfc:wood/log/willow>
#<tfc:wood/log/hevea>