function [mass, lowerIntegrationLimit, upperIntegrationLimit, Names] = mz_PeakTable_Master(out,instrument)
if ~nargin
    fcn=@mz_PeakTable_MR1000;
%     [mass, lowerIntegrationLimit, upperIntegrationLimit, Names] = mz_PeakTable_MR1000;
%     return
else
    if nargin<2
        instrument=out.instrument;
    end
    if strcmp(instrument,'2R')
        fcn=@mz_PeakTable_MR6000;

    %     [mass, lowerIntegrationLimit, upperIntegrationLimit, Names] = mz_PeakTable_MR6000;

    elseif strcmp(instrument,'R')
        fcn=@mz_PeakTable_MR3000;

    %     [mass, lowerIntegrationLimit, upperIntegrationLimit, Names] = mz_PeakTable_MR3000;

    elseif strcmp(instrument,'S2')
        fcn=@mz_PeakTable_MR1000;

    %     [mass, lowerIntegrationLimit, upperIntegrationLimit, Names] = mz_PeakTable_MR1000;

    end
end
if nargout==1
    mass = fcn();
elseif nargout==2
    [mass, lowerIntegrationLimit] = fcn();
elseif nargout==3
    [mass, lowerIntegrationLimit, upperIntegrationLimit] = fcn();
elseif nargout==4
    [mass, lowerIntegrationLimit, upperIntegrationLimit, Names] = fcn();
end