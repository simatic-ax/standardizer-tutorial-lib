NAMESPACE Simatic.Ax.Tutorial
    CLASS SetpointBase IMPLEMENTS ISetpoint
        VAR PUBLIC
            Value : LREAL;
        END_VAR
        VAR PROTECTED
            
        END_VAR
        

        METHOD PUBLIC SetSetpoint
            VAR_INPUT
                setpoint : LREAL;
            END_VAR
            Value := setpoint;
            ;
        END_METHOD

        METHOD PUBLIC GetSetpoint : LREAL
            GetSetpoint := Value;
        END_METHOD
    END_CLASS
END_NAMESPACE