USING Axunit;
USING Simatic.Ax.Tutorial;

NAMESPACE Siemens.Tiax.Tests

    {TestFixture}
    CLASS Test_Add

        {Test}
        METHOD PUBLIC Test_values
            VAR_TEMP
                result : DINT;
            END_VAR
            Add(v1 := 1, v2 := 1 , result => result);
            Axunit.Assert.Equal(2, result);                   

            Add(v1 := -1, v2 := -1 , result => result);
            Axunit.Assert.Equal(DINT#-2, result);            

            Add(v1 := 1, v2 := -1 , result => result);
            Axunit.Assert.Equal(DINT#0, result);            

            Add(v1 := -1, v2 := 1 , result => result);
            Axunit.Assert.Equal(DINT#0, result);            
        END_METHOD
    END_CLASS    

END_NAMESPACE