% INITIALIZEOPENSIMMODEL Create barebone of OpenSim model adding name,
% gravity and credits for the automatic models.
%
%   osimModel = initializeOpenSimModel(aModelNameString)
%
% Inputs:
%   aModelNameString - a string that will be set as name of the automatic
%       model.
%
% Outputs:
%   osimModel - an OpenSim model to use as basis for the automatic
%       modelling. It has only a name, includes gravity and has credits.
%
% See also CREATELOWERLIMBJOINTS, ADDBODYFROMTRIGEOMOBJ, 
% ADDBODIESFROMTRIGEOMBONESET.
%
%-------------------------------------------------------------------------%
%  Author:   Luca Modenese, 2020
%  Copyright 2020 Luca Modenese
%-------------------------------------------------------------------------%
function osimModel = initializeOpenSimModel(aModelNameString)

% add OpenSim libraries
import org.opensim.modeling.*

disp('-------------------------------------')
disp('Initializing automatic OpenSim model')

% create the model
osimModel = Model();

% set gravity
osimModel.setGravity(Vec3(0, -9.8081, 0));

% set model name
osimModel.setName(aModelNameString);

% set credits
osimModel.set_credits('Luca Modenese, Jean-Baptist Renault 2020 - Toolbox to generate MSK models automatically.')

end