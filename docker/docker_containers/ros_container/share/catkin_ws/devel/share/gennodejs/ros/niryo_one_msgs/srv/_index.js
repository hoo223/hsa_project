
"use strict";

let GetTargetPose = require('./GetTargetPose.js')
let GetWorkspaceRobotPoses = require('./GetWorkspaceRobotPoses.js')
let GetWorkspaceList = require('./GetWorkspaceList.js')
let SetSequenceAutorun = require('./SetSequenceAutorun.js')
let CloseGripper = require('./CloseGripper.js')
let RobotMove = require('./RobotMove.js')
let PushAirVacuumPump = require('./PushAirVacuumPump.js')
let SendCustomDxlValue = require('./SendCustomDxlValue.js')
let GetDigitalIO = require('./GetDigitalIO.js')
let ManagePosition = require('./ManagePosition.js')
let GetPositionList = require('./GetPositionList.js')
let SetString = require('./SetString.js')
let DebugMarkers = require('./DebugMarkers.js')
let GetCalibrationCam = require('./GetCalibrationCam.js')
let EditWorkspace = require('./EditWorkspace.js')
let ControlConveyor = require('./ControlConveyor.js')
let SetConveyor = require('./SetConveyor.js')
let GetSequenceList = require('./GetSequenceList.js')
let GetInt = require('./GetInt.js')
let SetInt = require('./SetInt.js')
let SetCalibrationCam = require('./SetCalibrationCam.js')
let PullAirVacuumPump = require('./PullAirVacuumPump.js')
let EditGrip = require('./EditGrip.js')
let ChangeHardwareVersion = require('./ChangeHardwareVersion.js')
let UpdateConveyorId = require('./UpdateConveyorId.js')
let GetTrajectoryList = require('./GetTrajectoryList.js')
let ManageSequence = require('./ManageSequence.js')
let ManageProcess = require('./ManageProcess.js')
let GetWorkspaceRatio = require('./GetWorkspaceRatio.js')
let DebugColorDetection = require('./DebugColorDetection.js')
let TakePicture = require('./TakePicture.js')
let SetLeds = require('./SetLeds.js')
let PingDxlTool = require('./PingDxlTool.js')
let ChangeMotorConfig = require('./ChangeMotorConfig.js')
let SetDigitalIO = require('./SetDigitalIO.js')
let OpenGripper = require('./OpenGripper.js')
let ObjDetection = require('./ObjDetection.js')
let ManageTrajectory = require('./ManageTrajectory.js')

module.exports = {
  GetTargetPose: GetTargetPose,
  GetWorkspaceRobotPoses: GetWorkspaceRobotPoses,
  GetWorkspaceList: GetWorkspaceList,
  SetSequenceAutorun: SetSequenceAutorun,
  CloseGripper: CloseGripper,
  RobotMove: RobotMove,
  PushAirVacuumPump: PushAirVacuumPump,
  SendCustomDxlValue: SendCustomDxlValue,
  GetDigitalIO: GetDigitalIO,
  ManagePosition: ManagePosition,
  GetPositionList: GetPositionList,
  SetString: SetString,
  DebugMarkers: DebugMarkers,
  GetCalibrationCam: GetCalibrationCam,
  EditWorkspace: EditWorkspace,
  ControlConveyor: ControlConveyor,
  SetConveyor: SetConveyor,
  GetSequenceList: GetSequenceList,
  GetInt: GetInt,
  SetInt: SetInt,
  SetCalibrationCam: SetCalibrationCam,
  PullAirVacuumPump: PullAirVacuumPump,
  EditGrip: EditGrip,
  ChangeHardwareVersion: ChangeHardwareVersion,
  UpdateConveyorId: UpdateConveyorId,
  GetTrajectoryList: GetTrajectoryList,
  ManageSequence: ManageSequence,
  ManageProcess: ManageProcess,
  GetWorkspaceRatio: GetWorkspaceRatio,
  DebugColorDetection: DebugColorDetection,
  TakePicture: TakePicture,
  SetLeds: SetLeds,
  PingDxlTool: PingDxlTool,
  ChangeMotorConfig: ChangeMotorConfig,
  SetDigitalIO: SetDigitalIO,
  OpenGripper: OpenGripper,
  ObjDetection: ObjDetection,
  ManageTrajectory: ManageTrajectory,
};
