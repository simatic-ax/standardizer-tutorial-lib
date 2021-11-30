NAMESPACE Simatic.Ax.Tutorial
    INTERFACE IHeater EXTENDS ISetPoint
        
        METHOD GetTemperature : LREAL
        END_METHOD
        
        METHOD Enable
        END_METHOD
        
                
        METHOD IsEnabled : BOOL
        END_METHOD
        

        METHOD Disable
        END_METHOD

    END_INTERFACE
    
END_NAMESPACE