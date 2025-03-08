USE eduai;

-- Insert Machine Learning Questions

-- Easy Questions (1-20)
INSERT INTO quizzes (topic, difficulty, question, options, answer) VALUES
('Machine Learning', 1, 'What is the primary goal of machine learning?', '["To build systems that can learn from data", "To write algorithms manually", "To replace human intelligence", "To create databases"]', 'To build systems that can learn from data'),
('Machine Learning', 1, 'Which of the following is a supervised learning algorithm?', '["K-Means", "Linear Regression", "DBSCAN", "PCA"]', 'Linear Regression'),
('Machine Learning', 1, 'What is overfitting in machine learning?', '["When a model performs well on training data but poorly on test data", "When a model is too simple", "When a model has too few features", "When a model is trained for too long"]', 'When a model performs well on training data but poorly on test data'),
('Machine Learning', 1, 'What is the purpose of a validation set?', '["To evaluate the model during training", "To test the final model", "To train the model", "To store metadata"]', 'To evaluate the model during training'),
('Machine Learning', 1, 'Which of the following is a classification algorithm?', '["Linear Regression", "Logistic Regression", "K-Means", "PCA"]', 'Logistic Regression'),
('Machine Learning', 1, 'What is the role of a cost function in machine learning?', '["To measure the performance of a model", "To store data", "To visualize data", "To preprocess data"]', 'To measure the performance of a model'),
('Machine Learning', 1, 'What is the output of a logistic regression model?', '["Probability", "Class label", "Continuous value", "None of the above"]', 'Probability'),
('Machine Learning', 1, 'What is the main advantage of using decision trees?', '["Easy to interpret", "High accuracy", "Works well with large datasets", "Requires no hyperparameters"]', 'Easy to interpret'),
('Machine Learning', 1, 'What is the purpose of feature scaling?', '["To normalize the range of features", "To remove features", "To add new features", "To visualize data"]', 'To normalize the range of features'),
('Machine Learning', 1, 'Which of the following is an example of unsupervised learning?', '["K-Means", "Linear Regression", "Logistic Regression", "Decision Trees"]', 'K-Means'),
('Machine Learning', 1, 'What is the main purpose of cross-validation?', '["To assess model performance", "To train the model", "To preprocess data", "To visualize data"]', 'To assess model performance'),
('Machine Learning', 1, 'What is the difference between classification and regression?', '["Classification predicts categories, regression predicts continuous values", "Classification predicts continuous values, regression predicts categories", "Both predict categories", "Both predict continuous values"]', 'Classification predicts categories, regression predicts continuous values'),
('Machine Learning', 1, 'What is the role of a hyperparameter in machine learning?', '["To control the learning process", "To store data", "To visualize data", "To preprocess data"]', 'To control the learning process'),
('Machine Learning', 1, 'What is the purpose of regularization in machine learning?', '["To prevent overfitting", "To increase model complexity", "To reduce training time", "To add more features"]', 'To prevent overfitting'),
('Machine Learning', 1, 'What is the main advantage of using ensemble methods?', '["Improved accuracy", "Faster training", "Simpler models", "No need for hyperparameters"]', 'Improved accuracy'),
('Machine Learning', 1, 'What is the purpose of a confusion matrix?', '["To evaluate classification models", "To store data", "To visualize data", "To preprocess data"]', 'To evaluate classification models'),
('Machine Learning', 1, 'What is the main disadvantage of using k-nearest neighbors (KNN)?', '["Computationally expensive for large datasets", "Low accuracy", "Hard to interpret", "Requires no hyperparameters"]', 'Computationally expensive for large datasets'),
('Machine Learning', 1, 'What is the purpose of a learning rate in gradient descent?', '["To control the step size during optimization", "To store data", "To visualize data", "To preprocess data"]', 'To control the step size during optimization'),
('Machine Learning', 1, 'What is the main advantage of using support vector machines (SVM)?', '["Effective in high-dimensional spaces", "Low accuracy", "Hard to interpret", "Requires no hyperparameters"]', 'Effective in high-dimensional spaces'),
('Machine Learning', 1, 'What is the purpose of a bias term in linear regression?', '["To allow the model to have an intercept", "To store data", "To visualize data", "To preprocess data"]', 'To allow the model to have an intercept');

