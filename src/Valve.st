USING Simatic.Ax.IO.Output;

NAMESPACE Simatic.Ax.Tutorial
    CLASS Valve IMPLEMENTS IValve
        
        VAR PRIVATE
            _valveState : BOOL;
        END_VAR

        VAR PUBLIC
            qValve : IBinOutput;
        END_VAR
    
        METHOD PUBLIC SetRefToDQ
            VAR_INPUT
                dq : IBinOutput;
            END_VAR
            qValve := dq;
        END_METHOD

        METHOD PUBLIC IsOpen : BOOL
             IsOpen := _valveState;
        END_METHOD

        METHOD PUBLIC Close
            
            IF (qValve <> NULL) THEN
                qValve.SetOff();
            END_IF;
            _valveState := false;
        END_METHOD

        METHOD PUBLIC Open
            IF (qValve <> NULL) THEN
                qValve.SetOn();
            END_IF;
            _valveState := true;
        END_METHOD

        METHOD PUBLIC GetState : ValveState
            IF (_valveState) THEN 
                GetState := ValveState#Open;
            ELSE
                GetState := ValveState#Closed;
            END_IF;
        END_METHOD
    END_CLASS
    
END_NAMESPACE