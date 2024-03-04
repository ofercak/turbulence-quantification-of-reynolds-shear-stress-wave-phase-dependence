% Portland State University
% Fixed Bottom Offshore PIV Data
% 3/3/2023

clc; clear; close all;

% AVAILABLE FIELD NAMES
% u     :Phase Averaged Streamwise Velocity                 [u]
% v     :Phase Averaged Wall-Normal Velocity                [v]
% uu    :Phase Averaged Reynolds Streamwise-Normal Stress   [uu]
% uv    :Phase Averaged Reynolds Shear Stress               [uv]
% vv    :Phase Averaged Reynolds Wall-Normal Stress         [vv]
% wake  :Turbine Wake Center Mean                           [Y/D]
% wave  :Wave Profile                                       [Y/D]


%_INPUT____________________________________________________________________
% Input Data Folder Path
input_path  = '';

% Input Experimental Dataset    [e.g. 'V25_FR125_P1.mat']
data_name   = 'V25_FR125_P1.mat';

% Input Data to View            [Field Name from Above]
field_name  = 'u';
%__________________________________________________________________________


% Load Data
data        = load(fullfile(input_path, data_name));
wake        = data.wake;
wave        = data.wave;
x           = data.xy.x;
y           = data.xy.y;

% Parse Contour Data to Display
fields      = fieldnames(data);
field_idx   = find(contains(fields, field_name));
name        = fields{field_idx};
contours    = data.(name);

% Display Figure
if matches(field_name, 'wake') || matches(field_name, 'wave')
    figure()
    hold on
    plot(x, wake, Color='k', LineWidth=1.5)
    plot(x, wave, Color='b', LineWidth=1.5)
    title('Turbine Wake Center & Wave Profile')
    xlabel('X/D')
    ylabel('Y/D')
    legend('wave', 'wake')
    legend('boxoff')
    grid on
    ylim([-0.5, 1.5])

else
    figure()
    hold on
    contourf(x, y, contours, 500, LineStyle="none")
    plot(x, wake, Color='k', LineStyle='--', LineWidth=1.5)
    plot(x, wave, Color='b', LineStyle='--', LineWidth=1.5)
    title(name)
    xlabel('X/D')
    ylabel('Y/D')
    colorbar
    axis equal
end
