USING Simatic.Ax.Tutorial;

NAMESPACE Simatic.Ax.Mocks
    CLASS Fillinglevel
        VAR PUBLIC
            InletValve1 : IValve;
            OutletValve1 : IValve;
            InletValve2 : IValve;
            OutletValve2 : IValve;
            Increment : LREAL := 20.0; // liter per second
        END_VAR
        VAR PROTECTED
            _actValue : LREAL;
        END_VAR

        METHOD PROTECTED CalcValue
            IF (InletValve1 <> NULL) THEN
                IF (InletValve1.GetState() = ValveState#Open) THEN 
                    _actValue := _actValue + Increment;
                END_IF;
            END_IF;
            IF (InletValve2 <> NULL) THEN
                IF (InletValve2.GetState() = ValveState#Open) THEN 
                    _actValue := _actValue + Increment;
                END_IF;
            END_IF;
            IF (OutletValve1 <> NULL) THEN
                IF (OutletValve1.GetState() = ValveState#Open) THEN
                    _actValue := _actValue - Increment;
                END_IF;
            END_IF;
            IF (OutletValve2 <> NULL) THEN
                IF (OutletValve2.GetState() = ValveState#Open) THEN
                    _actValue := _actValue - Increment;
                END_IF;
            END_IF;
            IF (_actValue <= 0.0) THEN 
                _actValue := 0.0;
            END_IF;
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