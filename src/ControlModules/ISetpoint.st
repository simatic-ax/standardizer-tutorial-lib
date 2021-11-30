NAMESPACE Simatic.Ax.Tutorial
    INTERFACE ISetPoint
        METHOD SetSetpoint
            VAR_INPUT
                setpoint : LREAL;
            END_VAR
        END_METHOD
        
        METHOD GetSetpoint : LREAL
        END_METHOD
        
    END_INTERFACE
    
END_NAMESPACE