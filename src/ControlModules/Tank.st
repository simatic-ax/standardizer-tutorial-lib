NAMESPACE Simatic.Ax.Tutorial
    CLASS Tank
        VAR PUBLIC
            FillingLevel : IFillingLevel;
            CapacityLiters : LREAL;
        END_VAR
        VAR PROTECTED
            
        END_VAR

        /// This method returns the capacity of the tank
        METHOD PUBLIC GetCapacity : LREAL
            GetCapacity := CapacityLiters;
        END_METHOD
        
        METHOD PUBLIC ConnectFillingLevel
            VAR_INPUT
                ifl : IFillingLevel;
            END_VAR
            FillingLevel := ifl;
        END_METHOD

        METHOD PUBLIC GetFillingLevel : LREAL
            IF (FillingLevel <> NULL) THEN
                GetFillingLevel := FillingLevel.GetFillingLevel();
            ELSE
                GetFillingLevel := 0.0;
            END_IF;
        END_METHOD
        METHOD PUBLIC IsFull : BOOL
            IsFull := FillingLevel.GetFillingLevel() >= CapacityLiters - 1.0;
        END_METHOD

        METHOD PUBLIC IsEmpty : BOOL
            IsEmpty := FillingLevel.GetFillingLevel() < 1.0;
        END_METHOD
    END_CLASS
END_NAMESPACE