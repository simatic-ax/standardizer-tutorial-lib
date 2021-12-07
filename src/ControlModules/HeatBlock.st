USING Simatic.Ax.IO.Input;

NAMESPACE Simatic.Ax.Tutorial
    CLASS HeatBlock IMPLEMENTS IHeater
        VAR PUBLIC
            ActTemperature : LRealInput;
            TemperatureSp : SetpointBase;
        END_VAR
        VAR PROTECTED
            _isEnabled : BOOL;
            
        END_VAR
        
        METHOD PUBLIC Enable
            _isEnabled := TRUE;
        END_METHOD

        METHOD PUBLIC IsEnabled : BOOL
            IsEnabled := _isEnabled;
        END_METHOD

        METHOD PUBLIC Disable
            _isEnabled := FALSE;
        END_METHOD

        METHOD PUBLIC GetTemperature : LREAL
            GetTemperature := ActTemperature.Q();
        END_METHOD

        METHOD PUBLIC SetSetpoint
            VAR_INPUT
                setpoint : LREAL;
            END_VAR
            TemperatureSp.SetSetpoint(setpoint);
            ;
        END_METHOD

        METHOD PUBLIC GetSetpoint : LREAL
            GetSetpoint := TemperatureSp.GetSetpoint();
        END_METHOD
END_CLASS
END_NAMESPACE