import io
import requests
import json

API_DUMP_URL = "https://raw.githubusercontent.com/CloneTrooper1019/Roblox-Client-Tracker/roblox/API-Dump.json"

# sending get request and saving the response as response object
api = requests.get(url = API_DUMP_URL, params = {}).json()
apiStr = '{"k1": "v1", "k2": "v2"}'#"'"+str(api)+"'"
apiList = json.loads(apiStr)

classes = api["Classes"]
file = io.open("src/Types.lua", "w")


classList = []
for classData in classes:
	classList.append(classData)

file.write("""
local StateFolder = script.Parent.State
local State = require(StateFolder.State)
type State<T> = State.State<T>

local Symbol = require(script.Parent.Symbol)
type Symbol = Symbol.Symbol

type ParameterEntry<T> = (State<T> | T)?
""")

safe = {
	"Instance": "true",
	"Lighting": "true",
	"Players": "true",
	"SoundService": "true",
	"MaterialService": "true",
	"StarterGui": "true",
	"StarterPack": "true",
	"RocketPropulsion": "false",
	"BlockMesh": "false",
	"Breakpoint": "false",
	"HumanoidController": "false",
	"VehicleController": "false",
	"SkateboardController": "false",
	"AirController": "false",
	"ClimbController": "false",
	"GroundController": "false",
	"SwimController": "false",
	"ControllerManager": "false",
	"DataStoreIncrementOptions": "false",
	"DataStoreOptions": "false",
	"DataStoreSetOptions": "false",
	"DebuggerWatch": "false",
	"EulerRotationCurve": "false",
	"GetTextBoundsParams": "false",
	"Keyframe": "false",
	"KeyframeMarker": "false",
	"LocalizationTable": "false",
	"Script": "false",
	"LocalScript": "false",
	"ModuleScript": "false",
	"MarkerCurve": "false",
	"PartOperationAsset": "false",
	"ReflectionMetadata": "false",
	"ReflectionMetadataCallbacks": "false",
	"ReflectionMetadataClasses": "false",
	"ReflectionMetadataEnums": "false",
	"ReflectionMetadataEvents": "false",
	"ReflectionMetadataFunctions": "false",
	"ReflectionMetadataClass": "false",
	"ReflectionMetadataEnum": "false",
	"ReflectionMetadataEnumItem": "false",
	"ReflectionMetadataMember": "false",
	"ReflectionMetadataProperties": "false",
	"ReflectionMetadataYieldFunctions": "false",
	"TerrainDetail": "false",
	"TerrainRegion": "false",
	"StandalonePluginScripts": "false",
	"BinaryStringValue": "false",
	"TextChatMessageProperties": "false",
	"TextChatCommand": "false",
	"TeleportOptions": "false",
	"RayValue": "false",
	"FloatCurve": "false",
	"CharacterMesh": "false",
	"RenderingTest": "false",
	"Pose": "false",
	"NumberPose": "false",
	"PluginAction": "false",
	"Tween": "false",
	"ServerStorage": "false",
	"ServerScriptService": "false",
	"ServerScriptService": "false",
	"PartOperation": "false",
	"Motor": "false",
	"Accoutrement": "false",
	"Plane": "false", 
	"Skin": "false", 
	"RocketPropulsion": "false", 
	"HopperBin": "false", 
	"Flag": "false", 
	"Hat": "false", 
	"CustomEvent": "false", 
	"CustomEventReceiver": "false", 
	"BlockMesh": "false", 
	"CylinderMesh": "false", 
	"Hole": "false", 
	"MotorFeature": "false", 
	"FunctionalTest": "false", 
	"GuiMain": "false", 
	"FloorWire": "false", 
	"SelectionPartLasso": "false", 
	"SelectionPointLasso": "false", 
	"RotateP": "false", 
	"RotateV": "false", 
	"Glue": "false", 
	"ManualGlue": "false", 
	"Rotate": "false", 
	"Snap": "false", 
	"Message": "false", 
	"Hint": "false", 
	"FlagStand": "false", 
	"SkateboardPlatform": "false", 
	"DoubleConstrainedValue": "false", 
	"IntConstrainedValue": "false", 
	"Speaker": "false",
	"ManualWeld": "false"

}

finalList = []
scores = {}
for classData in classList:
	className = classData["Name"]
	superClass = classData["Superclass"]
	isService = False
	# if not className in safeServices:
	propCount = 0
	isCreatable = True
	isClassDeprecated = False

	for member in classData["Members"]:
		isScriptable = True
		isDeprecated = False
		
		if "Tags" in member:
			for tag in member["Tags"]:
				if tag == "Deprecated":
					isDeprecated = True
				elif tag == "NotScriptable":
					isScriptable = False
					
		if isScriptable and not isDeprecated and member["MemberType"] == "Property" and member["Security"]["Write"] == "None":
			propCount += 1

	if "Tags" in classData:
		for tag in classData["Tags"]:
			if tag == 'Service':
				isService = True	
			elif tag == 'NotCreatable':
				isCreatable = False
			elif tag == 'Deprecated' and not superClass == "BodyMover":
				isClassDeprecated = True

	if className in safe and safe[className] == "true":
		isService = False
		finalList.append(classData)
	if className != "Studio":
		if isCreatable == True:
			if not className in safe or  safe[className] != "false":
				finalList.append(classData)
		if className == "Instance":
			file.write("\n\ntype "+className+"Properties = {")
		else:
			file.write("\n\ntype "+className+"Properties = "+ superClass +"Properties & {")
		# file.write("\n\tClassName: \""+classData["Name"]+"\",")
		for member in classData["Members"]:
			isScriptable = True
			isDeprecated = False
			
			if "Tags" in member:
				for tag in member["Tags"]:
					if tag == "Deprecated":
						isDeprecated = True
					elif tag == "NotScriptable":
						isScriptable = False

			if isScriptable and not isDeprecated and member["MemberType"] == "Property" and member["Security"]["Write"] == "None":
				valueType = member["ValueType"]["Name"]
				if valueType == "bool":
					valueType = "boolean"
				elif valueType == "float":
					valueType = "number"
				elif valueType == "int" or valueType == "int64" or valueType == "double":
					valueType = "number"
				elif valueType == "Content":
					valueType = "string"

				if member["ValueType"]["Category"] == "Enum":
					valueType = "Enum."+valueType
				if not valueType == "Hole":
					file.write("\n\t"+member["Name"]+": ParameterEntry<"+valueType+">?,")
		if className == "Instance":
			file.write("\n\t[Symbol]: ((...any) -> any?)?,")
		file.write("\n}")


typenameList = []
index = 1
file.write("\n\ntype ClassNameConstructors0 = (")
typenameList.append("ClassNameConstructors0")
for classData in finalList:
	print(index % 100)
	if index % 100 == 0:
		file.write(")\n\n")
		file.write("type ClassNameConstructors"+ str(int(index/100)) + " = (")
		typenameList.append("ClassNameConstructors"+ str(int(index/100)))
	className = classData["Name"]
	file.write("\n\t")
	if index != 1 and index % 100 != 0:
		file.write("& ")
	index += 1

	file.write("(className: \""+className+"\") -> (("+className+"Properties) -> "+className+")")
file.write(")")

file.write(f"\n\nexport type ClassNameConstructors = {' & '.join(typenameList)}")
