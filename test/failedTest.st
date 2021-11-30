// USING Simatic.Ax.Tutorial;

// NAMESPACE Fluidhandling.Test
//     {TestFixture}
//     CLASS Failed_Test_Filling_level
//         VAR PRIVATE
//             v : FillingLevelAnalogValue;                    
            
//         END_VAR
        
//         {Test}
//         METHOD PUBLIC SetFillingLevel_500_and_expect_500
//             v.Level.ReadCyclic(value := LINT#400);
//             AxUnit.Assert.Equal(expected := 500.0, actual := v.GetFillingLevel());
//         END_METHOD
    
//     END_CLASS
// END_NAMESPACE 