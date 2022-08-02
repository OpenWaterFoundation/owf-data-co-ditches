# Split the full irrigation ditches (lines) layer into layers by division and district:
# - currently only have data for divisions 2 and 4
# - save each file locally
#
# Process irrigation ditches by division because there are no more detailed spatial attributes.
#
# Make sure a folder exists for the processing.
CreateFolder(Folder="downloads/split",CreateParentFolders="True",IfFolderExists="Ignore")
# Read layers for the entire state and by division:
# - can use DIVISION attribute, which is a string
ReadGeoLayersFromFGDB(InputFolder="downloads/DWR_Irrigation_Ditches/DWR_Irrigation_Ditches.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="DWR_Irrigation_Ditches",GeoLayerID="co-dwr-ditches")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-ditches",OutputFile="../data/co-dwr-ditches.geojson")
# ReadGeoLayersFromFGDB(InputFolder="downloads/DWR_Irrigation_Ditches/DWR_Irrigation_Ditches.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="DWR_Irrigation_Ditches",Query="DIVISION = '1'",GeoLayerID="co-dwr-ditches-division1")
ReadGeoLayersFromFGDB(InputFolder="downloads/DWR_Irrigation_Ditches/DWR_Irrigation_Ditches.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="DWR_Irrigation_Ditches",Query="DIVISION = '2'",GeoLayerID="co-dwr-ditches-division2")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-ditches-division2",OutputFile="../data/co-dwr-ditches-division2.geojson")
# ReadGeoLayersFromFGDB(InputFolder="downloads/DWR_Irrigation_Ditches/DWR_Irrigation_Ditches.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="DWR_Irrigation_Ditches",Query="DIVISION = '3'",GeoLayerID="co-dwr-ditches-division3")
ReadGeoLayersFromFGDB(InputFolder="downloads/DWR_Irrigation_Ditches/DWR_Irrigation_Ditches.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="DWR_Irrigation_Ditches",Query="DIVISION = '4'",GeoLayerID="co-dwr-ditches-division4")
WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-ditches-division4",OutputFile="../data/co-dwr-ditches-division4.geojson")
# ReadGeoLayersFromFGDB(InputFolder="downloads/DWR_Irrigation_Ditches/DWR_Irrigation_Ditches.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="DWR_Irrigation_Ditches",Query="DIVISION = '5'",GeoLayerID="co-dwr-ditches-division5")
# ReadGeoLayersFromFGDB(InputFolder="downloads/DWR_Irrigation_Ditches/DWR_Irrigation_Ditches.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="DWR_Irrigation_Ditches",Query="DIVISION = '6'",GeoLayerID="co-dwr-ditches-division6")
# ReadGeoLayersFromFGDB(InputFolder="downloads/DWR_Irrigation_Ditches/DWR_Irrigation_Ditches.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="DWR_Irrigation_Ditches",Query="DIVISION = '7'",GeoLayerID="co-dwr-ditches-division7")
#
# Download and read the district boundaries.
# WebGet(URL="https://data.openwaterfoundation.org/state/co/dwr/districts/co-dwr-district-3.geojson",OutputFile="downloads/split/co-dwr-district-3.geojson")
# ReadGeoLayerFromGeoJSON(InputFile="downloads/split/co-dwr-district-3.geojson",GeoLayerID="district3")
#
# Intersect the district with the ditch features:
# - allow extending outside so that reaches are complete
# IntersectGeoLayer(GeoLayerID="co-dwr-ditches",IntersectGeoLayerID="district3",OutputGeoLayerID="co-dwr-ditches-district3")
# WriteGeoLayerToGeoJSON(GeoLayerID="co-dwr-ditches-district3",OutputFile="../data/co-dwr-ditches-district3.geojson")
