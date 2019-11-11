clear

myDir = uigetdir;
if myDir == 0, return, end

MIMO_Random = struct();

myFiles = dir(fullfile(myDir, '*.mat'));
for k = 1:length(myFiles)
    baseFileName = myFiles(k).name;
    fullFileName = fullfile(myDir, baseFileName);
    load(fullFileName);
    
    MIMO_Random.(strcat('u1_',int2str(k))) = u1u2.Data(:,1);
    MIMO_Random.(strcat('u2_',int2str(k))) = u1u2.Data(:,2);
    
    MIMO_Random.(strcat('y1_',int2str(k))) = y1y2.Data(:,1);
    MIMO_Random.(strcat('y2_',int2str(k))) = y1y2.Data(:,2);
    
    try
        MIMO_Random.('y1_Media') = MIMO_Random.('y1_Media') + y1y2.Data(:,1);
    catch ME
        switch ME.identifier
            case 'MATLAB:nonExistentField'
                MIMO_Random.('y1_Media') = 0;
                MIMO_Random.('y1_Media') = MIMO_Random.('y1_Media') + y1y2.Data(:,1);
        end
    end
    
    
    try
        MIMO_Random.('y2_Media') = MIMO_Random.('y2_Media') + y1y2.Data(:,2);
    catch ME
        switch ME.identifier
            case 'MATLAB:nonExistentField'
                MIMO_Random.('y2_Media') = 0;
                MIMO_Random.('y2_Media') = MIMO_Random.('y2_Media') + y1y2.Data(:,2);
        end
    end
    
end

MIMO_Random.('y1_Media') = MIMO_Random.('y1_Media') / k;
MIMO_Random.('y2_Media') = MIMO_Random.('y2_Media') / k;

MIMO_Random.('y1_Media_Sample7s') = MIMO_Random.('y1_Media')(1:28:end);
MIMO_Random.('y2_Media_Sample7s') = MIMO_Random.('y2_Media')(1:28:end);

MIMO_Random.('u1_Sample7s') = MIMO_Random.('u1_1')(1:28:end);
MIMO_Random.('u2_Sample7s') = MIMO_Random.('u2_1')(1:28:end);