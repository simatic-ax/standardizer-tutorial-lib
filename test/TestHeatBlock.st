USING Simatic.Ax.Tutorial;

NAMESPACE Tutorial.Test
    {TestFixture}
    CLASS TestHeatBlock
        VAR PRIVATE
            _heatBlock : HeatBlock := (TemperatureSp := (Value := 80.0));                    
        END_VAR
        
        {Test}
        METHOD PUBLIC Test_GetSetpoint_Expect_80
            AxUnit.Assert.Equal(expected := 80.0, actual := _heatBlock.GetSetpoint());
        END_METHOD

        {Test}
        METHOD PUBLIC Test_SetSetpoint_120_And_Expect_120
            _heatBlock.SetSetpoint(120.0);
            AxUnit.Assert.Equal(expected := 120.0, actual := _heatBlock.GetSetpoint());
 
        END_METHOD

        {Test}
        METHOD PUBLIC Enable_Heatblock_expect_enabled_true
            AxUnit.Assert.Equal(expected := FALSE, actual := _heatBlock.IsEnabled());
            _heatBlock.Enable();
            AxUnit.Assert.Equal(expected := TRUE, actual := _heatBlock.IsEnabled());
            _heatBlock.Disable();
            AxUnit.Assert.Equal(expected := FALSE, actual := _heatBlock.IsEnabled());
        END_METHOD

    END_CLASS
END_NAMESPACE 
