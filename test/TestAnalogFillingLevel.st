USING Simatic.Ax.Tutorial;
USING Siemens.Ax.IO.Input;
USING Simatic.Ax.UserAsserts;

NAMESPACE Tutorial.Test
    {TestFixture}
    CLASS Valve_AnalogFillingLevel
        VAR PRIVATE
            v : FillingLevelAnalogValue;                    
            
        END_VAR
        
        {Test}
        METHOD PUBLIC SetFillingLevel_500_and_expect_500
            v.Level.ReadCyclic(value := LREAL#500.0);
            AxUnit.Assert.Equal(expected := 500.0, actual := v.GetFillingLevel());
        END_METHOD
    END_CLASS
END_NAMESPACE 