-- Medium Questions (21-40)
INSERT INTO quizzes (topic, difficulty, question, options, answer) VALUES
('Machine Learning', 2, 'What is the difference between bagging and boosting?', '["Bagging builds models in parallel, boosting builds models sequentially", "Bagging builds models sequentially, boosting builds models in parallel", "Both build models in parallel", "Both build models sequentially"]', 'Bagging builds models in parallel, boosting builds models sequentially'),
('Machine Learning', 2, 'What is the purpose of a kernel in SVM?', '["To transform data into a higher-dimensional space", "To store data", "To visualize data", "To preprocess data"]', 'To transform data into a higher-dimensional space'),
('Machine Learning', 2, 'What is the main disadvantage of using neural networks?', '["Requires large amounts of data", "Low accuracy", "Hard to interpret", "Requires no hyperparameters"]', 'Requires large amounts of data'),
('Machine Learning', 2, 'What is the purpose of dropout in neural networks?', '["To prevent overfitting", "To increase model complexity", "To reduce training time", "To add more features"]', 'To prevent overfitting'),
('Machine Learning', 2, 'What is the main advantage of using random forests?', '["Reduces overfitting", "Faster training", "Simpler models", "No need for hyperparameters"]', 'Reduces overfitting'),
('Machine Learning', 2, 'What is the purpose of a gradient in gradient descent?', '["To indicate the direction of steepest ascent", "To store data", "To visualize data", "To preprocess data"]', 'To indicate the direction of steepest ascent'),
('Machine Learning', 2, 'What is the main disadvantage of using decision trees?', '["Prone to overfitting", "Low accuracy", "Hard to interpret", "Requires no hyperparameters"]', 'Prone to overfitting'),
('Machine Learning', 2, 'What is the purpose of a learning curve?', '["To diagnose model performance", "To store data", "To visualize data", "To preprocess data"]', 'To diagnose model performance'),
('Machine Learning', 2, 'What is the main advantage of using PCA?', '["Reduces dimensionality", "Increases accuracy", "Simplifies models", "Requires no hyperparameters"]', 'Reduces dimensionality'),
('Machine Learning', 2, 'What is the purpose of a ROC curve?', '["To evaluate classification models", "To store data", "To visualize data", "To preprocess data"]', 'To evaluate classification models'),
('Machine Learning', 2, 'What is the main disadvantage of using logistic regression?', '["Assumes linear decision boundary", "Low accuracy", "Hard to interpret", "Requires no hyperparameters"]', 'Assumes linear decision boundary'),
('Machine Learning', 2, 'What is the purpose of a confusion matrix?', '["To evaluate classification models", "To store data", "To visualize data", "To preprocess data"]', 'To evaluate classification models'),
('Machine Learning', 2, 'What is the main advantage of using gradient boosting?', '["High accuracy", "Faster training", "Simpler models", "No need for hyperparameters"]', 'High accuracy'),
('Machine Learning', 2, 'What is the purpose of a learning rate in gradient descent?', '["To control the step size during optimization", "To store data", "To visualize data", "To preprocess data"]', 'To control the step size during optimization'),
('Machine Learning', 2, 'What is the main disadvantage of using k-nearest neighbors (KNN)?', '["Computationally expensive for large datasets", "Low accuracy", "Hard to interpret", "Requires no hyperparameters"]', 'Computationally expensive for large datasets'),
('Machine Learning', 2, 'What is the purpose of a bias term in linear regression?', '["To allow the model to have an intercept", "To store data", "To visualize data", "To preprocess data"]', 'To allow the model to have an intercept'),
('Machine Learning', 2, 'What is the main advantage of using support vector machines (SVM)?', '["Effective in high-dimensional spaces", "Low accuracy", "Hard to interpret", "Requires no hyperparameters"]', 'Effective in high-dimensional spaces'),
('Machine Learning', 2, 'What is the purpose of a learning curve?', '["To diagnose model performance", "To store data", "To visualize data", "To preprocess data"]', 'To diagnose model performance'),
('Machine Learning', 2, 'What is the main disadvantage of using neural networks?', '["Requires large amounts of data", "Low accuracy", "Hard to interpret", "Requires no hyperparameters"]', 'Requires large amounts of data'),
('Machine Learning', 2, 'What is the purpose of dropout in neural networks?', '["To prevent overfitting", "To increase model complexity", "To reduce training time", "To add more features"]', 'To prevent overfitting');

