USING Simatic.Ax.Collections;

NAMESPACE Simatic.Ax.Tutorial
    CLASS ABSTRACT Receipe EXTENDS LinkedList IMPLEMENTS IReceipe
   
        // METHOD PUBLIC ABSTRACT Run : IStep END_METHOD

        METHOD PUBLIC ABSTRACT Init END_METHOD
    
        METHOD PUBLIC GetSteps : ILinkedList
            GetSteps := THIS;
        END_METHOD
END_CLASS
END_NAMESPACE

