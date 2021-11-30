USING Axunit;
USING Simatic.Ax.Tutorial;

NAMESPACE Tutorial.Test

    {TestFixture}
    CLASS Test_Add

        {Test(i1 := 1, i2 := 1, res := DINT#2)}
        // {Test(i1 := 32000, i2 := 32000, res := DINT#64000)}
        {Test(i1 := -1, i2 := -1, res := DINT#-2)}
        {Test(i1 := -1, i2 := 1, res := DINT#0)}
        {Test(i1 := 1, i2 := -1, res := DINT#0)}
        METHOD PUBLIC Test_values
            VAR_INPUT
                i1 : INT;
                i2 : INT;
                res : DINT;
            END_VAR
            VAR_TEMP
                result : DINT;
            END_VAR
            Add(v1 := i1, v2 := i2 , result => result);
            Axunit.Assert.Equal(res, result);            
        END_METHOD
    END_CLASS    

END_NAMESPACE