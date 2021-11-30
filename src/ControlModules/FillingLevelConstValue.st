NAMESPACE Simatic.Ax.Tutorial
    CLASS FillingLevelConstant500Liter IMPLEMENTS IFillingLevel
        VAR PUBLIC
            Level : LREAL := 500.0;
        END_VAR
        VAR PROTECTED
            
        END_VAR
        
    
        METHOD PUBLIC GetFillingLevel : LREAL
            GetFillingLevel := Level;
        END_METHOD
    END_CLASS

END_NAMESPACE