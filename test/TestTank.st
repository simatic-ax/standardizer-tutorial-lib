USING Simatic.Ax.Tutorial;

NAMESPACE Tutorial.Test
    {TestFixture}
    CLASS TestTank
        VAR PRIVATE
            _tank : Tank := (CapacityLiters := 500.0);                    
            _fl : FillingLevelConstant500Liter;
        END_VAR
        
        {Test}
        METHOD PUBLIC Test_GetCapacity_and_expect_500
            _tank.ConnectFillingLevel(_fl);
            AxUnit.Assert.Equal(expected := 500.0, actual := _tank.GetCapacity());
        END_METHOD

        {Test}
        METHOD PUBLIC Test_IsFull_and_expect_true
            _tank.ConnectFillingLevel(_fl);
            AxUnit.Assert.Equal(expected := TRUE, actual := _tank.IsFull());
 
        END_METHOD

        {Test}
        METHOD PUBLIC Test_GetFillingLevel_andExpect_500
            _tank.ConnectFillingLevel(_fl);
            AxUnit.Assert.Equal(expected := 500.0, actual := _tank.GetFillingLevel());
        END_METHOD
    END_CLASS
END_NAMESPACE 
