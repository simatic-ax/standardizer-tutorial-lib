USING  Simatic.Ax.Collections;

NAMESPACE Simatic.Ax.Tutorial
    CLASS ABSTRACT ReceipeStep EXTENDS ListItem IMPLEMENTS IExecutable
        VAR PUBLIC
            Name : STRING := 'default value';
        END_VAR

        VAR PROTECTED
            _state : StepState;
        END_VAR

        METHOD PUBLIC HasFinished : BOOL 
            HasFinished := _state = StepState#Done;
        END_METHOD

        METHOD PUBLIC ABSTRACT Execute END_METHOD    
    
        METHOD PUBLIC GetState : StepState
            GetState := _state;
        END_METHOD

        METHOD PUBLIC SetState
            VAR_INPUT
                state : StepState;
            END_VAR
            _state := state;
        END_METHOD
    
        METHOD PUBLIC GetName : STRING
            GetName := Name;
        END_METHOD

    END_CLASS   
END_NAMESPACE
