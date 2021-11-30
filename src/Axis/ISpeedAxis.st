NAMESPACE Simatic.Ax.Axis
    INTERFACE ISpeedAxis
        
        METHOD  Halt
        END_METHOD

        METHOD MoveVelocity
            VAR_INPUT
                Speed : LREAL;
                Direction : Direction;
            END_VAR
        END_METHOD

    END_INTERFACE

    TYPE
        Direction : 
        (
            FORWARD, 
            REVERSE
        );
    END_TYPE

END_NAMESPACE