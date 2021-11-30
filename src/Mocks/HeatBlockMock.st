USING Simatic.Ax.Tutorial;

NAMESPACE Simatic.Ax.Mocks
    CLASS HeatBlock
        VAR PUBLIC
            HeatBlockInst : IHeater;
            P : LREAL := 0.1;
        END_VAR
        VAR PROTECTED
            _actValue : LREAL;
            _spValue : LREAL;
        END_VAR
        METHOD PROTECTED CalcValue
            VAR_TEMP
                deltaT : LREAL;
                actSp : LREAL;
            END_VAR
            
            IF (HeatBlockInst.IsEnabled()) THEN
                actSp := HeatBlockInst.GetSetpoint();
            ELSE 
                actSp := 22.0;
            END_IF;
            _spValue := actSp;
            deltaT := actSp - _actValue;
            _actValue := _actValue + deltaT * P;

        END_METHOD

        METHOD PUBLIC RunCyclic
            VAR_OUTPUT
                Value : LREAL;
            END_VAR
            THIS.CalcValue();
            Value := _actValue;

        END_METHOD
    END_CLASS
END_NAMESPACE