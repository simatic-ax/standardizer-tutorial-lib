// USING Simatic.Ax.UserAsserts;
// USING Simatic.Ax.Collections;
// USING AxUnit.Assert;

// NAMESPACE Simatic.Ax.ReceipeManager
//     {TestFixture}
//     CLASS TestRunner
//         VAR PRIVATE
//             _runner : Runner;                    
//             _i1 : receipeKetchup;
//             _i2 : ListItem;
//             _i3 : ListItem;
//             iReturn : IListItem;
//         END_VAR
        
//         {Test}
//         METHOD PUBLIC Test_Add_Expect_Item
//             _runner.LoadReceipe(_i1);
//             Equal(RunnerState#Idle = _runner.GetState(), TRUE);
//         END_METHOD

//     END_CLASS
// END_NAMESPACE 
