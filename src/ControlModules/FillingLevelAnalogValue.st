USING Siemens.Ax.IO.Input;
NAMESPACE Simatic.Ax.Tutorial
    CLASS FillingLevelAnalogValue IMPLEMENTS IFillingLevel
        VAR PUBLIC
            Level : LRealInput;
        END_VAR

        METHOD PUBLIC GetFillingLevel : LREAL
            GetFillingLevel := Level.Q();
        END_METHOD
    END_CLASS

END_NAMESPACE
