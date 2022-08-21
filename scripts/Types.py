import io
import requests
import json

API_DUMP_URL = "https://raw.githubusercontent.com/CloneTrooper1019/Roblox-Client-Tracker/roblox/API-Dump.json"

MAX_CONSTRUCTOR_LENGTH = 5
MAX_CONSTRUCTOR_LENGTH_GROUP = 2

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
type State<T> = {Value: T, [any]:any}
type ParameterEntry<T> = (State<T> | T)
type Attributes = {[string]: ParameterEntry<string | boolean | number |UDim |UDim2 |BrickColor |Color3 |Vector2 |Vector3 |NumberSequence |ColorSequence |NumberRange |Rect | nil>}
type Children = ParameterEntry<{Instance}>
type BoundFunction = (...any) -> nil
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
	"ManualWeld": "false",
	"Studio": "false"
}

finalList = []
scores = {}

classProperties = {}

def getIfViableProperty(propertyMember):
	isScriptable = True
	isDeprecated = False
	isReadOnly = False
	if "Tags" in propertyMember:
		for tag in propertyMember["Tags"]:
			if tag == "Deprecated":
				isDeprecated = True
			elif tag == "NotScriptable":
				isScriptable = False
			elif tag == "ReadOnly":
				isReadOnly = True,
				
	if isScriptable and not isDeprecated and not isReadOnly and propertyMember["MemberType"] == "Property" and propertyMember["Security"]["Write"] == "None":
		return True
	else:
		return False

def setClassProperties(classData):
	className = classData["Name"]
	if not className == "Studio":
		superClass = classData["Superclass"]
		isService = False
		# if not className in safeServices:
		propCount = 0
		isCreatable = True
		isClassDeprecated = False

		properties = {}

		for member in classData["Members"]:
			if getIfViableProperty(member) == True:
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

		if isCreatable == True:
			if not className in safe or  safe[className] != "false":
				finalList.append(classData)
		# if className == "Instance":
		# 	file.write("\ntype "+className+"Properties = {")
		# else:
		# 	file.write("\ntype "+className+"Properties = "+ superClass +"Properties")
		# file.write("\n\tClassName: \""+classData["Name"]+"\",")
		if propCount > 0:
			# if not className == "Instance":
				# file.write(" & {")

			for member in classData["Members"]:
				isScriptable = True
				isDeprecated = False
				isReadOnly = False
				if "Tags" in member:
					for tag in member["Tags"]:
						if tag == "Deprecated":
							isDeprecated = True
						elif tag == "NotScriptable":
							isScriptable = False
						elif tag == "ReadOnly":
							isReadOnly = True,

				if isScriptable and not isDeprecated and not isReadOnly and member["MemberType"] == "Property" and member["Security"]["Write"] == "None":
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
						# file.write("\n\t"+member["Name"]+": ParameterEntry<"+valueType+">?,")
						properties[member["Name"]] = "ParameterEntry<"+valueType+">"

			if className == "Instance":
				properties["Children"] = "Children"
				properties["Attributes"] = """Attributes"""
				properties["Parent"] = "ParameterEntry<Instance?>"
		classProperties[className] = properties	

hierarchy = {}

for classData in classList:
	className = classData["Name"]
	superClass = classData["Superclass"]
	if not superClass in hierarchy: 
		hierarchy[superClass] = []
	hierarchy[superClass].append(className)
	setClassProperties(classData)

def passProperties(className):
	if className in hierarchy and className in classProperties:
		properties = classProperties[className]
		for childClass in hierarchy[className]:
			if not childClass in classProperties:
				classProperties[childClass] = {}
			childProps = classProperties[childClass]
			for propName, propType in properties.items():
				if not propName in childProps:
					childProps[propName] = propType
			passProperties(childClass)

passProperties("Instance")

for classData in finalList:
	className = classData["Name"]
	if className in classProperties:
		propList = classProperties[className]
		file.write("\n\ntype " + className + "Properties = {")
		for propName, propType in propList.items():
			file.write("\n\t" + propName + ": " + propType + "?,")
		file.write("\n\t[any]: BoundFunction")
		file.write("\n} | {")
		for propName, propType in propList.items():
			file.write("\n\t" + propName + ": " + propType + "?,")
		file.write("\n\t[any]: nil")
		file.write("\n}")

def createAMonster(baseName, firstParamFormatter):
	typenameList = []
	index = 1
	file.write("\n\ntype "+baseName+"0 = (")
	typenameList.append(baseName+"0")

	for classData in finalList:
		# print(index % MAX_CONSTRUCTOR_LENGTH)
		if index % MAX_CONSTRUCTOR_LENGTH == 0:
			file.write(")\n\n")
			file.write("type "+ baseName + str(int(index/5)) + " = (")
			typenameList.append(baseName + str(int(index/5)))
		className = classData["Name"]
		file.write("\n\t")
		if index != 1 and index % MAX_CONSTRUCTOR_LENGTH != 0:
			file.write("& ")
		index += 1
		
		file.write("(("+firstParamFormatter(className)+") -> ((params: "+className+"Properties) -> "+className+"))")
	file.write(")")

	def my_function(list,letters = ""):
		innerlistA =  []
		innerlistB =  []

		for i in range(0, len(list)):
			if i % 2 == 0:
				innerlistA.append(list[i])
			else:
				innerlistB.append(list[i])
		if len(innerlistA) <= MAX_CONSTRUCTOR_LENGTH_GROUP and len(innerlistA) != 0:
			file.write("\n\n type "+baseName+"A"+ letters +f" = {' & '.join(innerlistA)}")
		if len(innerlistB) <= MAX_CONSTRUCTOR_LENGTH_GROUP and len(innerlistB) != 0:
			file.write("\n\n type "+baseName+"B"+ letters +f" = {' & '.join(innerlistB)}")
		if len(list) <= MAX_CONSTRUCTOR_LENGTH_GROUP *2:
			file.write("\n\n type "+baseName+ letters + f" = "+baseName+"A"+ letters + " & "+baseName+"B" + letters) 
		else:
			# print(innerlistA)
			lettersA = letters + "L"
			my_function(innerlistA,lettersA)
			# print(innerlistB)
			lettersB = letters + "R"
			my_function(innerlistB,lettersB)
			if letters == "":
				file.write("\n\n export type "+baseName+ letters + f" = "+baseName+ lettersA + " & "+baseName + lettersB) 
			else:
				file.write("\n\n type "+baseName+ letters + f" = "+baseName+ lettersA + " & "+baseName + lettersB) 
			

	my_function(typenameList)

def classNameFormat(className):
	return ("className: \""+className + "\"")

def classFormat(className):
	return className

createAMonster("ClassNameConstructors", classNameFormat)
# createAMonster("ClassConstructors", classFormat)

file.write("\n\nreturn {}") 