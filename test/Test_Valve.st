NAMESPACE Tutorial.Test
    {TestFixture}
    CLASS TestMyValve
        VAR PRIVATE
            v : Simatic.Ax.Tutorial.Valve;
        END_VAR
        
        {Test}
        METHOD PUBLIC Test_Open_valve_and_Expect_IsOpen_True
            v.Open();
            AxUnit.Assert.Equal(actual := v.IsOpen(), expected := TRUE);
        END_METHOD
        
    END_CLASS
END_NAMESPACE 