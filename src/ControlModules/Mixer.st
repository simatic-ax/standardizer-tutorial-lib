USING Simatic.Ax.Axis;
USING Simatic.Ax.Axis;
NAMESPACE Simatic.Ax.Tutorial
    CLASS Mixer
        VAR PRIVATE
            _motor : ISpeedAxis;
            _setpointSpeed : LREAL := 950.0;
            _direction : Direction := Direction#FORWARD;
        END_VAR
        
        METHOD PUBLIC ConnectMotor
            VAR_INPUT
                MotorInstance : ISpeedAxis;
            END_VAR
            _motor := MotorInstance;
        END_METHOD
        
        METHOD PUBLIC Enable 
            _motor.MoveVelocity(Speed := _setpointSpeed, Direction := _direction);
        END_METHOD

        METHOD PUBLIC Disable
            _motor.Halt();
        END_METHOD

    END_CLASS
    
END_NAMESPACE