-- Hard Questions (41-60)
INSERT INTO quizzes (topic, difficulty, question, options, answer) VALUES
('Machine Learning', 3, 'What is the difference between L1 and L2 regularization?', '["L1 adds absolute values of coefficients, L2 adds squared values", "L1 adds squared values of coefficients, L2 adds absolute values", "Both add absolute values", "Both add squared values"]', 'L1 adds absolute values of coefficients, L2 adds squared values'),
('Machine Learning', 3, 'What is the purpose of a learning rate scheduler?', '["To adjust the learning rate during training", "To store data", "To visualize data", "To preprocess data"]', 'To adjust the learning rate during training'),
('Machine Learning', 3, 'What is the main disadvantage of using gradient boosting?', '["Prone to overfitting", "Low accuracy", "Hard to interpret", "Requires no hyperparameters"]', 'Prone to overfitting'),
('Machine Learning', 3, 'What is the purpose of a confusion matrix?', '["To evaluate classification models", "To store data", "To visualize data", "To preprocess data"]', 'To evaluate classification models'),
('Machine Learning', 3, 'What is the main advantage of using random forests?', '["Reduces overfitting", "Faster training", "Simpler models", "No need for hyperparameters"]', 'Reduces overfitting'),
('Machine Learning', 3, 'What is the purpose of a gradient in gradient descent?', '["To indicate the direction of steepest ascent", "To store data", "To visualize data", "To preprocess data"]', 'To indicate the direction of steepest ascent'),
('Machine Learning', 3, 'What is the main disadvantage of using decision trees?', '["Prone to overfitting", "Low accuracy", "Hard to interpret", "Requires no hyperparameters"]', 'Prone to overfitting'),
('Machine Learning', 3, 'What is the purpose of a learning curve?', '["To diagnose model performance", "To store data", "To visualize data", "To preprocess data"]', 'To diagnose model performance'),
('Machine Learning', 3, 'What is the main advantage of using PCA?', '["Reduces dimensionality", "Increases accuracy", "Simplifies models", "Requires no hyperparameters"]', 'Reduces dimensionality'),
('Machine Learning', 3, 'What is the purpose of a ROC curve?', '["To evaluate classification models", "To store data", "To visualize data", "To preprocess data"]', 'To evaluate classification models'),
('Machine Learning', 3, 'What is the main disadvantage of using logistic regression?', '["Assumes linear decision boundary", "Low accuracy", "Hard to interpret", "Requires no hyperparameters"]', 'Assumes linear decision boundary'),
('Machine Learning', 3, 'What is the purpose of a confusion matrix?', '["To evaluate classification models", "To store data", "To visualize data", "To preprocess data"]', 'To evaluate classification models'),
('Machine Learning', 3, 'What is the main advantage of using gradient boosting?', '["High accuracy", "Faster training", "Simpler models", "No need for hyperparameters"]', 'High accuracy'),
('Machine Learning', 3, 'What is the purpose of a learning rate in gradient descent?', '["To control the step size during optimization", "To store data", "To visualize data", "To preprocess data"]', 'To control the step size during optimization'),
('Machine Learning', 3, 'What is the main disadvantage of using k-nearest neighbors (KNN)?', '["Computationally expensive for large datasets", "Low accuracy", "Hard to interpret", "Requires no hyperparameters"]', 'Computationally expensive for large datasets'),
('Machine Learning', 3, 'What is the purpose of a bias term in linear regression?', '["To allow the model to have an intercept", "To store data", "To visualize data", "To preprocess data"]', 'To allow the model to have an intercept'),
('Machine Learning', 3, 'What is the main advantage of using support vector machines (SVM)?', '["Effective in high-dimensional spaces", "Low accuracy", "Hard to interpret", "Requires no hyperparameters"]', 'Effective in high-dimensional spaces'),
('Machine Learning', 3, 'What is the purpose of a learning curve?', '["To diagnose model performance", "To store data", "To visualize data", "To preprocess data"]', 'To diagnose model performance'),
('Machine Learning', 3, 'What is the main disadvantage of using neural networks?', '["Requires large amounts of data", "Low accuracy", "Hard to interpret", "Requires no hyperparameters"]', 'Requires large amounts of data'),
('Machine Learning', 3, 'What is the purpose of dropout in neural networks?', '["To prevent overfitting", "To increase model complexity", "To reduce training time", "To add more features"]', 'To prevent overfitting');