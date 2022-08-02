# Download the current ditches and convert to GeoJSON:
# - this needs to be run after changes to the State's dataset
# - save each file locally and then read and write to make sure GeoJSON file is saved as latest spec
CreateFolder(Folder="downloads/DWR_Irrigation_Ditches",CreateParentFolders="True",IfFolderExists="Ignore")
WebGet(URL="https://dnrftp.state.co.us/CDSS/GIS/DWR_Irrigation_Ditches_.gdb.zip",OutputFile="downloads/DWR_Irrigation_Ditches/DWR_Irrigation_Ditches.zip")
# =====================================================
# Unzip the geodatabase.
UnzipFile(File="downloads/DWR_Irrigation_Ditches/DWR_Irrigation_Ditches.zip",OutputFolder="downloads/DWR_Irrigation_Ditches",IfFolderDoesNotExist="Create")
# Read the file from 'downloads/' and then write to '../data'.
ReadGeoLayersFromFGDB(InputFolder="downloads/DWR_Irrigation_Ditches/DWR_Irrigation_Ditches.gdb",ReadOnlyOneFeatureClass="TRUE",FeatureClass="DWR_Irrigation_Ditches",GeoLayerID="DWR_Irrigation_Ditches")
WriteGeoLayerToGeoJSON(GeoLayerID="DWR_Irrigation_Ditches",OutputFile="../data/co-ditches.geojson")