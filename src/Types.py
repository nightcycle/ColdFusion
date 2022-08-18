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
	
	if ((className in safe and safe[className] == "true") or (not className in safe and isCreatable == True and isClassDeprecated == False and propCount > 0)) and not className == "Studio" and isService == False and isClassDeprecated == False:
		if isCreatable == True:
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
			file.write("""\n\tChildren: {Instance}?,
			\n\t[Symbol]: ((...any) -> any?)?,""")
		file.write("\n}")



file.write("""
export type ClassNameConstructors = (
""")

index = 0
for classData in finalList:
	className = classData["Name"]
	file.write("\n\t")
	if not index == 0:
		file.write("& ")
	index += 1

	file.write("(className: \""+className+"\") -> (("+className+"Properties) -> "+className+")")
file.write("""
)
""")



file.write("""
\n\nexport type ClassConstructors = (
""")

index = 0
for classData in finalList:
	className = classData["Name"]
	file.write("\n\t")
	if not index == 0:
		file.write("& ")
	index += 1

	file.write("("+className+") -> (("+className+"Properties) -> "+className+")")
file.write("""
)
return {}
""")
