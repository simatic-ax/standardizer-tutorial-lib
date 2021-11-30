NAMESPACE Simatic.Ax.Tutorial

    FUNCTION Add
        VAR_INPUT
            v1 : INT;
            v2 : INT;
        END_VAR
        VAR_OUTPUT
            result : DINT;
        END_VAR
        VAR_TEMP
        END_VAR
        result := v1 + v2;
        ;
    END_FUNCTION
END_NAMESPACE
