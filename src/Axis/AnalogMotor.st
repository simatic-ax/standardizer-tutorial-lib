USING Siemens.Ax.IO.Output;
NAMESPACE Simatic.Ax.Axis
    CLASS AnalogMotor IMPLEMENTS ISpeedAxis
    
        VAR PUBLIC
            qMotorSpeed : LRealOutput;
        END_VAR

        METHOD PUBLIC Halt
            qMotorSpeed.SetValue(0.0);
        END_METHOD

        METHOD PUBLIC MoveVelocity
            VAR_INPUT
                Speed : LREAL;
                Direction : Direction;
            END_VAR
            IF Direction = Direction#FORWARD THEN
                qMotorSpeed.SetValue(Speed);
            ELSE
                qMotorSpeed.SetValue(-1.0 * Speed);
            END_IF;
            
        END_METHOD
    END_CLASS
    
END_NAMESPACE