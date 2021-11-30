USING Siemens.Ax.Collections;
NAMESPACE Simatic.Ax.Tutorial

    /// <summary>
    /// Class for running an instruction set
    /// </summary>
    CLASS PUBLIC Runner

        VAR PRIVATE
            _receipe : IReceipe;
            _currentListItem : IListItem;

            _currentStep : IExecutable;
            _state : RunnerState;
            _currentStateName : STRING;
        END_VAR

        METHOD PUBLIC LoadReceipe
            VAR_INPUT
                receipe : IReceipe;
            END_VAR
            
            _receipe := receipe;
            IF (_receipe = NULL) THEN
                _state := RunnerState#NoReceipeLoaded;
                RETURN;
            END_IF;

            _receipe.Init();
            _currentListItem := receipe.GetSteps().Tail();
            _currentStep ?= _currentListItem;
            _currentStateName := _currentStep.GetName();
            IF (_currentStep <> NULL) THEN
                _state := RunnerState#Idle;
            ELSE 
                _state := RunnerState#NoReceipeLoaded;
            END_IF;
        END_METHOD

        /// <summary>
        /// Triggers the instructions one after each other
        /// </summary>
        /// <RETURNs>Void</RETURNs>
        METHOD PUBLIC RunCyclic
            
            IF _currentStep = NULL THEN
                _state := RunnerState#Error;
                RETURN;
            END_IF;

            IF _currentStep.HasFinished() THEN
                _currentStep.SetState(StepState#Idle);
                // Get next element from list and check if it's of type IReceipeStep
                _currentListItem := _currentListItem.NextItem();
               
                _currentStep ?= _currentListItem;
                _currentStep ?= _currentStep;
                IF (_currentStep <> NULL) THEN 
                    _currentStep.SetState(state := StepState#Busy);
                    _currentStateName := _currentStep.GetName();
                    _state := RunnerState#StepSwitchover;
                ELSE
                    _state := RunnerState#Finished;
                END_IF;
            ELSE
                _state := RunnerState#Running;
                _currentStep.Execute();
            END_IF;
        END_METHOD

        METHOD PUBLIC GetState : RunnerState
            GetState := _state;
        END_METHOD
    END_CLASS
    TYPE
        RunnerState : (Running, Idle, StepSwitchover, Finished, NoReceipeLoaded, Error) := NoReceipeLoaded;
    END_TYPE

END_NAMESPACE
