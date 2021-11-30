USING Siemens.Ax.IO.Input;
NAMESPACE Simatic.Ax.Tutorial    
    
    CLASS ValveFbClosed EXTENDS Solution.Valve IMPLEMENTS IValve

        VAR PUBLIC
            signalFbClosed : IBinSignal;
        END_VAR

        // GetState will be overwritten with new functionality
        METHOD PUBLIC OVERRIDE GetState : ValveState
            IF(signalFbClosed <> NULL) THEN
                IF (signalFbClosed.Q()) THEN 
                    GetState := ValveState#Closed;
                ELSE
                    GetState := ValveState#Open;
                END_IF;
            ELSE;
                GetState := ValveState#HardError;
            END_IF;
        END_METHOD

    END_CLASS
    
END_NAMESPACE