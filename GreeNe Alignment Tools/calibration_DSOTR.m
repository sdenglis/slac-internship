motorPV  = 'MOTR:LI20:MC09:S7:CH4:MOTOR';
cameraPV = 'CAMR:LI20:105';

startVal = -22.8;
endVal   = -23.4;

vals   = startVal:-0.1:endVal;
nSteps = numel(vals);

data = profmon_grab(cameraPV);

xPixels = data.nCol;
yPixels = data.nRow;

shotsPerStep = 10;

imageArray   = zeros(yPixels, xPixels, shotsPerStep, nSteps);

for i=1:nSteps
    lcaPut(motorPV, vals(i));
    pause(1);
    
    for j=1:shotsPerStep
        data = profmon_grab(cameraPV);
        imageArray(:,:,j,i) = data.img;
        pause(0.1);
    end
end

%%

motorPV  = 'MOTR:LI20:MC09:S7:CH3:MOTOR';
cameraPV = 'CAMR:LI20:105';

startVal = 11.5;
endVal   = 12.1;

vals   = startVal:0.1:endVal;
nSteps = numel(vals);

data = profmon_grab(cameraPV);

xPixels = data.nCol;
yPixels = data.nRow;

shotsPerStep = 10;

imageArray   = zeros(yPixels, xPixels, shotsPerStep, nSteps);

for i=1:nSteps
    lcaPut(motorPV, vals(i));
    pause(1);
    
    for j=1:shotsPerStep
        data = profmon_grab(cameraPV);
        imageArray(:,:,j,i) = data.img;
        pause(0.1);
    end
end

%%

motorPV  = 'MOTR:LI20:MC09:S7:CH2:MOTOR';
cameraPV = 'CAMR:LI20:105';

startVal = -33.4;
endVal   = -32.5;

vals   = startVal:0.1:endVal;
nSteps = numel(vals);

data = profmon_grab(cameraPV);

xPixels = data.nCol;
yPixels = data.nRow;

shotsPerStep = 10;

imageArray   = zeros(yPixels, xPixels, shotsPerStep, nSteps);

for i=1:nSteps
    lcaPut(motorPV, vals(i));
    pause(1);
    
    for j=1:shotsPerStep
        data = profmon_grab(cameraPV);
        imageArray(:,:,j,i) = data.img;
        pause(0.1);
    end
end

%%

motorPV  = 'MOTR:LI20:MC09:S7:CH1:MOTOR';
cameraPV = 'CAMR:LI20:105';

startVal = -86.3;
endVal   = -87.1;

vals   = startVal:-0.1:endVal;
nSteps = numel(vals);

data = profmon_grab(cameraPV);

xPixels = data.nCol;
yPixels = data.nRow;

shotsPerStep = 10;

imageArray   = zeros(yPixels, xPixels, shotsPerStep, nSteps);

for i=1:nSteps
    lcaPut(motorPV, vals(i));
    pause(1);
    
    for j=1:shotsPerStep
        data = profmon_grab(cameraPV);
        imageArray(:,:,j,i) = data.img;
        pause(0.1);
    end
end