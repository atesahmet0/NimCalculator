import strutils

var isRunning = true
const WELCOME_MSG = "\n\nWelcome to my calculator app - Made by Ateş\n"
const BYE_MSG = "Farewell..."
const UNEXPECTED_ERROR_MSG = "Something went wrong x("

const OPERATION_EXIT = 0
const OPERATION_ADD = 1
const OPERATION_SUB = 2
const OPERATION_MUL = 3 
const OPERATION_DIV = 4

const CHOOSE_OPERATION_MSG = "Choose your operation please: "
const INPUT_AN_INTEGER_MSG = "Please input an integer: "
const OPERATION_EXIT_MSG = $OPERATION_EXIT & " - to exit application"
const OPERATION_ADD_MSG = $OPERATION_ADD & " - for Addition"
const OPERATION_SUB_MSG = $OPERATION_SUB & " - for Subtract"
const OPERATION_MUL_MSG = $OPERATION_MUL & " - for Multiplication"
const OPERATION_DIV_MSG = $OPERATION_DIV & " - for Subtraction"


proc initialize()
proc initializeMenu()
proc getValuesFromUser(howManyInts: int) : seq[int]

when isMainModule:
  echo WELCOME_MSG
  initialize()

proc initialize() =
  while isRunning:
    echo "\n"
    initializeMenu()


proc initializeMenu() =
  echo CHOOSE_OPERATION_MSG
  echo OPERATION_EXIT_MSG
  echo OPERATION_ADD_MSG
  echo OPERATION_SUB_MSG
  echo OPERATION_MUL_MSG
  echo OPERATION_DIV_MSG
  
  let desiredOperation = parseInt(readLine(stdin))
  case desiredOperation:
  of OPERATION_ADD:
    let list = getValuesFromUser(2)
    echo list[0] + list[1]
  of OPERATION_SUB:
    let list = getValuesFromUser(2)
    echo list[0] - list[1]
  of OPERATION_MUL:
    let list = getValuesFromUser(2)
    echo list[0] * list[1]
  of OPERATION_DIV:
    let list = getValuesFromUser(2)
    echo list[0] / list[1]
  of OPERATION_EXIT:
    echo BYE_MSG
    isRunning = false
  else:
    echo UNEXPECTED_ERROR_MSG

proc getValuesFromUser(howManyInts: int) : seq[int] =
  var returnList: seq[int] = @[]
  for i in 1..howManyInts:
    echo INPUT_AN_INTEGER_MSG
    returnList.add(parseInt(readLine(stdin)))
  return returnList