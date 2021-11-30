USING Simatic.Ax.Tutorial;
USING Simatic.Ax;

NAMESPACE Tutorial.Test

    CLASS TestState EXTENDS ReceipeStep
        VAR PUBLIC
            
        END_VAR
        VAR PROTECTED
            
        END_VAR
    
        METHOD PUBLIC OVERRIDE Execute
            ;
        END_METHOD
END_CLASS

    {TestFixture}
    CLASS TestStepDrainMixer
        VAR PRIVATE
            _step1 : TestState := (Name := 'Drain Mixer');       
            _iStep : IExecutable;            
            _str : STRING;
        END_VAR
        
        {Test}
        METHOD PUBLIC Test_GetName_Expect_Drain_Mixer
            _iStep := _step1;
            _str :=  _iStep.GetName();
            AxUnit.Assert.Equal(expected := 'Drain Mixer', actual := _str);
        END_METHOD


    END_CLASS
END_NAMESPACE 
