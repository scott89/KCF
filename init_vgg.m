
feature_solver_def_file = 'feature_solver.prototxt';
model_file = 'VGG_ILSVRC_16_layers.caffemodel';
caffe('init_solver', feature_solver_def_file, model_file);
caffe('set_mode_gpu');

roi_size = 368; %380;

mean_pix = [103.939, 116.779, 123.68]; 
