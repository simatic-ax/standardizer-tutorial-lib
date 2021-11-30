NAMESPACE Simatic.Ax.Tutorial
    INTERFACE IExecutable
        METHOD Execute END_METHOD
        METHOD HasFinished : BOOL END_METHOD
        METHOD GetState : StepState
        END_METHOD
        METHOD SetState
            VAR_INPUT
                state : StepState;
            END_VAR
        END_METHOD
        METHOD GetName : STRING
        END_METHOD
    END_INTERFACE

    TYPE
        StepState : (Idle, Busy, Done, Error) := Idle;
    END_TYPE
END_NAMESPACE