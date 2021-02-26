function [accuracy] = treeBagger(models)
%     numFiles = size(models.Files,1);
%     moreImportant = repmat({''},70,numFiles); % Variable to store the more important features
% for first = 1:numFiles
%     clearvars -except first devices models numFiles moreImportant accuracy
%     clc
    B = readtable(models.Files{first,1});
    [~,descr,~] = fileparts(models.Files{first,1});
    name = replace(descr,'_',' ');
    X = table2array(B(:,4:end));
    Y = table2array(B(:,2));
   
    % Train an ensemble of bagged classification trees using the entire data
    % set. Specify 50 weak learners. Store which observations are out of bag
    % for each tree.
    Mdl = TreeBagger(50,X,Y,'OOBPredictorImportance','On',...
         'Method','classification');

    % % Mdl is a TreeBagger ensemble.
    % % Mdl.Trees stores a 50-by-1 cell vector of the trained classification trees
    % % (CompactClassificationTree model objects) that compose the ensemble.
    % % Plot a graph of the first trained classification tree.
    % view(Mdl.Trees{1},'Mode','graph')

    % By default, TreeBagger grows deep trees. 
    % Mdl.OOBIndices stores the out-of-bag indices as a matrix of logical values. 
    % Plot the out-of-bag error over the number of grown classification trees.
    % The out-of-bag error decreases with the number of grown trees.
    figure(2*first-1);
    oobErrorBaggedEnsemble = oobError(Mdl);
    errorPlot = plot(oobErrorBaggedEnsemble);
    xlabel('Number of grown trees');
    ylabel('Out-of-bag classification error');
    lgd = legend(errorPlot,'Phone Model','Location','ne');
    title(lgd,name);
%     eval(['print -dpng ' descr '_oob'])

    % Bar graph of the important features (higher values corresponds to more 
    % important features.
    figure(2*first);
    imp = Mdl.OOBPermutedPredictorDeltaError;
    
    % displaying the graph in decresing importance
    [impValue,I] = sort(imp,'descend');
    f = B.Properties.VariableNames';
    g = f(4:end,:);
    impLabels = g(I);
    barImportant = bar(impValue);
    title('Out-of-Bag Permuted Predictor Importance Estimates');
    ylabel('Predictor Importance Estimates');
    xlabel('Predictors');
    lgd = legend(barImportant,'Phone Model Features','Location','ne');
    title(lgd,name);
    h = gca;
    h.XTick = (1:size(X,2));    
    h.XTickLabel = impLabels;
    h.XTickLabelRotation = 90;
    h.TickLabelInterpreter = 'none';
    set(gcf,'units','normalized','outerposition',[0 0 1 1])
%     eval(['print -dpng ' descr])
    
    % To label out-of-bag observations, pass Mdl to oobPredict.
    % Predict out-of-bag response of ensemble
    Yfit = oobPredict(Mdl);
    
    % Features with importance more or equal threshold
    threshold = 0.4;
    keep = impLabels(impValue >= threshold);    
    moreImportant{1,first} = name;
    for i = 1:size(keep)
        moreImportant{i+1,first} = keep{i};
    end
    
    % Measuring accuracy
    accuracy(first) = 100*(1-min(oobErrorBaggedEnsemble));
end
end