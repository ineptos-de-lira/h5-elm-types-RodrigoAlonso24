module Helper exposing (..)


type GradeStatus
    = Approved
    | Failed
    | Pending


gradeValue : Float -> GradeStatus
gradeValue grade =
    if grade < 0 then
        Pending

    else if grade < 7 then
        Failed

    else
        Approved


categoricalGrade : List Float -> List GradeStatus
categoricalGrade grades =
    List.map gradeValue grades


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


airPlaneStatus : AirplaneStatus -> String
airPlaneStatus statu =
    case statu of
        Cancelled ->
            "Pedir reembolso"

        Delayed ->
            "Esperar"

        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"


airPlaneScheduleAction : List AirplaneStatus -> List String
airPlaneScheduleAction status =
    List.map airPlaneStatus status
