USING Simatic.Ax.Tutorial;
USING Simatic.Ax.IO.Output;
USING Simatic.Ax.UserAsserts;

NAMESPACE Tutorial.Test
    {TestFixture}
    CLASS Valve_Test_Class
        VAR PRIVATE
            v : Solution.Valve;                    
            _qOpen : BinOutput;
        END_VAR
        
        {Test}
        METHOD PUBLIC Test_ctrlOpen_default_value_expect_false
            v.SetRefToDQ(_qOpen);
            AxUnit.Assert.Equal(expected := FALSE, actual := _qOpen.IsOn());
        END_METHOD

        {Test}
        METHOD PUBLIC Test_ValveClose_default_value_expect_false
            v.SetRefToDQ(_qOpen);
            v.Open();  // open it before
            v.Close();
            AxUnit.Assert.Equal(expected := FALSE, actual :=  _qOpen.IsOn());
        END_METHOD

        {Test}
        METHOD PUBLIC Test_ValveOpen_and_expect_ctrlOpen_true
            v.SetRefToDQ(_qOpen);
            v.Open();
            AxUnit.Assert.Equal(expected := TRUE, actual :=  _qOpen.IsOn());
            ;
        END_METHOD

        {Test}
        METHOD PUBLIC Test_GetStateOf_ClosedValve
            v.SetRefToDQ(_qOpen);
            AxUnit.Assert.Equal(expected := TRUE, actual := Equal(ValveState#Closed, v.GetState()));
        END_METHOD

        {Test}
        METHOD PUBLIC Test_GetStateOf_OpenedValve
            v.SetRefToDQ(_qOpen);
            v.Open();
            AxUnit.Assert.Equal(expected := TRUE, actual := Equal(ValveState#Open, v.GetState()));
        END_METHOD
    
    END_CLASS
END_NAMESPACE 