

# CHANGE THE VALUES HERE TO CHANGE THE MODEL
# CHANGE THE VALUES HERE TO CHANGE THE MODEL
# CHANGE THE VALUES HERE TO CHANGE THE MODEL

otaversion = "RMX3461_11.C.20_1200_202408131148" 
colorosversion = "V12.1"
androidversion = "12"
trackregion = ""
uregion = ""
operator = ""
model = otaversion.split("_")[0]
product_name = model
romversion = otaversion.split("_")[0] + "_" +  otaversion.split("_")[1].split(".")[0] + "_" + otaversion.split("_")[1].split(".")[1] + "." + otaversion.split("_")[1].split(".")[2] 

# Example values to replace in the above code:

# ro.product.name - product_name: e.g., RMX3461

# ro.product.model - model: e.g., RMX3461

# ro.build.version.ota - otaVersion: e.g., RMX3461_11.C.20_1200_202408131148

# ro.oppo.operator - operator: null (or replace with an actual value if available)

# ro.build.display.id - romVersion: e.g., RMX3461_11_C.20

# ro.build.version.opporom - colorOSVersion: e.g., V12.1

# ro.build.version.release - androidVersion: e.g., 12

# ro.oppo.regionmark - trackRegion: e.g., null (or replace with an actual value if available)

# persist.sys.oppo.region - uRegion: e.g., null (or replace with an actual value if available)