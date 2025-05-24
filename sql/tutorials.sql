use `gict`;

CREATE TABLE `tutorials` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '教程ID',
  `title` varchar(256) NOT NULL COMMENT '名称',
  `description` varchar(256) NOT NULL COMMENT '描述',
  `published` tinyint(1) DEFAULT false COMMENT '状态',
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ;

select max(id) from gict.tutorials;

UPDATE gict.tutorials SET `updatedAt` = DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 10 second)
where id < 2000;

select * from gict.tutorials where id = 12;



INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'A Guide for Machine Vision in Quality Control','A Guide for Machine Vision in Quality Control',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Adding OpenCV 4.2.0 to Visual Studio 2019 project in Windows using pre-built binaries _ by Ye Joo Park _ Medium','Adding OpenCV 4.2.0 to Visual Studio 2019 project in Windows using pre-built binaries _ by Ye Joo Park _ Medium',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Biological and Computer Vision 2021','Biological and Computer Vision 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Building Computer Vision Applications Using Artificial Neural Networks, Ansari S. 2020','Building Computer Vision Applications Using Artificial Neural Networks, Ansari S. 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Case Studies (Practical Python and OpenCV) by Adrian Rosebrock','Case Studies (Practical Python and OpenCV) by Adrian Rosebrock',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Challenges and Applications...in Computer Vision 2020','Challenges and Applications...in Computer Vision 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Vision - Richard Szeliski, 2011','Computer Vision - Richard Szeliski, 2011',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Vision And Applications A Guide For Students And Practitioners','Computer Vision And Applications A Guide For Students And Practitioners',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Vision and Image Processing - Fundamentals and Applications, 2020','Computer Vision and Image Processing - Fundamentals and Applications, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Vision for Structural Dynamics and Health Monitoring 2021','Computer Vision for Structural Dynamics and Health Monitoring 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Vision for X-Ray Testing - Imaging, Systems, Image Databases, and Algorithms 2ed 2020','Computer Vision for X-Ray Testing - Imaging, Systems, Image Databases, and Algorithms 2ed 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Vision in Control Systems 1 - Mathematical Theory (2015)','Computer Vision in Control Systems 1 - Mathematical Theory (2015)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Vision in Control Systems 2 - Innovations in Practice (2015)','Computer Vision in Control Systems 2 - Innovations in Practice (2015)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Vision in Control Systems 3 - Aerial and Satellite Image Processing (2018)','Computer Vision in Control Systems 3 - Aerial and Satellite Image Processing (2018)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Vision in Control Systems 4 - Real Life Applications (2018)','Computer Vision in Control Systems 4 - Real Life Applications (2018)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Vision in Control Systems 5 - Advanced Decisions in Technical and Medical Applications (2020)','Computer Vision in Control Systems 5 - Advanced Decisions in Technical and Medical Applications (2020)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Vision in Control Systems 6 - Advances in Practical Applications (2020)','Computer Vision in Control Systems 6 - Advances in Practical Applications (2020)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Vision Principles, Algorithms, Applications, Learning by E.R. Davies','Computer Vision Principles, Algorithms, Applications, Learning by E.R. Davies',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Vision Using Deep Learning Neural Network Architectures with Python and Keras by Vaibhav Verdhan','Computer Vision Using Deep Learning Neural Network Architectures with Python and Keras by Vaibhav Verdhan',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Vision Using Local Binary Patterns','Computer Vision Using Local Binary Patterns',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Vision with Maker Tech - Detecting People With a Raspberry Pi, a Thermal Camera, and Machine Learning 2020','Computer Vision with Maker Tech - Detecting People With a Raspberry Pi, a Thermal Camera, and Machine Learning 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Deep Learning for Computer Vision with Python by Adrian Rosebrock','Deep Learning for Computer Vision with Python by Adrian Rosebrock',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Deep Learning in Computer Vision - Principles and Applications','Deep Learning in Computer Vision - Principles and Applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Deep Learning on Windows - Building Deep Learning Computer Vision Systems on Microsoft Windows 2020','Deep Learning on Windows - Building Deep Learning Computer Vision Systems on Microsoft Windows 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Domain Adaptation in Computer Vision with Deep Learning 2020','Domain Adaptation in Computer Vision with Deep Learning 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Foundations of Computer Vision - Computational Geometry, Visual Image Structures and Object Shape Detection','Foundations of Computer Vision - Computational Geometry, Visual Image Structures and Object Shape Detection',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Fundamentals Of Computer Vision','Fundamentals Of Computer Vision',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Fundamentals of Deep Learning and Computer Vision','Fundamentals of Deep Learning and Computer Vision',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Genetic Programming for Image Classification...2021','Genetic Programming for Image Classification...2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Handbook of Computer Vision and Applications Vol 1 Sensors and Imaging','Handbook of Computer Vision and Applications Vol 1 Sensors and Imaging',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Handbook of Image Processing and Computer Vision V1, From Energy to Image 2020','Handbook of Image Processing and Computer Vision V1, From Energy to Image 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Handbook of Image Processing and Computer Vision V2, From Image to Pattern 2020','Handbook of Image Processing and Computer Vision V2, From Image to Pattern 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Handbook of Machine and Computer Vision. The Guide...2ed 2017','Handbook of Machine and Computer Vision. The Guide...2ed 2017',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Handbook of Pattern Recognition & Computer Vision, 2nd Edition','Handbook of Pattern Recognition & Computer Vision, 2nd Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'HANDS-ON COMPUTER VISION WITH TENSORFLOW 2_ leverage deep learning to create powerful image','HANDS-ON COMPUTER VISION WITH TENSORFLOW 2_ leverage deep learning to create powerful image',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Hands-On Java Deep Learning for Computer Vision - Implement machine learning and neural network methodologies to perform computer vision-related tasks. 2019','Hands-On Java Deep Learning for Computer Vision - Implement machine learning and neural network methodologies to perform computer vision-related tasks. 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Image Processing. Dealing with Texture 2ed 2021','Image Processing. Dealing with Texture 2ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Introduction to visual computing_ core concepts in computer vision, graphics, and image processing-CRC Press (2018)','Introduction to visual computing_ core concepts in computer vision, graphics, and image processing-CRC Press (2018)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Johri P. Trends and Advancements of Image Processing...App 2022','Johri P. Trends and Advancements of Image Processing...App 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learn Computer Vision Using OpenCV With Deep Learning CNNs and RNNs  by Sunila Gollapudi','Learn Computer Vision Using OpenCV With Deep Learning CNNs and RNNs  by Sunila Gollapudi',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learning OpenCV 4 - Computer Vision with Python 3 Get to grips with tools, techniques, and algorithms for computer vision and machine learning (2020)','Learning OpenCV 4 - Computer Vision with Python 3 Get to grips with tools, techniques, and algorithms for computer vision and machine learning (2020)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learning Robotics using Python Design, simulate, program, and prototype an autonomous mobile robot using ROS, OpenCV, PCL, and Python by Lentin Joseph','Learning Robotics using Python Design, simulate, program, and prototype an autonomous mobile robot using ROS, OpenCV, PCL, and Python by Lentin Joseph',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Low-Power Computer Vision...AI 2022','Low-Power Computer Vision...AI 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Machine Learning for OpenCV 4 - Intelligent algorithms for building image processing apps using OpenCV 4, Python','Machine Learning for OpenCV 4 - Intelligent algorithms for building image processing apps using OpenCV 4, Python',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Machine Learning with the Raspberry Pi- Experiments with Data and Computer Vision','Machine Learning with the Raspberry Pi- Experiments with Data and Computer Vision',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Machine Vision Inspection Systems Vol. 1, image processing, Concepts, Methodologies, and Applications','Machine Vision Inspection Systems Vol. 1, image processing, Concepts, Methodologies, and Applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Machine Vision Inspection Systems Vol. 2, Machine Learning-Based Approaches 2021','Machine Vision Inspection Systems Vol. 2, Machine Learning-Based Approaches 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Mastering Computer Vision with TensorFlow 2.x - Build advanced computer vision apps using machine learning and deep learning, 2020','Mastering Computer Vision with TensorFlow 2.x - Build advanced computer vision apps using machine learning and deep learning, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Mastering OpenCV 4 - A comprehensive guide to building computer vision and image processing applications with C++ , 3rd Ed','Mastering OpenCV 4 - A comprehensive guide to building computer vision and image processing applications with C++ , 3rd Ed',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Mastering OpenCV 4 with Python - A Practical Guide Covering Topics from Image Processing, Augmented Reality to Deep Learning with OpenCV 4 and Python 3. 7. 2019','Mastering OpenCV 4 with Python - A Practical Guide Covering Topics from Image Processing, Augmented Reality to Deep Learning with OpenCV 4 and Python 3. 7. 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Microsoft Computer Vision APIs Distilled','Microsoft Computer Vision APIs Distilled',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Modern PyQt - Create GUI Applications for?Project Management, Computer Vision, and?Data Analysis 2020','Modern PyQt - Create GUI Applications for?Project Management, Computer Vision, and?Data Analysis 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Numerical Algorithms- Methods for Computer Vision, Machine Learning, and Graphics','Numerical Algorithms- Methods for Computer Vision, Machine Learning, and Graphics',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'OpenCV 4 with Python Blueprints - Become proficient in computer vision by designing advanced projects using OpenCV 4 with Python 3.8 2020','OpenCV 4 with Python Blueprints - Become proficient in computer vision by designing advanced projects using OpenCV 4 with Python 3.8 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Practical Computer Vision Applications Using Deep Learning with CNNs With Detailed Examples in Python Using TensorFlow and Kivy by Ahmed Fawzy Gad','Practical Computer Vision Applications Using Deep Learning with CNNs With Detailed Examples in Python Using TensorFlow and Kivy by Ahmed Fawzy Gad',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Practical Computer Vision Extract insightful information from images using TensorFlow, Keras, and OpenCV by Abhinav Dadhich','Practical Computer Vision Extract insightful information from images using TensorFlow, Keras, and OpenCV by Abhinav Dadhich',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Probabilistic Graphical Models for Computer Vision','Probabilistic Graphical Models for Computer Vision',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Smart Algorithms for Multimedia and Imaging 2021','Smart Algorithms for Multimedia and Imaging 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Computer Vision Workshop - Develop the skills you need to use computer vision algorithms in your own artificial intelligence projects 2020','The Computer Vision Workshop - Develop the skills you need to use computer vision algorithms in your own artificial intelligence projects 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Video Demystified A Handbook For The Digital Engineer 3rd Edition Mcgraw Hill','Video Demystified A Handbook For The Digital Engineer 3rd Edition Mcgraw Hill',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Vijayalakshmi S. Embedded Vision. An Introduction 2019','Vijayalakshmi S. Embedded Vision. An Introduction 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Vision Models for High Dynamic Range and Wide Colour Gamut Imaging - Techniques and Applications','Vision Models for High Dynamic Range and Wide Colour Gamut Imaging - Techniques and Applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Xing W.Visual Object Tracking from..Filter to Deep Learning 2021','Xing W.Visual Object Tracking from..Filter to Deep Learning 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Zhang Y. Selection of Image Processing Techniques...2022','Zhang Y. Selection of Image Processing Techniques...2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'A Java Foundation Classes Primer','A Java Foundation Classes Primer',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'A Little Java, A Few Patterns','A Little Java, A Few Patterns',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'A Piece of Java_ Introduction to Programming (2021)','A Piece of Java_ Introduction to Programming (2021)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'A Practical Guide to Data Structures and Algorithms using Java','A Practical Guide to Data Structures and Algorithms using Java',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Algorithms Java. Explains Algorithms with Beautiful Pictures 2020','Algorithms Java. Explains Algorithms with Beautiful Pictures 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Apache Maven Cookbook','Apache Maven Cookbook',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Art of Java Web Development','Art of Java Web Development',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Beginning Java MVC 1.0 - Model View Controller Development to Build Web, Cloud, and Microservices Applications 2021','Beginning Java MVC 1.0 - Model View Controller Development to Build Web, Cloud, and Microservices Applications 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Beginning Robotics Programming in Java with LEGO Mindstorms','Beginning Robotics Programming in Java with LEGO Mindstorms',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Beginning Spring Boot 2 - Applications and Microservices with the Spring Framework, 2017','Beginning Spring Boot 2 - Applications and Microservices with the Spring Framework, 2017',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Building a RESTful Web Service with Spring','Building a RESTful Web Service with Spring',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Building Applications with Spring 5 and Kotlin - Build scalable and reactive applications','Building Applications with Spring 5 and Kotlin - Build scalable and reactive applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Building Java Programs - A Back to Basics Approach 5ed 2019','Building Java Programs - A Back to Basics Approach 5ed 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Building Web Apps with Spring 5 and Angular - Modern end-to-end web application development','Building Web Apps with Spring 5 and Angular - Modern end-to-end web application development',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Chin S. The Definitive Guide to Modern Java Clients...2ed 2022','Chin S. The Definitive Guide to Modern Java Clients...2ed 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Classic Computer Science Problems in Java 2020','Classic Computer Science Problems in Java 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Client-Server Web Apps with JavaScript and Java','Client-Server Web Apps with JavaScript and Java',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Cloud Native Java Designing Resilient Systems with Spring Boot, Spring Cloud, and Cloud Foundry 2017','Cloud Native Java Designing Resilient Systems with Spring Boot, Spring Cloud, and Cloud Foundry 2017',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Code Using Java Fun coding activities for absolute beginners','Code Using Java Fun coding activities for absolute beginners',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Concise Guide to Object-Oriented Programming - An Accessible Approach Using Java by Kingsley Sage, 2019','Concise Guide to Object-Oriented Programming - An Accessible Approach Using Java by Kingsley Sage, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Continuous Enterprise Development In Java','Continuous Enterprise Development In Java',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Cosmina I. Java 17 for Absolute Beginners.Fundamentals..2ed 2022','Cosmina I. Java 17 for Absolute Beginners.Fundamentals..2ed 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Creational Design Patterns using Java','Creational Design Patterns using Java',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Database Design and Implementation (Java, JDBC) by Edward Sciore, 2020','Database Design and Implementation (Java, JDBC) by Edward Sciore, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Designing Hexagonal Architecture with Java by Davi Vieira 2021','Designing Hexagonal Architecture with Java by Davi Vieira 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Developing Open Cloud Native Microservices - Your Java Code in Action, 2019','Developing Open Cloud Native Microservices - Your Java Code in Action, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Easy Learning Java, 2ed - Java for Beginner''s Guide Learn easy and fast','Easy Learning Java, 2ed - Java for Beginner''s Guide Learn easy and fast',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Exceptions in Java - Basics, advanced concepts, and real API examples','Exceptions in Java - Basics, advanced concepts, and real API examples',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Exploring Java 9 - Build Modularized Applications in Java','Exploring Java 9 - Build Modularized Applications in Java',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Foundations of 3D Graphics Programming - Using JOGL and Java3D, First Edition','Foundations of 3D Graphics Programming - Using JOGL and Java3D, First Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Full stack development with JHipster build full stack applications and microservices with Spring Boot and modern JavaScript frameworks by Sendil Kumar N. Deepu K. Sasidharan','Full stack development with JHipster build full stack applications and microservices with Spring Boot and modern JavaScript frameworks by Sendil Kumar N. Deepu K. Sasidharan',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Gary J. Java Complete Book 2021','Gary J. Java Complete Book 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Guide to Data Structures - A Concise Introduction Using Java','Guide to Data Structures - A Concise Introduction Using Java',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Hagos T. Beginning IntelliJ IDEA...IDE for Java Programming 2022','Hagos T. Beginning IntelliJ IDEA...IDE for Java Programming 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Hands-On Cloud-Native Microservices with Jakarta EE - Build scalable and reactive microservices with Docker, Kubernetes, and OpenShift. (2020)','Hands-On Cloud-Native Microservices with Jakarta EE - Build scalable and reactive microservices with Docker, Kubernetes, and OpenShift. (2020)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Hands-On Design Patterns with Java - Learn Design Patterns That Enable the Building of Large-Scale Software Architectures by Edward Lavieri','Hands-On Design Patterns with Java - Learn Design Patterns That Enable the Building of Large-Scale Software Architectures by Edward Lavieri',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Hands-On Microservices with Spring Boot and Spring Cloud','Hands-On Microservices with Spring Boot and Spring Cloud',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Interactive Object-Oriented Programming in Java - Learn and Test Your Programming Skills by Vaskaran Sarcar, 2ed 2019','Interactive Object-Oriented Programming in Java - Learn and Test Your Programming Skills by Vaskaran Sarcar, 2ed 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Introduction to Computer Graphics - Using Java 2D and 3D','Introduction to Computer Graphics - Using Java 2D and 3D',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Introduction to Java Programming, Brief Version, 11th Global Edition','Introduction to Java Programming, Brief Version, 11th Global Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Introduction to Programming Using Java Ver 8.1 2019','Introduction to Programming Using Java Ver 8.1 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Introduction to Software Design with Java by Martin P. Robillard, 2019','Introduction to Software Design with Java by Martin P. Robillard, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java - A Beginner''s Guide, 9th Edition','Java - A Beginner''s Guide, 9th Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java - An Introduction to Problem Solving and Programming, Global Edition, Walter Savitch, 2019','Java - An Introduction to Problem Solving and Programming, Global Edition, Walter Savitch, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java - How to Program, 9th Edition','Java - How to Program, 9th Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java - The Complete Reference 12ed 2022','Java - The Complete Reference 12ed 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java - The Good Parts','Java - The Good Parts',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'JAVA - The Practical Beginners Guide To Learn Java And Javascript In One Day Step By Step','JAVA - The Practical Beginners Guide To Learn Java And Javascript In One Day Step By Step',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java - The Ultimate Beginners Guide to Effectively Learn Java Programming Step-by-Step','Java - The Ultimate Beginners Guide to Effectively Learn Java Programming Step-by-Step',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java 11 and 12 - New Features - Learn about Project Amber and the latest developments in the Java language... [True PDF]','Java 11 and 12 - New Features - Learn about Project Amber and the latest developments in the Java language... [True PDF]',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java 17 Quick Syntax Reference - A Pocket Guide to the Java SE Language, APIs, and Library, 3ed 2022','Java 17 Quick Syntax Reference - A Pocket Guide to the Java SE Language, APIs, and Library, 3ed 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java 20 - About the system development process by Poul Klausen, 2019','Java 20 - About the system development process by Poul Klausen, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java 8ʵս-Raoul-Gabriel Urma','Java 8ʵս-Raoul-Gabriel Urma',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java 9 Data Structures and Algorithms','Java 9 Data Structures and Algorithms',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java Basics - An intro to Java and the Java developement environment','Java Basics - An intro to Java and the Java developement environment',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java By Comparison - Become a Java Craftsman in 70 Examples','Java By Comparison - Become a Java Craftsman in 70 Examples',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java Coding Guidelines - 75 Recommendations for Reliable and Secure Programs','Java Coding Guidelines - 75 Recommendations for Reliable and Secure Programs',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java Coding Problems - Improve your Java Programming skills by solving real -world coding challenges','Java Coding Problems - Improve your Java Programming skills by solving real -world coding challenges',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java Design Patterns - A Hands-On Experience with Real-World Examples by Vaskaran Sarcar','Java Design Patterns - A Hands-On Experience with Real-World Examples by Vaskaran Sarcar',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java EE 8 and Angular - A practical guide to building modern single-page applications with Angular and Java EE [True PDF]','Java EE 8 and Angular - A practical guide to building modern single-page applications with Angular and Java EE [True PDF]',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java EE 8 Design Patterns and Best Practices- Build enterprise-ready scalable apps with architectural design patterns','Java EE 8 Design Patterns and Best Practices- Build enterprise-ready scalable apps with architectural design patterns',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java EE Web Application Primer - Building Bullhorn - A Messaging App with JSP, Servlets, JavaScript, Bootstrap and Oracle','Java EE Web Application Primer - Building Bullhorn - A Messaging App with JSP, Servlets, JavaScript, Bootstrap and Oracle',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java for Absolute Beginners - Learn to Program the Fundamentals the Java 9+ Way by Iuliana Cosmina','Java for Absolute Beginners - Learn to Program the Fundamentals the Java 9+ Way by Iuliana Cosmina',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java For Beginners - Get From Zero to Object-Oriented Programming','Java For Beginners - Get From Zero to Object-Oriented Programming',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java For Fucking Idiots by Steven Brown, 2019','Java For Fucking Idiots by Steven Brown, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java For Humans - Learn to Code Life','Java For Humans - Learn to Code Life',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java For Testers - Learn Java fundamentals fast','Java For Testers - Learn Java fundamentals fast',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java Foundations - Introduction to Program Design and Data Structures (5th Edition) (2019)','Java Foundations - Introduction to Program Design and Data Structures (5th Edition) (2019)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java Illuminated 5th Edition','Java Illuminated 5th Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java in a Nutshell 7ed - A Desktop Quick Reference by Ben Evans, David Flanagan','Java in a Nutshell 7ed - A Desktop Quick Reference by Ben Evans, David Flanagan',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java Interview Questions','Java Interview Questions',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java Language Features - With Modules, Streams, Threads, I O, and Lambda Expressions, 2E by Kishori Sharan','Java Language Features - With Modules, Streams, Threads, I O, and Lambda Expressions, 2E by Kishori Sharan',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java Learn Design Patterns That Enable The Building Of Large Scale Software Architectures','Java Learn Design Patterns That Enable The Building Of Large Scale Software Architectures',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java Performance - The Definitive Guide','Java Performance - The Definitive Guide',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java Persistence with Spring Data and Hibernate','Java Persistence with Spring Data and Hibernate',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java Pocket Guide Instant Help for Java Programmers, 4th Edition','Java Pocket Guide Instant Help for Java Programmers, 4th Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java Programming A Beginners Guide to Learning Java, Step by Step','Java Programming A Beginners Guide to Learning Java, Step by Step',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java Programming, 9th by Joyce Farrell','Java Programming, 9th by Joyce Farrell',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'JAVA Programming, For Beginners, Learn Coding Fast!','JAVA Programming, For Beginners, Learn Coding Fast!',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java Server Side Programming','Java Server Side Programming',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java Software Development with Event B A Practical Guide (Synthesis Lectures on Software Engineering) by Luciano Baresi (editor), N��stor Cata?o Collazos','Java Software Development with Event B A Practical Guide (Synthesis Lectures on Software Engineering) by Luciano Baresi (editor), N��stor Cata?o Collazos',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java Software Solutions, 9th Edition','Java Software Solutions, 9th Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java Web Services Up and Running , Second Edition','Java Web Services Up and Running , Second Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java WebSocket Programming','Java WebSocket Programming',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java XML and JSON - Document Processing for Java SE, 2ed, by Jeff Friesen','Java XML and JSON - Document Processing for Java SE, 2ed, by Jeff Friesen',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Java_ For Beginners by Suraj Raghuvanshi','Java_ For Beginners by Suraj Raghuvanshi',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learn Java 12 Programming - A step-by-step guide to learning essential concepts in Java SE 10, 11, and 12, Nick Samoylov, 2019','Learn Java 12 Programming - A step-by-step guide to learning essential concepts in Java SE 10, 11, and 12, Nick Samoylov, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learn Java And Master Writing Code - The Only Book You Need To Learn Java, For Beginners','Learn Java And Master Writing Code - The Only Book You Need To Learn Java, For Beginners',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learn Java with Math - Using Fun Projects and Games by Ron Dai','Learn Java with Math - Using Fun Projects and Games by Ron Dai',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learn JavaFX 8 - Building User Experience and Interfaces with Java 8','Learn JavaFX 8 - Building User Experience and Interfaces with Java 8',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learning Java - An Introduction to Real-World Programming with Java, 5th Edition by Marc Loy, Patrick Niemeyer, Daniel Leuck','Learning Java - An Introduction to Real-World Programming with Java, 5th Edition by Marc Loy, Patrick Niemeyer, Daniel Leuck',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learning RxJava- Build Concurrent Applications using reactive Programming with the latest features of RxJava 3, 2nd Edition','Learning RxJava- Build Concurrent Applications using reactive Programming with the latest features of RxJava 3, 2nd Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Machine Learning in Java - Helpful techniques to design, build, and deploy powerful machine learning applications in Java by AshishSingh Bhatia, Bostjan Kaluza, 2019','Machine Learning in Java - Helpful techniques to design, build, and deploy powerful machine learning applications in Java by AshishSingh Bhatia, Bostjan Kaluza, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Mastering Java - An Effective Project Based Approach including Web Development, Data Structures, GUI Programming and OOP','Mastering Java - An Effective Project Based Approach including Web Development, Data Structures, GUI Programming and OOP',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Mastering Spring Boot 2.0 - Build modern, cloud-native, and distributed systems using spring boot, 2018','Mastering Spring Boot 2.0 - Build modern, cloud-native, and distributed systems using spring boot, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'McAllister W. Programming Fundamentals Using Java 2ed 2021','McAllister W. Programming Fundamentals Using Java 2ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Microservices for Java Developers, 2nd Edition by Christian Posta  Rafael Benevides','Microservices for Java Developers, 2nd Edition by Christian Posta  Rafael Benevides',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Modern Java in Action- Lambdas, streams, functional and reactive programming 2e','Modern Java in Action- Lambdas, streams, functional and reactive programming 2e',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Natural Language Processing with Java, 1st Edition','Natural Language Processing with Java, 1st Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Object-Oriented Data Structures Using Java, Dale N., Joyce D., Weems C. 4ed 2018','Object-Oriented Data Structures Using Java, Dale N., Joyce D., Weems C. 4ed 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'OCP Oracle Certified Professional Java SE 11 Programmer I Study Guide- Exam 1Z0-815','OCP Oracle Certified Professional Java SE 11 Programmer I Study Guide- Exam 1Z0-815',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Pivotal Certified Professional Core Spring 5 Developer Exam A Study Guide Using Spring Framework 5 by Iuliana Cosmina','Pivotal Certified Professional Core Spring 5 Developer Exam A Study Guide Using Spring Framework 5 by Iuliana Cosmina',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Ponge J. Vert.x in Action. Asynchronous and Reactive Java 2020','Ponge J. Vert.x in Action. Asynchronous and Reactive Java 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Practical Domain-Driven Design in Enterprise Java - Using Jakarta EE, Eclipse MicroProfile, Spring Boot, and the Axon Framework. by Vijay Nair, 2019','Practical Domain-Driven Design in Enterprise Java - Using Jakarta EE, Eclipse MicroProfile, Spring Boot, and the Axon Framework. by Vijay Nair, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Practical Java Programming for IoT, AI, and Blockchain. by Perry Xiao','Practical Java Programming for IoT, AI, and Blockchain. by Perry Xiao',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Practical Microservices Architectural Patterns - Event-Based Java Microservices with Spring Boot and Spring Cloud by Binildas Christudas','Practical Microservices Architectural Patterns - Event-Based Java Microservices with Spring Boot and Spring Cloud by Binildas Christudas',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Pragmatic Unit Testing in Java 8 with JUnit','Pragmatic Unit Testing in Java 8 with JUnit',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Pro Java 9 Games Development Leveraging The Javafx Apis','Pro Java 9 Games Development Leveraging The Javafx Apis',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Pro Java Clustering and Scalability','Pro Java Clustering and Scalability',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Pro Spring Boot 2 - An Authoritative Guide to Building Microservices, Web and Enterprise Applications, and Best Practices by Felipe Gutierrez','Pro Spring Boot 2 - An Authoritative Guide to Building Microservices, Web and Enterprise Applications, and Best Practices by Felipe Gutierrez',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Pro Spring MVC With WebFlux Web Development in Spring Framework 5 and Spring Boot 2 by Marten Deinum, Iuliana Cosmina','Pro Spring MVC With WebFlux Web Development in Spring Framework 5 and Spring Boot 2 by Marten Deinum, Iuliana Cosmina',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Professional Java EE Design Patterns','Professional Java EE Design Patterns',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Rapid Java Persistence and Microservices - Persistence Made Easy Using Java EE8, JPA and Spring by Raj Malhotra','Rapid Java Persistence and Microservices - Persistence Made Easy Using Java EE8, JPA and Spring by Raj Malhotra',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Reactive Streams in Java Concurrency with RxJava, Reactor, and Akka Streams','Reactive Streams in Java Concurrency with RxJava, Reactor, and Akka Streams',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Reactive Systems in Java - Resilient, Event-Driven Architecture with Quarkus 2022','Reactive Systems in Java - Resilient, Event-Driven Architecture with Quarkus 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Real-Time IoT Imaging with Deep Neural Networks - Using Java on the Raspberry Pi 4 by Nicolas Modrzyk, 2020','Real-Time IoT Imaging with Deep Neural Networks - Using Java on the Raspberry Pi 4 by Nicolas Modrzyk, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Sams Teach Yourself Java in 21 Days (Covers Java 11, 12), Rogers Cadenhead, 2020','Sams Teach Yourself Java in 21 Days (Covers Java 11, 12), Rogers Cadenhead, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Scripting in Java - Integrating','Scripting in Java - Integrating',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Sharan K. Beginning Java 17 Fundamentals.OOP in Java 17 3ed 2022','Sharan K. Beginning Java 17 Fundamentals.OOP in Java 17 3ed 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Sharan K. Learn JavaFX 17. Building User Experience...2ed 2022','Sharan K. Learn JavaFX 17. Building User Experience...2ed 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Architecture Design Patterns in Java 1e','Software Architecture Design Patterns in Java 1e',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Spring 5.0 Cookbook','Spring 5.0 Cookbook',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Spring Boot 2 Recipes by Marten Deinum','Spring Boot 2 Recipes by Marten Deinum',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Spring Boot 2.0 Projects - Build production-grade reactive applications and microservices with Spring Boot (2020)','Spring Boot 2.0 Projects - Build production-grade reactive applications and microservices with Spring Boot (2020)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Spring Boot Messaging - Messaging APIs for Enterprise and Integration Solutions, 2017','Spring Boot Messaging - Messaging APIs for Enterprise and Integration Solutions, 2017',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Spring Boot Persistence Best Practices - Optimize Java Persistence Performance in Spring Boot Applications by Anghel Leonard, 2020','Spring Boot Persistence Best Practices - Optimize Java Persistence Performance in Spring Boot Applications by Anghel Leonard, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Spring Boot- Up and Running - Building Cloud Native Java and Kotlin Applications 2021','Spring Boot- Up and Running - Building Cloud Native Java and Kotlin Applications 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Spring Bootʵս-Craig Walls','Spring Bootʵս-Craig Walls',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Spring Cloud Data Flow Native Cloud Orchestration Services for Microservice Applications on Modern Runtimes by Felipe Gutierrez','Spring Cloud Data Flow Native Cloud Orchestration Services for Microservice Applications on Modern Runtimes by Felipe Gutierrez',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Spring Microservices In Action 2nd Edition 2021','Spring Microservices In Action 2nd Edition 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Spring Quick Reference Guide A Pocket Handbook for Spring Framework, Spring Boot, and More by Adam L. Davis','Spring Quick Reference Guide A Pocket Handbook for Spring Framework, Spring Boot, and More by Adam L. Davis',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Spring Security in Action by Laurentiu Spilca (2020)','Spring Security in Action by Laurentiu Spilca (2020)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Starting Out With Java From Control Structures through Data Structures 4th Ed by Tony Gaddis','Starting Out With Java From Control Structures through Data Structures 4th Ed by Tony Gaddis',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Definitive Guide to Modern Java Clients with JavaFX - Cross-Platform Mobile and Cloud Development by James Weaver','The Definitive Guide to Modern Java Clients with JavaFX - Cross-Platform Mobile and Cloud Development by James Weaver',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Java Workshop- A Practical, No-Nonsense Introduction to Java Development','The Java Workshop- A Practical, No-Nonsense Introduction to Java Development',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Well-Grounded Java Developer Version 6','The Well-Grounded Java Developer Version 6',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Think Data Structures - Algorithms and Information Retrieval in Java 1e','Think Data Structures - Algorithms and Information Retrieval in Java 1e',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Unified Software Engineering With Java','Unified Software Engineering With Java',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Varanasi B. Spring REST. Building Java Microservices...2ed 2022','Varanasi B. Spring REST. Building Java Microservices...2ed 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Vermeulen M. Functional Programming in Kotlin 2021','Vermeulen M. Functional Programming in Kotlin 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Walls C. Spring in Action 6ed 2022','Walls C. Spring in Action 6ed 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'3D Game Programming - Create Interactive World with JavaScript 2021','3D Game Programming - Create Interactive World with JavaScript 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'3D PROGRAMMING Change the world with JavaScript by Elijah, Cosmos [Elijah, Cosmos]-','3D PROGRAMMING Change the world with JavaScript by Elijah, Cosmos [Elijah, Cosmos]-',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'50 JavaScript Programs','50 JavaScript Programs',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'9 Practical Node.js Projects, 2018','9 Practical Node.js Projects, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'A Smarter Way to Learn HTML & CSS Learn it faster. Remember it longer. ','A Smarter Way to Learn HTML & CSS Learn it faster. Remember it longer. ',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'A Smarter Way to Learn JavaScript - The new approach that uses technology to cut your effort in half By Mark Myers','A Smarter Way to Learn JavaScript - The new approach that uses technology to cut your effort in half By Mark Myers',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Advanced JavaScript Visualized 2021','Advanced JavaScript Visualized 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Advanced JavaScript','Advanced JavaScript',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Advanced TypeScript programming projects - build 9 different apps with TypeScript 3 and JavaScript frameworks such as Angular, React, and Vue by O��Hanlon, Peter','Advanced TypeScript programming projects - build 9 different apps with TypeScript 3 and JavaScript frameworks such as Angular, React, and Vue by O��Hanlon, Peter',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Angular Development with Typescript 2e','Angular Development with Typescript 2e',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Beginning Amazon Web Services with Node-js','Beginning Amazon Web Services with Node-js',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Beginning Node.js, Express and MongoDB Development by Lim Greg, 2019','Beginning Node.js, Express and MongoDB Development by Lim Greg, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Bootstrap - The Ultimate Beginner''s Guide to Learn Bootstrap Programming Step by Step','Bootstrap - The Ultimate Beginner''s Guide to Learn Bootstrap Programming Step by Step',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Build an HTML5 Game - A Developer''s Guide with CSS and JavaScript','Build an HTML5 Game - A Developer''s Guide with CSS and JavaScript',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Building APIs with Node.js','Building APIs with Node.js',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Building Javascript Games - For Phones, Tablets, And Desktop','Building Javascript Games - For Phones, Tablets, And Desktop',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Clean Code in JavaScript - Develop reliable, maintainable and robust JavaScript by James Padolsey','Clean Code in JavaScript - Develop reliable, maintainable and robust JavaScript by James Padolsey',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer programming Javascript- step-by-step beginner''s guide on how to start to programm your first website','Computer programming Javascript- step-by-step beginner''s guide on how to start to programm your first website',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Create Stunning HTML Email That Just Works','Create Stunning HTML Email That Just Works',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'D3 for the Impatient- Interactive Graphics for Programmers and Scientists','D3 for the Impatient- Interactive Graphics for Programmers and Scientists',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Data Structures And Algorithms With Javascript','Data Structures And Algorithms With Javascript',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Data Wrangling with JavaScript by Ashley Davis','Data Wrangling with JavaScript by Ashley Davis',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Developing an HTML5 Brick-breaker Game With Phaser','Developing an HTML5 Brick-breaker Game With Phaser',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Developing RESTful Services with JAX-RS 2.0, WebSockets, and JSON','Developing RESTful Services with JAX-RS 2.0, WebSockets, and JSON',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Developing Web Components with TypeScript - Native Web Development Using Thin Libraries by Jorg Krause','Developing Web Components with TypeScript - Native Web Development Using Thin Libraries by Jorg Krause',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Distributed Systems with Node.js...2021','Distributed Systems with Node.js...2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'DOM Scripting - Web Design with JavaScript and the Document Object Model, 2nd Edition','DOM Scripting - Web Design with JavaScript and the Document Object Model, 2nd Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Easy Learning Javascript, 2ed - Javascript for Beginner''s Guide Learn Easy and Fast','Easy Learning Javascript, 2ed - Javascript for Beginner''s Guide Learn Easy and Fast',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Essential TypeScript 4. From Beginner to Pro 2ed 2021','Essential TypeScript 4. From Beginner to Pro 2ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Express in Action - Writing, building, and testing Node.js applications','Express in Action - Writing, building, and testing Node.js applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'FULL Javascript PROGRAMMING - Learn JAVASCRIPT from Scratch','FULL Javascript PROGRAMMING - Learn JAVASCRIPT from Scratch',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Full Stack JavaScript Learn Backbone.js, Node.js, and MongoDB by Azat Mardan, 2018','Full Stack JavaScript Learn Backbone.js, Node.js, and MongoDB by Azat Mardan, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Fullstack Node.js - The Complete Guide to Building Production Apps with Node.js by Nate Murray, 2019','Fullstack Node.js - The Complete Guide to Building Production Apps with Node.js by Nate Murray, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Game Development with Three.js','Game Development with Three.js',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Generative Design - Visualize, Program, and Create with JavaScript in P5.js, 2018','Generative Design - Visualize, Program, and Create with JavaScript in P5.js, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Get Programming with Node.js by Jonathan Wexler','Get Programming with Node.js by Jonathan Wexler',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Getting Started With P5.js by Lauren McCarthy','Getting Started With P5.js by Lauren McCarthy',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Getting Started with Web Components- Build modular and reusable components using HTML, CSS and JavaScript','Getting Started with Web Components- Build modular and reusable components using HTML, CSS and JavaScript',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Getting the Most out of Node.js Frameworks - The Essential Tools and Libraries','Getting the Most out of Node.js Frameworks - The Essential Tools and Libraries',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Graphic Javascript Algorithms Graphic learn Data Structure and Algorithm for JavaScript by Hu, Yang [Hu, Yang]','Graphic Javascript Algorithms Graphic learn Data Structure and Algorithm for JavaScript by Hu, Yang [Hu, Yang]',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Handbook of Semantic Web Technologies','Handbook of Semantic Web Technologies',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Hands On JavaScript High Performance- Build faster web apps using Node.js, sevelte.js and web assembly','Hands On JavaScript High Performance- Build faster web apps using Node.js, sevelte.js and web assembly',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Hands-On Functional Programming with TypeScript - Explore functional & reactive programming to create robust & testable TS apps','Hands-On Functional Programming with TypeScript - Explore functional & reactive programming to create robust & testable TS apps',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Hands-On RESTful API Design Patterns and Best Practices','Hands-On RESTful API Design Patterns and Best Practices',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Hands-On RESTful Web Services with TypeScript 3 - Design and develop scalable RESTful APIs for your applications','Hands-On RESTful Web Services with TypeScript 3 - Design and develop scalable RESTful APIs for your applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'HTML & CSS- Learn The Fundamentals In 7 days','HTML & CSS- Learn The Fundamentals In 7 days',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'HTML AND CSS - The Ultimate step by step guide to learn these Programming Languages','HTML AND CSS - The Ultimate step by step guide to learn these Programming Languages',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'HTML5 & CSS3 For The Real World, 2nd edition','HTML5 & CSS3 For The Real World, 2nd edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'HTML5 and CSS3 Transition, Transformation, and Animation','HTML5 and CSS3 Transition, Transformation, and Animation',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'HTML5 and JavaScript Projects, 2nd Edition by Jeanine Meyer','HTML5 and JavaScript Projects, 2nd Edition by Jeanine Meyer',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'HTML5 Hacks Tips & Tools for Creating Interactive Web Applications','HTML5 Hacks Tips & Tools for Creating Interactive Web Applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'HTML5 Programmer''s Reference By Jonathan Reid','HTML5 Programmer''s Reference By Jonathan Reid',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'HTML5 Solutions - Essential Techniques for HTML5 Developers','HTML5 Solutions - Essential Techniques for HTML5 Developers',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Introduction to Web Interaction Design With HTML and CSS','Introduction to Web Interaction Design With HTML and CSS',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'JavaScript - The Definitive Guide - Activate Your Web Pages, 6th Edition','JavaScript - The Definitive Guide - Activate Your Web Pages, 6th Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'JavaScript - The Ultimate Beginners Guide Start Coding Today','JavaScript - The Ultimate Beginners Guide Start Coding Today',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Javascript Basics And Advanced','Javascript Basics And Advanced',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'JavaScript Best Practice','JavaScript Best Practice',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'JavaScript Cookbook Programming the Web 3ed 2021','JavaScript Cookbook Programming the Web 3ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'JavaScript Data Structures and Algorithms An Introduction to Understanding and Implementing Core Data Structure and Algorithm Fundamentals by Sammie Bae','JavaScript Data Structures and Algorithms An Introduction to Understanding and Implementing Core Data Structure and Algorithm Fundamentals by Sammie Bae',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Javascript for Beginners - Learn the Basics of Programming Language with a Smart Approach','Javascript for Beginners - Learn the Basics of Programming Language with a Smart Approach',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Javascript for Beginners and Advance','Javascript for Beginners and Advance',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'JavaScript for beginners- The simplified for absolute beginners guide to learn and understand computer','JavaScript for beginners- The simplified for absolute beginners guide to learn and understand computer',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Javascript For Beginners. The Ultimate Guide...2ed 2020','Javascript For Beginners. The Ultimate Guide...2ed 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'JavaScript for Data Science (True EPUB)','JavaScript for Data Science (True EPUB)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'JavaScript for impatient programmers (ES2021 edition) by Dr. Axel Rauschmayer','JavaScript for impatient programmers (ES2021 edition) by Dr. Axel Rauschmayer',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'JavaScript for Kids - A Playful Introduction to Programming','JavaScript for Kids - A Playful Introduction to Programming',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'JavaScript Frameworks for Modern Web Development, 2nd Edition by Nicholas Cloud','JavaScript Frameworks for Modern Web Development, 2nd Edition by Nicholas Cloud',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'javascript from ES5 to ESNext','javascript from ES5 to ESNext',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'JavaScript in the Industry - How professional teams want you to write code by Simon Hoiberg','JavaScript in the Industry - How professional teams want you to write code by Simon Hoiberg',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'JavaScript Next by Raju Gandhi','JavaScript Next by Raju Gandhi',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'javascript programming for kids- A Complete Beginners Guide','javascript programming for kids- A Complete Beginners Guide',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Javascript The Definitive Guide Master The Worlds Most Used Programming Language 2020','Javascript The Definitive Guide Master The Worlds Most Used Programming Language 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'javascript visually - Top Book javascript by Ayoub Laghrini','javascript visually - Top Book javascript by Ayoub Laghrini',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'javascript-handbook','javascript-handbook',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Javascript. 3 books in 1. Javascript Basics For Beginners...2021','Javascript. 3 books in 1. Javascript Basics For Beginners...2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'jQuery Tutorial for Beginners Learn in Simple and Easy ways','jQuery Tutorial for Beginners Learn in Simple and Easy ways',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Kanban in Action (PDF)','Kanban in Action (PDF)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Kids Learning Javascript - Kids learn coding like playing games','Kids Learning Javascript - Kids learn coding like playing games',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Leaflet.js Essentials by Paul Crickard III, 2018','Leaflet.js Essentials by Paul Crickard III, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learn CSS- Basics of Cascading Style Sheet','Learn CSS- Basics of Cascading Style Sheet',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learn Javascript Quickly and Javascript Coding Exercises 2021','Learn Javascript Quickly and Javascript Coding Exercises 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learn JavaScript with p5.js - Coding for Visual Learners by Engin Arslan, 2018','Learn JavaScript with p5.js - Coding for Visual Learners by Engin Arslan, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learn JavaScript- Basics of JavaScript Language','Learn JavaScript- Basics of JavaScript Language',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learn Node.js by Building 6 Projects Build six practical and instructive Node.js projects','Learn Node.js by Building 6 Projects Build six practical and instructive Node.js projects',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learn TypeScript 3 by Building Web Applications','Learn TypeScript 3 by Building Web Applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learning AngularJS - A Guide to AngularJS Development by Ken Williamson','Learning AngularJS - A Guide to AngularJS Development by Ken Williamson',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learning JavaScript 3e','Learning JavaScript 3e',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learning JavaScript Data Structures and Algorithms - Write complex & powerful JavaScript code using the latest ECMAScript, 3rd Ed','Learning JavaScript Data Structures and Algorithms - Write complex & powerful JavaScript code using the latest ECMAScript, 3rd Ed',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learning Node.js Development - Learn the fundamentals of Node.js, and deploy and test Node.js applications on the web by Andrew Mead, 2018','Learning Node.js Development - Learn the fundamentals of Node.js, and deploy and test Node.js applications on the web by Andrew Mead, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Manning Electron in Action 2018.10','Manning Electron in Action 2018.10',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Manning Testing Angular Applications 2018.11','Manning Testing Angular Applications 2018.11',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Master Modern JavaScript Fast.Beginner''s Guide 2021','Master Modern JavaScript Fast.Beginner''s Guide 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Mastering JavaScript - Single Page Application Development','Mastering JavaScript - Single Page Application Development',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'MASTERING JAVASCRIPT DESIGN PATTERNS - create scalable and reliable applications with advanced javascript design patterns by CORRAL, TOMAS','MASTERING JAVASCRIPT DESIGN PATTERNS - create scalable and reliable applications with advanced javascript design patterns by CORRAL, TOMAS',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Mastering Node.js - Build robust and scalable real-time server-side web applications efficiently, 2nd Edition','Mastering Node.js - Build robust and scalable real-time server-side web applications efficiently, 2nd Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'MEAN Machine - A beginner''s practical guide to the JavaScript stack','MEAN Machine - A beginner''s practical guide to the JavaScript stack',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Micro Frontends','Micro Frontends',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Miles R. Begin to Code with Javascript 2022','Miles R. Begin to Code with Javascript 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Modern CSS','Modern CSS',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Modern JavaScript Tools & Skills','Modern JavaScript Tools & Skills',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Modern JavaScript Web Development Cookbook Easy solutions to common and everyday JavaScript development problems by Federico Kereki','Modern JavaScript Web Development Cookbook Easy solutions to common and everyday JavaScript development problems by Federico Kereki',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'MongoDB, Express, Angular, and Node.js Fundamentals by Paul Aluyege, 2019','MongoDB, Express, Angular, and Node.js Fundamentals by Paul Aluyege, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Multimodal Interaction with W3C Standards - Toward Natural User Interfaces to Everything','Multimodal Interaction with W3C Standards - Toward Natural User Interfaces to Everything',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Nest.js- A Progressive Node.js Framework by Greg Magolan Jay Bell','Nest.js- A Progressive Node.js Framework by Greg Magolan Jay Bell',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Node Cookbook 4ed 2020','Node Cookbook 4ed 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Node.js - Tools and Skills, 2ed 2020','Node.js - Tools and Skills, 2ed 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Node.js 8 the Right Way - Practical, Server-Side JavaScript That Scales 2018.1','Node.js 8 the Right Way - Practical, Server-Side JavaScript That Scales 2018.1',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Node.js Web Development - Build secure and high performance web applications with Node.js 10 by David Herron','Node.js Web Development - Build secure and high performance web applications with Node.js 10 by David Herron',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Node.jsʵս','Node.jsʵս',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'OReilly Designing Web APIs 2018.9','OReilly Designing Web APIs 2018.9',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'OReilly Mastering Modular JavaScript 2018.9','OReilly Mastering Modular JavaScript 2018.9',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'OReilly.CSS.Pocket.Reference.5th.Edition.2018.4','OReilly.CSS.Pocket.Reference.5th.Edition.2018.4',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Practical HTML5 Projects','Practical HTML5 Projects',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Practical Machine Learning in JavaScript TensorFlow.js for Web Developers by Charlie Gerard','Practical Machine Learning in JavaScript TensorFlow.js for Web Developers by Charlie Gerard',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Practical Node.js - Building Real-World Scalable Web Apps by Azat Mardan','Practical Node.js - Building Real-World Scalable Web Apps by Azat Mardan',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Pro AngularJS','Pro AngularJS',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Pro Express.js - Master Express.js - The Node.js Framework For Your Web Development','Pro Express.js - Master Express.js - The Node.js Framework For Your Web Development',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Pro JavaScript Development - Coding, Capabilities, and Tooling','Pro JavaScript Development - Coding, Capabilities, and Tooling',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Professional JavaScript - Fast-track your web development career using the powerful features of advanced JavaScript','Professional JavaScript - Fast-track your web development career using the powerful features of advanced JavaScript',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Professional JavaScript for web developers by Frisbie, Matt','Professional JavaScript for web developers by Frisbie, Matt',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Programming PHP- Creating Dynamic Web Pages, 4th Edition','Programming PHP- Creating Dynamic Web Pages, 4th Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Programming TypeScript by Boris Cherny','Programming TypeScript by Boris Cherny',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Programming Voice Interfaces','Programming Voice Interfaces',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Programming with Types by Vlad Riscutia, 2019','Programming with Types by Vlad Riscutia, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Reactive Programming with RxJS 5 - Untangle Your Asynchronous JavaScript Code','Reactive Programming with RxJS 5 - Untangle Your Asynchronous JavaScript Code',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Rediscovering JavaScript - Master ES6, ES7, and ES8, 2018.6','Rediscovering JavaScript - Master ES6, ES7, and ES8, 2018.6',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Reliable JavaScript - How to Code Safely in the Worlds Most Dangerous Language','Reliable JavaScript - How to Code Safely in the Worlds Most Dangerous Language',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'REST API Development with Node.js - Manage and Understand the Full Capabilities of Successful REST Development, 2Ed by Fernando Doglio','REST API Development with Node.js - Manage and Understand the Full Capabilities of Successful REST Development, 2Ed by Fernando Doglio',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'RESTful Web API Design with Node.js 10 - Learn to create robust RESTful web services with Node.js, MongoDB, and Express.js, 3rd Edition (English Edition) by Valentin Bojinov, 2018','RESTful Web API Design with Node.js 10 - Learn to create robust RESTful web services with Node.js, MongoDB, and Express.js, 3rd Edition (English Edition) by Valentin Bojinov, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Roguelike Development with JavaScript Build and Publish Roguelike Genre Games with JavaScript and Phaser by Andre Alves Garzia','Roguelike Development with JavaScript Build and Publish Roguelike Genre Games with JavaScript and Phaser by Andre Alves Garzia',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Sams Teach Yourself JavaScript in 24 Hours, 6ed','Sams Teach Yourself JavaScript in 24 Hours, 6ed',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Scaling Your Node.js Apps - Progress Your Personal Projects to Production-Ready by Fernando Doglio, 2019','Scaling Your Node.js Apps - Progress Your Personal Projects to Production-Ready by Fernando Doglio, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Sekuloski R. JavaScript From Zero to Hero..Complete Guide...2022','Sekuloski R. JavaScript From Zero to Hero..Complete Guide...2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Serverless Applications with Node.js - Using AWS Lambda and Claudia.js by Aleksandar Simovic','Serverless Applications with Node.js - Using AWS Lambda and Claudia.js by Aleksandar Simovic',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Simplifying JavaScript 2018.4','Simplifying JavaScript 2018.4',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Simply Electron - Mastering Desktop Software Development with JavaScript 2020','Simply Electron - Mastering Desktop Software Development with JavaScript 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Speaking JavaScript - An In-Depth Guide for Programmers','Speaking JavaScript - An In-Depth Guide for Programmers',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Speaking JavaScript - Axel Rauschmayer','Speaking JavaScript - Axel Rauschmayer',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Structure and Interpretation of Computer Programs (JavaScript Adaptation) by Harold Abelson, Gerald Jay Sussman, Julie Sussman','Structure and Interpretation of Computer Programs (JavaScript Adaptation) by Harold Abelson, Gerald Jay Sussman, Julie Sussman',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Sveidqvist K. The Official Guide to Mermaid.js...2021','Sveidqvist K. The Official Guide to Mermaid.js...2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Art of Micro Frontends Build websites using compositional UIs that grow naturally as your application scales by Florian Rappl','The Art of Micro Frontends Build websites using compositional UIs that grow naturally as your application scales by Florian Rappl',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Book of CSS3','The Book of CSS3',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The definitive Node.js handbook by Flavio Copes, 2018','The definitive Node.js handbook by Flavio Copes, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Guide Of HTML5 AND JAVASCRIPT - Programming For Beginners','The Guide Of HTML5 AND JAVASCRIPT - Programming For Beginners',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Joy of javascript 2021','The Joy of javascript 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Modern JavaScript Collection (4 Volume Set)','The Modern JavaScript Collection (4 Volume Set)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Modern JavaScript Tutorial, Part I-III','The Modern JavaScript Tutorial, Part I-III',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Transitions and Animations in CSS Adding Motion with CSS','Transitions and Animations in CSS Adding Motion with CSS',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'TypeScript High Performance - Code for performance, use asynchronous programming and deliver resources efficiently','TypeScript High Performance - Code for performance, use asynchronous programming and deliver resources efficiently',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'TypeScript in 50 Lessons 2020','TypeScript in 50 Lessons 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'TypeScript Programming Language by TypeScript Publishing','TypeScript Programming Language by TypeScript Publishing',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'TypeScript Quickly','TypeScript Quickly',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Understanding-AJAX.chm','Understanding-AJAX.chm',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Vickler Andy Javascript Javascript basics for Beginners 2021','Vickler Andy Javascript Javascript basics for Beginners 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Web Application Defender''s Cookbook - Battling Hackers and Protecting Users','Web Application Defender''s Cookbook - Battling Hackers and Protecting Users',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Web Design Playground - HTML and CSS the Interactive Way','Web Design Playground - HTML and CSS the Interactive Way',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Web development and design foundations with HTML5 by Terry Felke-Morris, 2019','Web development and design foundations with HTML5 by Terry Felke-Morris, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Web of Deceit by John C. Dalglish','Web of Deceit by John C. Dalglish',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Web Page Recommendation Models- Theory and Algorithms','Web Page Recommendation Models- Theory and Algorithms',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Web Scalability for Startup Engineers (PDF)','Web Scalability for Startup Engineers (PDF)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Web-Based Projects that Rock the Class - Build Fully-Functional Web Apps and Learn Through Doing, 2019','Web-Based Projects that Rock the Class - Build Fully-Functional Web Apps and Learn Through Doing, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Webpack 5 Up and Running - A Quick and Practical Introduction to the JavaScript Application Bundler','Webpack 5 Up and Running - A Quick and Practical Introduction to the JavaScript Application Bundler',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'WebSocket Essentials - Building Apps with HTML5 WebSockets','WebSocket Essentials - Building Apps with HTML5 WebSockets',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Windows 10 Development Recipes - A Problem-Solution Approach in HTML and JavaScript','Windows 10 Development Recipes - A Problem-Solution Approach in HTML and JavaScript',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Working with Static Sites - Bringing the Power of Simplicity to Modern Sites','Working with Static Sites - Bringing the Power of Simplicity to Modern Sites',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'You Don''t Know JS - Async & Performance, Kyle Simpson, 2015','You Don''t Know JS - Async & Performance, Kyle Simpson, 2015',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'You Don''t Know JS - ES6 & Beyond, Kyle Simpson, 2015','You Don''t Know JS - ES6 & Beyond, Kyle Simpson, 2015',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'You Don''t Know JS - Scope & Closures, Kyle Simpson, 2014','You Don''t Know JS - Scope & Closures, Kyle Simpson, 2014',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'You Don''t Know JS - this & Object Prototypes, Kyle Simpson, 2014','You Don''t Know JS - this & Object Prototypes, Kyle Simpson, 2014',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'You Don''t Know JS - Types & Grammar, Kyle Simpson, 2015','You Don''t Know JS - Types & Grammar, Kyle Simpson, 2015',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'You Don''t Know JS - Up & Going, Kyle Simpson, 2015','You Don''t Know JS - Up & Going, Kyle Simpson, 2015',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'You Don''t Know JS Yet - Get Started, Kyle Simpson, 2020','You Don''t Know JS Yet - Get Started, Kyle Simpson, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Your First Week With Node.js, 2ed 2020','Your First Week With Node.js, 2ed 2020',false);

select max(id) from gict.tutorials;

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'101 Great Answers to the Toughest Interview Questions 2009','101 Great Answers to the Toughest Interview Questions 2009',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'101 UX Principles - A Definitive Design Guide by Will Grant, 2018.8','101 UX Principles - A Definitive Design Guide by Will Grant, 2018.8',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'2020 Product Research Guide - For Dropshipping  Ecommerce by Jesse OBrien','2020 Product Research Guide - For Dropshipping  Ecommerce by Jesse OBrien',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'97 Things Every Programmer Should Know','97 Things Every Programmer Should Know',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'97 Things Every Project Manager Should Know','97 Things Every Project Manager Should Know',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'97 Things Every Scrum Practitioner Should Know - Collective Wisdom from the Experts','97 Things Every Scrum Practitioner Should Know - Collective Wisdom from the Experts',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'97 Things Every Software Architect Should Know Collective Wisdom from the Experts by Richard Monson-Haefel','97 Things Every Software Architect Should Know Collective Wisdom from the Experts by Richard Monson-Haefel',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'A Brief History of Computing 3ed 2021','A Brief History of Computing 3ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'A Field Guide to Lies - Critical Thinking in the Information Age, Daniel J. Levitin, 2016','A Field Guide to Lies - Critical Thinking in the Information Age, Daniel J. Levitin, 2016',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'A Field Guide to Lies - Critical Thinking with Statistics and the Scientific Method, Daniel J. Levitin, 2019','A Field Guide to Lies - Critical Thinking with Statistics and the Scientific Method, Daniel J. Levitin, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'A Framework of Human Systems Engineering Applications and Case Studies by Holly A. Handley, Andreas Tolk','A Framework of Human Systems Engineering Applications and Case Studies by Holly A. Handley, Andreas Tolk',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'A Guide to the Automation Body of Knowledge by Nicolas Sands, Ian Verhappen, 2018','A Guide to the Automation Body of Knowledge by Nicolas Sands, Ian Verhappen, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'A Guide to the Project Management Body of Knowledge (PMBOK (R) Guide) (PMBOK? Guide) by Project Management Institute','A Guide to the Project Management Body of Knowledge (PMBOK (R) Guide) (PMBOK? Guide) by Project Management Institute',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'A Guide to the Project Management Body of Knowledge (PMBOK? Guide) - Seventh Edition by Project Management Institute 2','A Guide to the Project Management Body of Knowledge (PMBOK? Guide) - Seventh Edition by Project Management Institute 2',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'A Guide to the Project Management Body of Knowledge (PMBOK? Guide) - Seventh Edition by Project Management Institute','A Guide to the Project Management Body of Knowledge (PMBOK? Guide) - Seventh Edition by Project Management Institute',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'A Journey Towards Bio-inspired Techniques in Software Engineering','A Journey Towards Bio-inspired Techniques in Software Engineering',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'A Practical Approach to High-Performance Computing','A Practical Approach to High-Performance Computing',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'A Project Guide to UX Design - For user experience designers in the field or in the making 2012','A Project Guide to UX Design - For user experience designers in the field or in the making 2012',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'A Student''s Guide to Coding and Information Theory','A Student''s Guide to Coding and Information Theory',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'A-Z Of Digital Research Methods','A-Z Of Digital Research Methods',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Absolute Essentials of Strategic Management by Barry J. Witcher, 2020','Absolute Essentials of Strategic Management by Barry J. Witcher, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Abstract Dynamic Programming, 2nd Edition by Dimitri P Bertsekas','Abstract Dynamic Programming, 2nd Edition by Dimitri P Bertsekas',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Abstract Systems Theory','Abstract Systems Theory',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Action Research In Software Engineering_ Theory And Applications (2020)','Action Research In Software Engineering_ Theory And Applications (2020)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Adaptive Project Planning by Louise Worsley, Christopher Worsley, 2019','Adaptive Project Planning by Louise Worsley, Christopher Worsley, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Adaptive Software Development - A Collaborative Approach to Managing Complex Systems','Adaptive Software Development - A Collaborative Approach to Managing Complex Systems',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Advanced Computer Architecture And Parallel Processing','Advanced Computer Architecture And Parallel Processing',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Advanced Computing Technologies and Applications - Proceedings of 2nd International Conference on Advanced Computing Tech','Advanced Computing Technologies and Applications - Proceedings of 2nd International Conference on Advanced Computing Tech',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Advanced Content Delivery, Streaming, and Cloud Services','Advanced Content Delivery, Streaming, and Cloud Services',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Advanced Database Query Systems - Techniques, Applications and Technologies 1e','Advanced Database Query Systems - Techniques, Applications and Technologies 1e',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Advanced Distributed Consensus for Multiagent Systems 2021','Advanced Distributed Consensus for Multiagent Systems 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Advanced Process Control- Beyond Single Loop Control','Advanced Process Control- Beyond Single Loop Control',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Advanced Spatial Modulation Systems 2021','Advanced Spatial Modulation Systems 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Advanced Technologies for Microfinance - Solutions and Challenges','Advanced Technologies for Microfinance - Solutions and Challenges',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Advanced Topics in Types and Programming Languages','Advanced Topics in Types and Programming Languages',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Advanced Trends in ICT for Innovative Business Management by Katarzyna Szymczyk, Ibrahiem M. M. El Emary-','Advanced Trends in ICT for Innovative Business Management by Katarzyna Szymczyk, Ibrahiem M. M. El Emary-',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Advancements in Model-Driven Architecture in Software Engineering 2021','Advancements in Model-Driven Architecture in Software Engineering 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Advances in Computational Science and Computing','Advances in Computational Science and Computing',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Advances in Computer Science, Environment, Ecoinformatics, and Education, Part V','Advances in Computer Science, Environment, Ecoinformatics, and Education, Part V',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Advances in Computers, Volume 112','Advances in Computers, Volume 112',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Advances in Distribution Theory, Order Statistics, and Inference','Advances in Distribution Theory, Order Statistics, and Inference',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Advances in Information Processing and Protection','Advances in Information Processing and Protection',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Advances in Signal Processing - Theories, Algorithms, and System Control','Advances in Signal Processing - Theories, Algorithms, and System Control',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Advances in the Homotopy Analysis Method','Advances in the Homotopy Analysis Method',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Adventures In Snap Programming Learn To Design Exciting And Challenging Programs','Adventures In Snap Programming Learn To Design Exciting And Challenging Programs',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Agile - All You Need To Know About Agile Software Development','Agile - All You Need To Know About Agile Software Development',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Agile Essentials of Team and Project Management. Manifesto for Agile Software Development by Campbell, Alex','Agile Essentials of Team and Project Management. Manifesto for Agile Software Development by Campbell, Alex',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Agile Estimating and Planning','Agile Estimating and Planning',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Agile for Everybody - Creating Fast, Flexible, and Customer-First Organizations by Matt LeMay','Agile for Everybody - Creating Fast, Flexible, and Customer-First Organizations by Matt LeMay',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Agile Illustrated - A Visual Learner''s Guide to Agility (Visual Learning)','Agile Illustrated - A Visual Learner''s Guide to Agility (Visual Learning)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Agile Leadership Secret Practices and Tips for Successful Agile Leader (Agile Project management with Kanban Book 3) by Campbell, Alex [Campbell, Alex]','Agile Leadership Secret Practices and Tips for Successful Agile Leader (Agile Project management with Kanban Book 3) by Campbell, Alex [Campbell, Alex]',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Agile Model-Based Systems Engineering Cookbook, Improve system development by applying proven recipes for effective agile systems engineering 2021','Agile Model-Based Systems Engineering Cookbook, Improve system development by applying proven recipes for effective agile systems engineering 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Agile Project Management - The Step by Step Guide that You Must Have to Learn Project Management Correctly from the Beginning to the End by Eric Thompson, 2019','Agile Project Management - The Step by Step Guide that You Must Have to Learn Project Management Correctly from the Beginning to the End by Eric Thompson, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Agile Project Management For Dummies, 3rd Edition','Agile Project Management For Dummies, 3rd Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Agile Software Architecture - Aligning Agile Processes and Software Architectures 1e','Agile Software Architecture - Aligning Agile Processes and Software Architectures 1e',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Agile Software Development - Best Practices for Large Software Development Projects 2010','Agile Software Development - Best Practices for Large Software Development Projects 2010',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Agile software development - principles, patterns, and practices 2013','Agile software development - principles, patterns, and practices 2013',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Agile Software Development Teams (2016)','Agile Software Development Teams (2016)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Agile Software Requirements - Lean Requirements Practices for Teams, Programs, and the Enterprise 2011','Agile Software Requirements - Lean Requirements Practices for Teams, Programs, and the Enterprise 2011',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Agile Technical Practices Distilled - A Journey Toward Mastering Software Design','Agile Technical Practices Distilled - A Journey Toward Mastering Software Design',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Agile Technical Practices Distilled','Agile Technical Practices Distilled',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Agile Transformation Structures, Processes and Mindsets for the Digital Age by Neil Perkin','Agile Transformation Structures, Processes and Mindsets for the Digital Age by Neil Perkin',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Agile User Experience Design','Agile User Experience Design',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Algebra Driven Design, Elegant Software from Simple Building Blocks 2020','Algebra Driven Design, Elegant Software from Simple Building Blocks 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Algorithmic Thinking - A Problem-Based Introduction 2021','Algorithmic Thinking - A Problem-Based Introduction 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Allison C. Foundations of Computing...Introduction...2021','Allison C. Foundations of Computing...Introduction...2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'An Elegant Puzzle - Systems of Engineering Management by Will Larson, 2019','An Elegant Puzzle - Systems of Engineering Management by Will Larson, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'An Illustrated Guide to Linear Programming','An Illustrated Guide to Linear Programming',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'An Introduction to Computer Graphics for Artists','An Introduction to Computer Graphics for Artists',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'An Introduction to Healthcare Informatics_ Building Data-Driven Tools-Academic Press (2020)','An Introduction to Healthcare Informatics_ Building Data-Driven Tools-Academic Press (2020)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'An Introduction to Parallel Programming 2ed 2022','An Introduction to Parallel Programming 2ed 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'An Ugly Truth Inside Facebook''s Battle for Domination 2021','An Ugly Truth Inside Facebook''s Battle for Domination 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Analysis and Design of Next-Generation Software Architectures 5G, IoT, Blockchain, and Quantum Computing by Arthur M. Langer','Analysis and Design of Next-Generation Software Architectures 5G, IoT, Blockchain, and Quantum Computing by Arthur M. Langer',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Analysis and Management of Productivity and Efficiency in Production Systems for Goods and Services by Fabio Sartori Piran (Author) Daniel Pacheco Lacerda (Author) Luis Felipe Riehs Camargo (Author)','Analysis and Management of Productivity and Efficiency in Production Systems for Goods and Services by Fabio Sartori Piran (Author) Daniel Pacheco Lacerda (Author) Luis Felipe Riehs Camargo (Author)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Analytics Tools for Optimizing UX by Simon Mackie','Analytics Tools for Optimizing UX by Simon Mackie',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Aniche M. Effective Software Testing (MEAP) 2021','Aniche M. Effective Software Testing (MEAP) 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'API Design Patterns (MEAP Version 07) 2021','API Design Patterns (MEAP Version 07) 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Application Software Re-engineering','Application Software Re-engineering',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Applied Incident Response','Applied Incident Response',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Applied Qualitative Research Design - A Total Quality Framework Approach','Applied Qualitative Research Design - A Total Quality Framework Approach',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Applied Soft Computing. Techniques and Applications 2022','Applied Soft Computing. Techniques and Applications 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Approachable Accessibility - Planning for Success by Martine Dowden','Approachable Accessibility - Planning for Success by Martine Dowden',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'AR and VR Using the WebXR API Learn to Create Immersive Content with WebGL, Three.js, and A-Frame by Rakesh Baruah','AR and VR Using the WebXR API Learn to Create Immersive Content with WebGL, Three.js, and A-Frame by Rakesh Baruah',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Architecting Cloud Native Applications','Architecting Cloud Native Applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Architecting Cloud SaaS Software- Solutions or Products- Engineering Multi-tenanted Distributed Architecture Software','Architecting Cloud SaaS Software- Solutions or Products- Engineering Multi-tenanted Distributed Architecture Software',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Architecting for Scale - How to Maintain High Availability and Manage Risk in the Cloud, 2nd Edition','Architecting for Scale - How to Maintain High Availability and Manage Risk in the Cloud, 2nd Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Architecting The Digital Transformation_ Digital Business, Technology, Decision Support, Managemen','Architecting The Digital Transformation_ Digital Business, Technology, Decision Support, Managemen',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Architectural Patterns_ Uncover essential patterns in the most indispensable realm of enterprise architecture (2017','Architectural Patterns_ Uncover essential patterns in the most indispensable realm of enterprise architecture (2017',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Architecture and Adaptation- From Cybernetics to Tangible Computing','Architecture and Adaptation- From Cybernetics to Tangible Computing',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Arithmetic and Logic in Computer Systems','Arithmetic and Logic in Computer Systems',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Ask Your Developer by Jeff Lawson','Ask Your Developer by Jeff Lawson',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Assembly Programming and Computer Architecture for Software Engineers 2018','Assembly Programming and Computer Architecture for Software Engineers 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Assessing Vendors - A Hands-On Guide to Assessing Infosec and IT Vendors','Assessing Vendors - A Hands-On Guide to Assessing Infosec and IT Vendors',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Asset Management for Infrastructure Systems - Energy and Water','Asset Management for Infrastructure Systems - Energy and Water',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Asset Recovery Handbook. A Guide for Practitioners 2021','Asset Recovery Handbook. A Guide for Practitioners 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Astrom K. Feedback Systems. An Introduction...2ed 2021','Astrom K. Feedback Systems. An Introduction...2ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Automotive Software Architectures. An Introduction 2ed 2021','Automotive Software Architectures. An Introduction 2ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Avoiding IT Meltdown - Practical Hints And Tips For Managing Technology','Avoiding IT Meltdown - Practical Hints And Tips For Managing Technology',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'AWS Certified Data Analytics Study Guide 2021','AWS Certified Data Analytics Study Guide 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Beard R. Introduction to Feedback Control...Design Studies 2021','Beard R. Introduction to Feedback Control...Design Studies 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Beautiful Users - Designing for People','Beautiful Users - Designing for People',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Becketti S. Introduction to Time Series Using Stata 2020','Becketti S. Introduction to Time Series Using Stata 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Become an Effective Software Engineering Manager, How to Be the Leader Your Development Team Needs 2020','Become an Effective Software Engineering Manager, How to Be the Leader Your Development Team Needs 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Becoming a Better Programmer_A Handbook for People Who Care About Code-O''Reilly Media(2014)','Becoming a Better Programmer_A Handbook for People Who Care About Code-O''Reilly Media(2014)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Becoming an Agile Software Architect 2021','Becoming an Agile Software Architect 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Becoming an Ethical Hacker by Gary Rivlin','Becoming an Ethical Hacker by Gary Rivlin',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Becoming Functional - Steps for Transforming Into a Functional Programmer','Becoming Functional - Steps for Transforming Into a Functional Programmer',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Beginner''s Step-by-Step Coding Course- Learn Computer Programming the Easy Way','Beginner''s Step-by-Step Coding Course- Learn Computer Programming the Easy Way',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Beginners Guide to Ethical Hacking and Penetration Testing (2017)','Beginners Guide to Ethical Hacking and Penetration Testing (2017)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'BEGINNERS GUIDE TO HACKING Your complete start up guide to start hacking','BEGINNERS GUIDE TO HACKING Your complete start up guide to start hacking',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Beginning Design Technology','Beginning Design Technology',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Beginning Programming All-In-One Desk Reference For Dummies','Beginning Programming All-In-One Desk Reference For Dummies',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Beginning Programming in 24 Hours, Sams Teach Yourself 4th Edition','Beginning Programming in 24 Hours, Sams Teach Yourself 4th Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Beginning Rust - Get Started with Rust 2021 Edition','Beginning Rust - Get Started with Rust 2021 Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Belanger C., Singh B. Git Apprentice 2ed 2021','Belanger C., Singh B. Git Apprentice 2ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Bermejo P. Building Software Platforms. A Guide...2021','Bermejo P. Building Software Platforms. A Guide...2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Best Practices for Graphic Designers, Color Works Right - Ways of Applying Color in Branding, Wayfinding, Information Design, Digital Environments and Pretty Much Everywhere Else by Eddie Opara, John Ca','Best Practices for Graphic Designers, Color Works Right - Ways of Applying Color in Branding, Wayfinding, Information Design, Digital Environments and Pretty Much Everywhere Else by Eddie Opara, John Ca',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Better Game Characters by Design- A Psychological Approach (The Morgan Kaufmann Series in Interactive 3d Technology)','Better Game Characters by Design- A Psychological Approach (The Morgan Kaufmann Series in Interactive 3d Technology)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Better Software - Winter 2018','Better Software - Winter 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Beyond Agile - What is the next big development paradigm','Beyond Agile - What is the next big development paradigm',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Beyond Aviation Human Factors - Safety in High Technology Systems','Beyond Aviation Human Factors - Safety in High Technology Systems',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Bhatti J., Corleissen Z., Lambourne J. Docs for Developers...2021','Bhatti J., Corleissen Z., Lambourne J. Docs for Developers...2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Biele C.Human Movements in Human-Computer Interaction (HCI) 2022','Biele C.Human Movements in Human-Computer Interaction (HCI) 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'BIM for Design Firms Data Rich Architecture at Small and Medium Scales by Fran?ois L��vy, Jeffrey W. Ouellette','BIM for Design Firms Data Rich Architecture at Small and Medium Scales by Fran?ois L��vy, Jeffrey W. Ouellette',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Binary Code Fingerprinting for Cybersecurity - Application to Malicious Code Fingerprinting','Binary Code Fingerprinting for Cybersecurity - Application to Malicious Code Fingerprinting',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Bitwise, A Life in Code by David Auerbach','Bitwise, A Life in Code by David Auerbach',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Bjorner D. Domain Science and Engineering...Software Devel. 2021','Bjorner D. Domain Science and Engineering...Software Devel. 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Blueprints - Creating, Describing, and Implementing Designs for Larger-scale Software Projects ver.2.2 2020','Blueprints - Creating, Describing, and Implementing Designs for Larger-scale Software Projects ver.2.2 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Bottlenecks - Aligning UX Design with User Psychology by David C. Evans, 1e, 2017','Bottlenecks - Aligning UX Design with User Psychology by David C. Evans, 1e, 2017',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Brain-Computer Interface Research - A State-of-the-Art Summary','Brain-Computer Interface Research - A State-of-the-Art Summary',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Brain-Inspired Computing','Brain-Inspired Computing',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Bridging the Gap between Requirements Engineering and Software Architecture - A Problem-Oriented and Quality-Driven Method (2017)','Bridging the Gap between Requirements Engineering and Software Architecture - A Problem-Oriented and Quality-Driven Method (2017)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Building a Career in Software. A Comprehensive Guide...2020','Building a Career in Software. A Comprehensive Guide...2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Building a Data Integration Team - Skills, Requirements, and Solutions for Designing Integrations by Jarrett Goldfedder, 2020','Building a Data Integration Team - Skills, Requirements, and Solutions for Designing Integrations by Jarrett Goldfedder, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Building Analytics Teams Harnessing Analytics And Artificial Intelligence For Business Improvement 2020','Building Analytics Teams Harnessing Analytics And Artificial Intelligence For Business Improvement 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Building Cross-Platform GUI Applications with Fyne by Andrew Williams','Building Cross-Platform GUI Applications with Fyne by Andrew Williams',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Building Secure and Reliable Systems - Best Practices for Designing, Implementing, and Maintaining Systems','Building Secure and Reliable Systems - Best Practices for Designing, Implementing, and Maintaining Systems',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Building Surveys & Reports, 4th Edition','Building Surveys & Reports, 4th Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Building the Realtime User Experience','Building the Realtime User Experience',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Burch M. Eye Tracking and Visual Analytics 2022','Burch M. Eye Tracking and Visual Analytics 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Business Analytics Technology for Humanity, Sumit Chakraborty, Suryashis Chakraborty, 2019','Business Analytics Technology for Humanity, Sumit Chakraborty, Suryashis Chakraborty, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Business Thinking for Designers by Ryan Rumsey, 2020','Business Thinking for Designers by Ryan Rumsey, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Business-Driven IT-Wide Agile (scrum) and Kanban (Lean) Implementation An Action Guide for Business and IT Leaders by Andrew Thu Pham, David Khoi Pham','Business-Driven IT-Wide Agile (scrum) and Kanban (Lean) Implementation An Action Guide for Business and IT Leaders by Andrew Thu Pham, David Khoi Pham',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Case Studies for System Analysis  Design Projects (Revised Preliminary Edition) by Alan Paradise','Case Studies for System Analysis  Design Projects (Revised Preliminary Edition) by Alan Paradise',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Castillo F. Managing Information Technology 2016','Castillo F. Managing Information Technology 2016',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Castro L. Software Usability 2022','Castro L. Software Usability 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'[change management]','[change management]',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Characteristics of the medium by Edwards W','Characteristics of the medium by Edwards W',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Chatterjee A. Problems on Array.For Interviews..Programming 2021','Chatterjee A. Problems on Array.For Interviews..Programming 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'City Imaging - Regeneration, Renewal and Decay','City Imaging - Regeneration, Renewal and Decay',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Clean agile  back to basics by Robert C. Martin','Clean agile  back to basics by Robert C. Martin',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Clean Agile - Back to Basics','Clean Agile - Back to Basics',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Clean Architecture - A Craftsmans Guide to Software Structure and Design 1e','Clean Architecture - A Craftsmans Guide to Software Structure and Design 1e',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Clean Architecture - Advanced and Effective Strategies Using Clean Architecture Principles by Elijan Lewis','Clean Architecture - Advanced and Effective Strategies Using Clean Architecture Principles by Elijan Lewis',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Clean Architecture - Comprehensive Beginners Guide to Learn and Understand Clean Architecture','Clean Architecture - Comprehensive Beginners Guide to Learn and Understand Clean Architecture',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Clean Architecture - Tips and Tricks to Software and Programming Using Clean Architecture Theories','Clean Architecture - Tips and Tricks to Software and Programming Using Clean Architecture Theories',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Clean Code - A Handbook of Agile Software Craftsmanship','Clean Code - A Handbook of Agile Software Craftsmanship',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Clean Code - Advanced and Effective Strategies To Use Clean Code Methods','Clean Code - Advanced and Effective Strategies To Use Clean Code Methods',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Clean Code - Advanced Guide to Learn the Realms of Clean Code from A-Z','Clean Code - Advanced Guide to Learn the Realms of Clean Code from A-Z',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Clean Code - Best Tips and Tricks in the World of Clean Coding 2020','Clean Code - Best Tips and Tricks in the World of Clean Coding 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Cleanroom Software Engineering- Technology and Process','Cleanroom Software Engineering- Technology and Process',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Code as Creative Medium. A Handbook for Computational Art and Design 2021','Code as Creative Medium. A Handbook for Computational Art and Design 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Codecharts - Roadmaps and blueprints for object-oriented programs','Codecharts - Roadmaps and blueprints for object-oriented programs',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Coding Art - The Four Steps to Creative Programming with the Processing Language 2021','Coding Art - The Four Steps to Creative Programming with the Processing Language 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Coding Freedom - The Ethics and Aesthetics of Hacking','Coding Freedom - The Ethics and Aesthetics of Hacking',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Cognitive Readiness in Project Teams - Reducing Project Complexity and Increasing Success in Project Management, 2019','Cognitive Readiness in Project Teams - Reducing Project Complexity and Increasing Success in Project Management, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Collaborative Product Design- Help Any Team Build a Better Experience','Collaborative Product Design- Help Any Team Build a Better Experience',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Communicating project management a participatory rhetoric for development teams by Lauren, Benjamin','Communicating project management a participatory rhetoric for development teams by Lauren, Benjamin',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Company-wide Agility with Beyond Budgeting, Open Space & Sociocracy - Survive & Thrive on Disruption','Company-wide Agility with Beyond Budgeting, Open Space & Sociocracy - Survive & Thrive on Disruption',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Competitive Programming 3','Competitive Programming 3',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Complete Guide to Test Automation Techniques, Practices, and Patterns for Building and Maintaining Effective Software Projects by Arnon Axelrod','Complete Guide to Test Automation Techniques, Practices, and Patterns for Building and Maintaining Effective Software Projects by Arnon Axelrod',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Complex Enterprise Architecture_ A New Adaptive Systems Approach-Apress (2019)','Complex Enterprise Architecture_ A New Adaptive Systems Approach-Apress (2019)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Hardware And Networking Basic Concepts','Computer Hardware And Networking Basic Concepts',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Law','Computer Law',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Networking - The Ultimate guide to the Digital Communication Network','Computer Networking - The Ultimate guide to the Digital Communication Network',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer networking first step- The Essential Guide To Networking','Computer networking first step- The Essential Guide To Networking',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Networking from LANs to WANs - Hardware, Software and Security','Computer Networking from LANs to WANs - Hardware, Software and Security',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Organization and Architecture Engineering Handbook','Computer Organization and Architecture Engineering Handbook',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Programming and Utilization (GTU) 4ed 2018','Computer Programming and Utilization (GTU) 4ed 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Programming_ The Most Complete Crash Course for Learning The Perfect Skills To Coding Your Project Even If You Are an Absolute Beginner. Learn and Master The ','Computer Programming_ The Most Complete Crash Course for Learning The Perfect Skills To Coding Your Project Even If You Are an Absolute Beginner. Learn and Master The ',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Science Illuminated 7ed 2020','Computer Science Illuminated 7ed 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Computer Security And The Internet- Tools And Jewels (Information Security and Cryptography)','Computer Security And The Internet- Tools And Jewels (Information Security and Cryptography)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Conceptual design for interactive systems_ designing for performance and user experience (2015)','Conceptual design for interactive systems_ designing for performance and user experience (2015)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Concurrency Control in Distributed System Using Mutual Exclusion','Concurrency Control in Distributed System Using Mutual Exclusion',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Concurrent Patterns and Best Practices by Atul S. Khot','Concurrent Patterns and Best Practices by Atul S. Khot',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Confident Coding. Master the fundamentals of code and supercharge your career 2ed 2020','Confident Coding. Master the fundamentals of code and supercharge your career 2ed 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Configuration Management- Expert Guidance for It Service Managers and Practitioners','Configuration Management- Expert Guidance for It Service Managers and Practitioners',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Constructability - a tool for project management, Khan, Sharmin, 2019','Constructability - a tool for project management, Khan, Sharmin, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Continuous Architecture in Practice Software Architecture in the Age of Agility and DevOps (Addison-Wesley Signature Series (Vernon)) by Murat Erder, Pierre Pureur, Eoin Woods','Continuous Architecture in Practice Software Architecture in the Age of Agility and DevOps (Addison-Wesley Signature Series (Vernon)) by Murat Erder, Pierre Pureur, Eoin Woods',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Continuous Delivery Pipelines - How to Build Better Software Faster by Dave Farley','Continuous Delivery Pipelines - How to Build Better Software Faster by Dave Farley',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Continuous Integration, Delivery, and Deployment','Continuous Integration, Delivery, and Deployment',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Contractual Management - Managing Through Contracts by Ralph Schuhmann, Bert Eichhorn, 2020','Contractual Management - Managing Through Contracts by Ralph Schuhmann, Bert Eichhorn, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Conversations with Things UX Design for Chat and Voice by Deibel, Diana, Evanhoe, Rebecca (z-lib.org)','Conversations with Things UX Design for Chat and Voice by Deibel, Diana, Evanhoe, Rebecca (z-lib.org)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Coordination in Large-Scale Agile Software Development - Integrating Conditions and Configurations in Multiteam Systems 2017','Coordination in Large-Scale Agile Software Development - Integrating Conditions and Configurations in Multiteam Systems 2017',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Corporate Governance and Its Implications...2021','Corporate Governance and Its Implications...2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Cracking the Behavioral Interviews - for Software Engineers','Cracking the Behavioral Interviews - for Software Engineers',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Cracking the PM Career The Skills, Frameworks, and Practices To Become a Great Product Manager by Bavaro, Jackie McDowell, Gayle','Cracking the PM Career The Skills, Frameworks, and Practices To Become a Great Product Manager by Bavaro, Jackie McDowell, Gayle',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Creating Augmented and Virtual Realities - Theory and Practice for Next-Generation Spatial Computing (2019)','Creating Augmented and Virtual Realities - Theory and Practice for Next-Generation Spatial Computing (2019)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Creative Confidence Unleashing the Creative Potential Within Us All by Tom Kelley, David Kelley','Creative Confidence Unleashing the Creative Potential Within Us All by Tom Kelley, David Kelley',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Critical Code Studies By Mark C. Marino 2020','Critical Code Studies By Mark C. Marino 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Critical Systems Thinking and the Management of Complexity - Responsible Leadership for a Complex World, Michael C. Jackson, 2019','Critical Systems Thinking and the Management of Complexity - Responsible Leadership for a Complex World, Michael C. Jackson, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Critical Thinking and the Process of Evidence-Based Practice by Eileen Gambrill, 2018','Critical Thinking and the Process of Evidence-Based Practice by Eileen Gambrill, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Critical Thinking in Teaching & Learning - The Nonintuitive New Science of Effective Learning, Felipe Fregni, 2019','Critical Thinking in Teaching & Learning - The Nonintuitive New Science of Effective Learning, Felipe Fregni, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Crowe A. The PMP Exam. How to Pass on Your First Try...6ed 2021','Crowe A. The PMP Exam. How to Pass on Your First Try...6ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Cryptography for Developers 1e','Cryptography for Developers 1e',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Cryptography- An Introduction (Student Mathematical Library, Vol. 18)','Cryptography- An Introduction (Student Mathematical Library, Vol. 18)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Cryptors Hacker Manual','Cryptors Hacker Manual',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Cultural Translation of Management Philosophy in Asian Companies - Its Emergence, Transmission, and Diffusion in the Global Era by Izumi Mitsui, 2020','Cultural Translation of Management Philosophy in Asian Companies - Its Emergence, Transmission, and Diffusion in the Global Era by Izumi Mitsui, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Cyber-Enabled Intelligence, 2020','Cyber-Enabled Intelligence, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Cyber-Physical Systems in the Built Environment, 2020','Cyber-Physical Systems in the Built Environment, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'CyBok - The Cyber Security Body of Knowledge by Awais Rashid, Howard Chivers, 2018','CyBok - The Cyber Security Body of Knowledge by Awais Rashid, Howard Chivers, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Data Analytics for Engineering and Construction Project Risk Management by Ivan Damnjanovic, Kenneth Reinschmidt, 2020','Data Analytics for Engineering and Construction Project Risk Management by Ivan Damnjanovic, Kenneth Reinschmidt, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Data analytics in project management by Spalek, Seweryn, 2019','Data analytics in project management by Spalek, Seweryn, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Data Dictatorships- The Arms Race to Hack Humankind','Data Dictatorships- The Arms Race to Hack Humankind',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Data Management And Analysis - Case Studies In Education, Healthcare And Beyond by Reda Alhajj, Mohammad Moshirpour, Behrouz Far, 2020','Data Management And Analysis - Case Studies In Education, Healthcare And Beyond by Reda Alhajj, Mohammad Moshirpour, Behrouz Far, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Data Politics - Worlds, Subjects, Rights (Routledge Studies in International Political Sociology)','Data Politics - Worlds, Subjects, Rights (Routledge Studies in International Political Sociology)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Data Protection - A Practical Guide to UK and EU Law, 5th Edition','Data Protection - A Practical Guide to UK and EU Law, 5th Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Data Skills for Media','Data Skills for Media',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Data-Centric Business and Applications v2 - Evolvements in Business Information Processing and Management, 2019','Data-Centric Business and Applications v2 - Evolvements in Business Information Processing and Management, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Data-Centric Business And Applications v4 - Towards Software Development by Aneta Poniszewska-Mara��da, Natalia Kryvinska, Stanis?aw Jarz?bek, Lech Madeyski','Data-Centric Business And Applications v4 - Towards Software Development by Aneta Poniszewska-Mara��da, Natalia Kryvinska, Stanis?aw Jarz?bek, Lech Madeyski',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Data-Centric Business and Applications v5 - ICT Systems-Theory, Radio-Electronics, Information Technologies and Cybersecurity by Tamara Radivilova, Dmytro Ageyev, Natalia Kryvinska','Data-Centric Business and Applications v5 - ICT Systems-Theory, Radio-Electronics, Information Technologies and Cybersecurity by Tamara Radivilova, Dmytro Ageyev, Natalia Kryvinska',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Data-oriented design - software engineering for limited resources and short schedules-Richard Fabian (2018)','Data-oriented design - software engineering for limited resources and short schedules-Richard Fabian (2018)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'DBMS- Database Management System','DBMS- Database Management System',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Decision Support for Product Development Using Computational Intelligence for Information Acquisition in Enterprise Databases by Marcin Relich','Decision Support for Product Development Using Computational Intelligence for Information Acquisition in Enterprise Databases by Marcin Relich',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Deep Data Analytics for New Product Development by Walter R. Paczkowski, 2020','Deep Data Analytics for New Product Development by Walter R. Paczkowski, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Delta CX - The Truth About How Valuing Customer Experience Can Transform Your Business','Delta CX - The Truth About How Valuing Customer Experience Can Transform Your Business',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Design and Management of Production Systems - Practice Book by E. Cagno, R. Mangiaracina, G. Micheli, A. Neri, A. Trianni','Design and Management of Production Systems - Practice Book by E. Cagno, R. Mangiaracina, G. Micheli, A. Neri, A. Trianni',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Design Driven Testing - Test Smarter, Not Harder','Design Driven Testing - Test Smarter, Not Harder',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Design for How People Think - Using Brain Science to Build Better Products, John Whalen, 2019','Design for How People Think - Using Brain Science to Build Better Products, John Whalen, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Design For Information','Design For Information',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Design For Six Sigma A Roadmap For Product Development Ebook Lib - Mcgraw Hill','Design For Six Sigma A Roadmap For Product Development Ebook Lib - Mcgraw Hill',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Design It! - From Programmer to Software Architect 2017.10','Design It! - From Programmer to Software Architect 2017.10',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Design Systems-Alla Kholmatova','Design Systems-Alla Kholmatova',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Design Thinking - A Guide to Creative Problem Solving for Everyone by Andrew Pressman','Design Thinking - A Guide to Creative Problem Solving for Everyone by Andrew Pressman',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Design Thinking And The New Spirit Of Capitalism - Sociological Reflections On Innovation Culture, Tim Seitz, 2020','Design Thinking And The New Spirit Of Capitalism - Sociological Reflections On Innovation Culture, Tim Seitz, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Design Thinking at Work - How Innovative Organizations Are Embracing Design, David Dunne, 2018','Design Thinking at Work - How Innovative Organizations Are Embracing Design, David Dunne, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Design Thinking Handbook by Eli Woolery, 2019','Design Thinking Handbook by Eli Woolery, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Design Thinking Research - Building Innovation Eco-Systems, 2014','Design Thinking Research - Building Innovation Eco-Systems, 2014',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Design Thinking Research - Building Innovators, Hasso Plattner, Christoph Meinel, Larry Leifer, 2015','Design Thinking Research - Building Innovators, Hasso Plattner, Christoph Meinel, Larry Leifer, 2015',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Design Thinking Research - Interrogating the Doing 2021','Design Thinking Research - Interrogating the Doing 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Design Thinking Research - Investigating Design Team Performance, Christoph Meinel, Larry Leifer, 2020','Design Thinking Research - Investigating Design Team Performance, Christoph Meinel, Larry Leifer, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Design Thinking Research - Looking Further - Design Thinking Beyond Solution-Fixation, Christoph Meinel, Larry Leifer, 2019','Design Thinking Research - Looking Further - Design Thinking Beyond Solution-Fixation, Christoph Meinel, Larry Leifer, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Design Thinking Research - Making Design Thinking Foundational, Hasso Plattner, Christoph Meinel, Larry Leifer, 2016','Design Thinking Research - Making Design Thinking Foundational, Hasso Plattner, Christoph Meinel, Larry Leifer, 2016',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Design Thinking Research - Making Distinctions - Collaboration versus Cooperation, Hasso Plattner, Christoph Meinel, Larry Leifer, 2018','Design Thinking Research - Making Distinctions - Collaboration versus Cooperation, Hasso Plattner, Christoph Meinel, Larry Leifer, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Design Thinking Research - Measuring Performance in Context, 2012','Design Thinking Research - Measuring Performance in Context, 2012',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Design Thinking Research - Studying Co-Creation in Practice, 2012','Design Thinking Research - Studying Co-Creation in Practice, 2012',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Design Thinking Research - Taking Breakthrough Innovation Home, Hasso Plattner, Christoph Meinel, Larry Leifer, 2016','Design Thinking Research - Taking Breakthrough Innovation Home, Hasso Plattner, Christoph Meinel, Larry Leifer, 2016',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Design Thinking to Digital Thinking, Kaushik Kumar, Divya Zindani, J. Paulo Davim, 2020','Design Thinking to Digital Thinking, Kaushik Kumar, Divya Zindani, J. Paulo Davim, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Designed for Digital - How to Architect Your Business for Sustained Success by Jeanne W. Ross Cynthia M. Beath Martin Mocker, 2019','Designed for Digital - How to Architect Your Business for Sustained Success by Jeanne W. Ross Cynthia M. Beath Martin Mocker, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Designing Across Senses - A Multimodal Approach to Product Design by Christine W. Park, John Alderman, 2018','Designing Across Senses - A Multimodal Approach to Product Design by Christine W. Park, John Alderman, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Designing API-First Enterprise Architectures on Azure 2021','Designing API-First Enterprise Architectures on Azure 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Designing Digital Products for Kids Deliver User Experiences That Delight Kids, Parents, and Teachers by Rubens Cantuni','Designing Digital Products for Kids Deliver User Experiences That Delight Kids, Parents, and Teachers by Rubens Cantuni',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Designing Digital Work Concepts and Methods for Human-centered Digitization by Stefan Oppl, Christian Stary','Designing Digital Work Concepts and Methods for Human-centered Digitization by Stefan Oppl, Christian Stary',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Designing Elixir Systems With OTP- Write Highly Scalable, Self-healing Software with Layers','Designing Elixir Systems With OTP- Write Highly Scalable, Self-healing Software with Layers',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Designing Enterprise Architecture Frameworks Integrating Business Processes with IT Infrastructure by Liviu Gabriel Cretu','Designing Enterprise Architecture Frameworks Integrating Business Processes with IT Infrastructure by Liviu Gabriel Cretu',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Designing Enterprise Information Systems - Merging Enterprise Modeling And Software Specification, Boris Shishkov, 2020, Springer','Designing Enterprise Information Systems - Merging Enterprise Modeling And Software Specification, Boris Shishkov, 2020, Springer',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Designing Event-Driven Systems_ Concepts and Patterns for Streaming Services with Apache Kafka (2018)','Designing Event-Driven Systems_ Concepts and Patterns for Streaming Services with Apache Kafka (2018)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Designing for the User Experience in Learning Systems (2018)','Designing for the User Experience in Learning Systems (2018)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Designing Performance Measurement Systems Theory and Practice of Key Performance Indicators by Fiorenzo Franceschini, Maurizio Galetto, Domenico Maisano','Designing Performance Measurement Systems Theory and Practice of Key Performance Indicators by Fiorenzo Franceschini, Maurizio Galetto, Domenico Maisano',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Designing Software Architectures - A Practical Approach','Designing Software Architectures - A Practical Approach',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Designing Successful Target-Date Strategies for Defined Contribution Plans- Putting Participants on the Optimal Glide Path','Designing Successful Target-Date Strategies for Defined Contribution Plans- Putting Participants on the Optimal Glide Path',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Designing User Experience_ A Guide to HCI, UX and Interaction Design (2019)','Designing User Experience_ A Guide to HCI, UX and Interaction Design (2019)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Designing Virtual Reality Systems- The Structured Approach','Designing Virtual Reality Systems- The Structured Approach',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Designing Voice User Interfaces - Principles of Conversational Experiences','Designing Voice User Interfaces - Principles of Conversational Experiences',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Designing Web Navigation- Optimizing The User Experience','Designing Web Navigation- Optimizing The User Experience',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Designing with Data - Improving the User Experience with A-B Testing 2017','Designing with Data - Improving the User Experience with A-B Testing 2017',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Developing A Computer Operating System From Scratch','Developing A Computer Operating System From Scratch',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'DevOps Adoption Strategies Principles, Processes, Tools, and Trends Embracing DevOps through effective culture, people, and processes by Coupland, Martyn','DevOps Adoption Strategies Principles, Processes, Tools, and Trends Embracing DevOps through effective culture, people, and processes by Coupland, Martyn',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Digital Design for Print and Web- An Introduction to Theory, Principles, and Techniques','Digital Design for Print and Web- An Introduction to Theory, Principles, and Techniques',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Digital Technology. Projects, Certification,...2021','Digital Technology. Projects, Certification,...2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Digital Tools for Qualitative Research','Digital Tools for Qualitative Research',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Digital Transformation of Enterprise Architecture by Vivek Kale','Digital Transformation of Enterprise Architecture by Vivek Kale',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Digital Video And Audio Broadcasting Technology A Practical Engineering Guide by Walter Fischer','Digital Video And Audio Broadcasting Technology A Practical Engineering Guide by Walter Fischer',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Digitising Enterprise in an Information Age 2021','Digitising Enterprise in an Information Age 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Discussions in User Experience - Healthcare for User Frustration','Discussions in User Experience - Healthcare for User Frustration',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Disruptive Fintech - The Coming Wave of Innovation in Financial Services with Thought Leadership Provided by CEOs','Disruptive Fintech - The Coming Wave of Innovation in Financial Services with Thought Leadership Provided by CEOs',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Distributed Real-Time Architecture for Mixed-Criticality Systems (2018)','Distributed Real-Time Architecture for Mixed-Criticality Systems (2018)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Distributed Source Coding Theory, Algorithms and Applications','Distributed Source Coding Theory, Algorithms and Applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Distributed Systems - Concepts and Design Ed 5','Distributed Systems - Concepts and Design Ed 5',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Distributed Tracing in Practice - Instrumenting, Analyzing, and Debugging Microservices, 2020','Distributed Tracing in Practice - Instrumenting, Analyzing, and Debugging Microservices, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Doing Agile Right - Steven H. Berez','Doing Agile Right - Steven H. Berez',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Domain -Driven Design Quickly','Domain -Driven Design Quickly',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Driving Sustainability to Business Success- The DS Factor Management System Integration and Automation','Driving Sustainability to Business Success- The DS Factor Management System Integration and Automation',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Dropshipping E-Commerce Business Model 2020- A Step-by-Step Guide With The Latest Techniques On How To Start Building','Dropshipping E-Commerce Business Model 2020- A Step-by-Step Guide With The Latest Techniques On How To Start Building',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Due Date-Related Scheduling with Two Agents- Models and Algorithms','Due Date-Related Scheduling with Two Agents- Models and Algorithms',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Dynamical Systems - Theories and Applications','Dynamical Systems - Theories and Applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'E-Strategies for Resource Management Systems','E-Strategies for Resource Management Systems',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Eaton J. GNU Octave. A high-level interactive language..6ed 2022','Eaton J. GNU Octave. A high-level interactive language..6ed 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Effective Methods for Software Engineering 2020','Effective Methods for Software Engineering 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Effective Programming- More Than Writing Code','Effective Programming- More Than Writing Code',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Effective project management - guidance and checklists for engineering and construction, Ward, Garth, 2018','Effective project management - guidance and checklists for engineering and construction, Ward, Garth, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Effective Project Management - Traditional, Agile, Extreme, Hybrid, 8ed 2019, by Robert K. Wysocki','Effective Project Management - Traditional, Agile, Extreme, Hybrid, 8ed 2019, by Robert K. Wysocki',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Effective Project Management Traditional Adaptive Extreme John Wiley Sons','Effective Project Management Traditional Adaptive Extreme John Wiley Sons',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Effective Research Methods for Any Project by Amanda M. Rosen, 2019','Effective Research Methods for Any Project by Amanda M. Rosen, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'eGods Faith Versus Fantasy in Computer Gaming - William Sims Bainbridge','eGods Faith Versus Fantasy in Computer Gaming - William Sims Bainbridge',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Emotional Design Why We Love Or Hate Everyday Things Donald Norman','Emotional Design Why We Love Or Hate Everyday Things Donald Norman',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'End-to-end Data Analytics for Product Development...2020','End-to-end Data Analytics for Product Development...2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Energy Storage and Management for Electric Vehicles by James Marco, Quang Truong Dinh, Stefano Longo','Energy Storage and Management for Electric Vehicles by James Marco, Quang Truong Dinh, Stefano Longo',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Engineered To Speak Helping You Create And Deliver Engaging Technical Presentations by Alexa S. Chilcutt, Adam J. Brooks','Engineered To Speak Helping You Create And Deliver Engaging Technical Presentations by Alexa S. Chilcutt, Adam J. Brooks',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Engineering a Compiler, Second Edition','Engineering a Compiler, Second Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Engineering for the future by Shri Pradeep Chaturvedi, FIE, FNAE Chairman, Interdisciplinary Coordination Committee The Institution of Engineers (India)','Engineering for the future by Shri Pradeep Chaturvedi, FIE, FNAE Chairman, Interdisciplinary Coordination Committee The Institution of Engineers (India)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Engineering Problems for Undergraduate Students Over 250 Worked Examples with Step-by-Step Guidance by Xian Wen Ng','Engineering Problems for Undergraduate Students Over 250 Worked Examples with Step-by-Step Guidance by Xian Wen Ng',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Engineering Project Management by Neil Siegel, 2019','Engineering Project Management by Neil Siegel, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Engineering Project Management for the Global High-Technology Industry','Engineering Project Management for the Global High-Technology Industry',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Enterprise API Management, Design and Deliver Valuable Business APIs','Enterprise API Management, Design and Deliver Valuable Business APIs',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Enterprise architecture and service-oriented architecture by Frederik L. S?rensen (editor)','Enterprise architecture and service-oriented architecture by Frederik L. S?rensen (editor)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Enterprise Architecture at Work- Modelling, Communication and Analysis, 2nd Edition','Enterprise Architecture at Work- Modelling, Communication and Analysis, 2nd Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Enterprise Architecture for Digital Business...2021','Enterprise Architecture for Digital Business...2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Enterprise Architecture for Global Companies in a Digital IT Era Adaptive Integrated Digital Architecture Framework (AIDAF) by Yoshimasa Masuda, Murlikrishna Viswanathan','Enterprise Architecture for Global Companies in a Digital IT Era Adaptive Integrated Digital Architecture Framework (AIDAF) by Yoshimasa Masuda, Murlikrishna Viswanathan',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Enterprise Architecture for Strategic Management of Modern It Solutions','Enterprise Architecture for Strategic Management of Modern It Solutions',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Enterprise Architecture Function A Pattern Language for Planning, Design and Execution by Ingo Arnold','Enterprise Architecture Function A Pattern Language for Planning, Design and Execution by Ingo Arnold',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Enterprise Dynamics Sourcebook','Enterprise Dynamics Sourcebook',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Enterprise GIS - Concepts and Applications','Enterprise GIS - Concepts and Applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Enterprise Governance of Information Technology Achieving Alignment and Value in Digital Organizations by Steven De Haes, Wim Van Grembergen, Anant Joshi, Tim Huygh-','Enterprise Governance of Information Technology Achieving Alignment and Value in Digital Organizations by Steven De Haes, Wim Van Grembergen, Anant Joshi, Tim Huygh-',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Enterprise Information Systems Design, Implementation and Management- Organizational Applications','Enterprise Information Systems Design, Implementation and Management- Organizational Applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Enterprise Solution Architecture - Strategy Guide A Roadmap to Transform, Migrate, and Redefine Your Enterprise Infrastructure along with Processes, Tools, and Execution Plans (English Edition) by Nit','Enterprise Solution Architecture - Strategy Guide A Roadmap to Transform, Migrate, and Redefine Your Enterprise Infrastructure along with Processes, Tools, and Execution Plans (English Edition) by Nit',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Enterprise Wireless Local Area Network Architectures and Technologies by Rihai Wu Xun Yang Xia Zhou Yibo Wang','Enterprise Wireless Local Area Network Architectures and Technologies by Rihai Wu Xun Yang Xia Zhou Yibo Wang',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Error Systems- Concepts, Theory and Applications','Error Systems- Concepts, Theory and Applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Essential Architecture and Principles of Systems Engineering 2022','Essential Architecture and Principles of Systems Engineering 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Essential Scrum - A Practical Guide To The Most Popular Agile Process','Essential Scrum - A Practical Guide To The Most Popular Agile Process',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Essentials of Operations Management','Essentials of Operations Management',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Estimations and Tests in Change-Point Models','Estimations and Tests in Change-Point Models',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Evaluating New Technologies - Methodological Problems for the Ethical Assessment of Technology Developments','Evaluating New Technologies - Methodological Problems for the Ethical Assessment of Technology Developments',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Evaluating Software Architectures. Methods and Case Studies 2002','Evaluating Software Architectures. Methods and Case Studies 2002',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Event Project Management. Principles, technology and innovation 2021','Event Project Management. Principles, technology and innovation 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Everitt B. A Handbook of Statistical Analyses Using S-PLUS 2019','Everitt B. A Handbook of Statistical Analyses Using S-PLUS 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Everyday Project Management by Jeff Davidson, 2019','Everyday Project Management by Jeff Davidson, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Evidence-based Software Engineering by Derek M. Jones','Evidence-based Software Engineering by Derek M. Jones',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Evolution of Software-defined Networking...2021','Evolution of Software-defined Networking...2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Evolving Toolbox for Complex Project Management, Alex Gorod, Leonie Hallo, Vernon Ireland, Indra Gunawan, 2020','Evolving Toolbox for Complex Project Management, Alex Gorod, Leonie Hallo, Vernon Ireland, Indra Gunawan, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Exercises for Programmers - 57 Challenges to Develop Your Coding Skills 1e','Exercises for Programmers - 57 Challenges to Develop Your Coding Skills 1e',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Experience on Demand - What Virtual Reality Is, How It Works, and What It Can Do by Jeremy Bailenson','Experience on Demand - What Virtual Reality Is, How It Works, and What It Can Do by Jeremy Bailenson',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Experiment-Driven Product Development - How to Use a Data-Informed Approach to Learn, Iterate, and Succeed Faster by Paul Rissen 2020','Experiment-Driven Product Development - How to Use a Data-Informed Approach to Learn, Iterate, and Succeed Faster by Paul Rissen 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Expert Knowledge-based Inspection Systems - Inspection, Diagnosis, and Repair of the Building Envelope','Expert Knowledge-based Inspection Systems - Inspection, Diagnosis, and Repair of the Building Envelope',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Exploring Security in Software Architecture and Design, 2019','Exploring Security in Software Architecture and Design, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Expressive Design Systems','Expressive Design Systems',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Fast Algorithms for 3D - Graphics','Fast Algorithms for 3D - Graphics',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Fault-Tolerant Search Algorithms - Reliable Computation with Unreliable Information','Fault-Tolerant Search Algorithms - Reliable Computation with Unreliable Information',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Fintech For Dummies 2020','Fintech For Dummies 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Five Core Metrics - The Intelligence Behind Successful Software Management','Five Core Metrics - The Intelligence Behind Successful Software Management',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Fixing Bad UX Designs - Master proven approaches, tools, and techniques to make your user experience great again by Lisandra Maioli','Fixing Bad UX Designs - Master proven approaches, tools, and techniques to make your user experience great again by Lisandra Maioli',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Fixing Your Scrum- Practical Solutions to Common Scrum Problems','Fixing Your Scrum- Practical Solutions to Common Scrum Problems',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Flow Architectures - The Future of Streaming and Event Driven Integration 2021','Flow Architectures - The Future of Streaming and Event Driven Integration 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Flowchart and Algorithm Basics, The Art of Programming by A. B. Chaudhuri','Flowchart and Algorithm Basics, The Art of Programming by A. B. Chaudhuri',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Foundations for Architecting Data Solutions - Managing Successful Data Projects by Ted Malaska, Jonathan Seidman, 2018','Foundations for Architecting Data Solutions - Managing Successful Data Projects by Ted Malaska, Jonathan Seidman, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Foundations of Probabilistic Programming 2021','Foundations of Probabilistic Programming 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Foundations of Software Testing ISTQB Certification 4ed 2020','Foundations of Software Testing ISTQB Certification 4ed 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Framework Design Guidelines - Conventions, Idioms, and Patterns for Reusable .NET Libraries, 3ed 2020','Framework Design Guidelines - Conventions, Idioms, and Patterns for Reusable .NET Libraries, 3ed 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'From Idea to Funded Project - Grant Proposals for the Digital Age, 5th Edition Ed 5','From Idea to Funded Project - Grant Proposals for the Digital Age, 5th Edition Ed 5',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Functional Programming For Dummies by John Paul Mueller','Functional Programming For Dummies by John Paul Mueller',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Functional Software Size Measurement Methodology with Effort Estimation and Performance Indication 1e','Functional Software Size Measurement Methodology with Effort Estimation and Performance Indication 1e',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Functional Thinking - Paradigm Over Syntax','Functional Thinking - Paradigm Over Syntax',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Fundamentals of Image, Audio, and Video Processing Using MATLAB With Applications to Pattern Recognition','Fundamentals of Image, Audio, and Video Processing Using MATLAB With Applications to Pattern Recognition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Fundamentals of Multimedia 3ed 2021','Fundamentals of Multimedia 3ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Fundamentals of Risk Management- Understanding, Evaluating and Implementing Effective Risk Management','Fundamentals of Risk Management- Understanding, Evaluating and Implementing Effective Risk Management',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Fundamentals of Scientific Computing','Fundamentals of Scientific Computing',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Fundamentals of Strategy, 3rd edition','Fundamentals of Strategy, 3rd edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Game Design and Intelligent Interaction','Game Design and Intelligent Interaction',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Game User Experience Evaluation','Game User Experience Evaluation',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Gamification and Consumer Engagement Creating Value in Context of ICT Development by Rimantas Gatautis, J��rat? Banyt?, Elena Vitkauskait?','Gamification and Consumer Engagement Creating Value in Context of ICT Development by Rimantas Gatautis, J��rat? Banyt?, Elena Vitkauskait?',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Gamification Mindset by Ole Goethe','Gamification Mindset by Ole Goethe',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Gender Designs IT - Construction and Deconstruction of Information Society Technology','Gender Designs IT - Construction and Deconstruction of Information Society Technology',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Genetic Algorithms and Genetic Programming- Modern Concepts and Practical Applications','Genetic Algorithms and Genetic Programming- Modern Concepts and Practical Applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Get Started in UX by Luke Chambers, Matthew Magain','Get Started in UX by Luke Chambers, Matthew Magain',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Get Your Hands Dirty on Clean Architecture by Tom Hombergs','Get Your Hands Dirty on Clean Architecture by Tom Hombergs',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Getting Started with Coding (Dummies Junior) by Camille McCue','Getting Started with Coding (Dummies Junior) by Camille McCue',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Ghidra Software Reverse Engineering for Beginners by A. P. David','Ghidra Software Reverse Engineering for Beginners by A. P. David',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Git Version Control Cookbook - Leverage version control to transform your development workflow and boost productivity, 2nd Ed','Git Version Control Cookbook - Leverage version control to transform your development workflow and boost productivity, 2nd Ed',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Give Them an Argument Logic for the Left by Ben Burgis, 2019','Give Them an Argument Logic for the Left by Ben Burgis, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Global Talent Management by David G. Collings Hugh Scullion Paula Caligiuri, 2ed 2019','Global Talent Management by David G. Collings Hugh Scullion Paula Caligiuri, 2ed 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Goniwada S. Cloud Native Architecture and Design...Examples 2022','Goniwada S. Cloud Native Architecture and Design...Examples 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Great Big Agile - An OS for Agile Leaders by Jeff Dalton, 2019','Great Big Agile - An OS for Agile Leaders by Jeff Dalton, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Green IT technologies and Applications','Green IT technologies and Applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Grid-based Nonlinear Estimation and Its Applications','Grid-based Nonlinear Estimation and Its Applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Grokking Algorithms - An illustrated guide for programmers and other curious people by Aditya Y. Bhargava','Grokking Algorithms - An illustrated guide for programmers and other curious people by Aditya Y. Bhargava',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Grokking Simplicity Taming complex software with functional thinking 2021','Grokking Simplicity Taming complex software with functional thinking 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Guide to Efficient Software Design - An MVC Approach to Concepts, Structures, and Models by David P. Voorhees','Guide to Efficient Software Design - An MVC Approach to Concepts, Structures, and Models by David P. Voorhees',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Guide to Software Systems Development, Connecting Novel Theory and Current Practice 2020','Guide to Software Systems Development, Connecting Novel Theory and Current Practice 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Gunasinghe N. Language Server Protocol and Implementation...2022','Gunasinghe N. Language Server Protocol and Implementation...2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Handbook of Computer Science  IT by Unknown','Handbook of Computer Science  IT by Unknown',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Handbook of Conformal Mappings and Applications','Handbook of Conformal Mappings and Applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Handbook of Developmental Systems Theory and Methodology','Handbook of Developmental Systems Theory and Methodology',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Handbook of Narrative Analysis (Frontiers of Narrative), 2nd Edition','Handbook of Narrative Analysis (Frontiers of Narrative), 2nd Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Handbook of Open Source Tools','Handbook of Open Source Tools',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Handbook on Customer Centricity. Strategies...2019','Handbook on Customer Centricity. Strategies...2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Hands-On Chatbots and Conversational UI Development - Build chatbots and voice user interfaces with Chatfuel','Hands-On Chatbots and Conversational UI Development - Build chatbots and voice user interfaces with Chatfuel',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Hands-on Linux administration on Azure - develop, maintain, and automate applications on the Azure cloud platform (2020)','Hands-on Linux administration on Azure - develop, maintain, and automate applications on the Azure cloud platform (2020)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Hands-On Linux for Architects_ Design and implement Linux-based IT solutions (2019)','Hands-On Linux for Architects_ Design and implement Linux-based IT solutions (2019)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Hands-On Microsoft Teams_ A practical guide to enhancing enterprise collaboration with Microsoft Teams and Office 365 (2020)','Hands-On Microsoft Teams_ A practical guide to enhancing enterprise collaboration with Microsoft Teams and Office 365 (2020)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Hands-on UX design for developers design, prototype, and implement compelling user experiences from scratch by Canziba, Elvis','Hands-on UX design for developers design, prototype, and implement compelling user experiences from scratch by Canziba, Elvis',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Heller P. Automating Workflows with GitHub Actions 2021','Heller P. Automating Workflows with GitHub Actions 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Heterogeneous System Architecture - A New Compute Platform Infrastructure','Heterogeneous System Architecture - A New Compute Platform Infrastructure',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'HIMSS Dictionary of Health Information Technology Terms, Acronyms, and Organizations, 5th Edition','HIMSS Dictionary of Health Information Technology Terms, Acronyms, and Organizations, 5th Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'History of Programming Languages II','History of Programming Languages II',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Hodent C. What UX is Really About. Introducing a Mindset...2022','Hodent C. What UX is Really About. Introducing a Mindset...2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Holcombe J. Survey of Operating Systems 6ed 2020','Holcombe J. Survey of Operating Systems 6ed 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Home Networking Do-It-Yourself for Dummies','Home Networking Do-It-Yourself for Dummies',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'How Pac-Man Eats (Software Studies) by Noah Wardrip-Fruin','How Pac-Man Eats (Software Studies) by Noah Wardrip-Fruin',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'How to Fail at Change Management- A Manager''s Guide to the Pitfalls of Managing Change','How to Fail at Change Management- A Manager''s Guide to the Pitfalls of Managing Change',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'How to Lead in Product Management- Practices to Align Stakeholders, Guide Development Teams, and Create Value Together','How to Lead in Product Management- Practices to Align Stakeholders, Guide Development Teams, and Create Value Together',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'How to Lie with Charts, 4th Edition','How to Lie with Charts, 4th Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'How to Think Like a Great Graphic Designer by Debbie Millman','How to Think Like a Great Graphic Designer by Debbie Millman',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'How to Write Good Programs - A Guide for Students, Stevens P.  2020','How to Write Good Programs - A Guide for Students, Stevens P.  2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'How to Write Technical Reports Understandable Structure, Good Design, Convincing Presentation by Heike Hering','How to Write Technical Reports Understandable Structure, Good Design, Convincing Presentation by Heike Hering',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Ideas that Created the Future Classic Papers of Computer Science by Harry R. Lewis','Ideas that Created the Future Classic Papers of Computer Science by Harry R. Lewis',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Implementing Effective Code Reviews How to Build and Maintain Clean Code by Giuliana Carullo','Implementing Effective Code Reviews How to Build and Maintain Clean Code by Giuliana Carullo',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Impossible Knowledge - Conspiracy Theories, Power, and Truth by Todor Hristov, 2019','Impossible Knowledge - Conspiracy Theories, Power, and Truth by Todor Hristov, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Inclusive Design for a Digital World - Designing with Accessibility in Mind','Inclusive Design for a Digital World - Designing with Accessibility in Mind',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Incremental Software Architecture - A Method for Saving Failing IT Implementations','Incremental Software Architecture - A Method for Saving Failing IT Implementations',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Information Dashboard Design - The Effective Visual Communication of Data','Information Dashboard Design - The Effective Visual Communication of Data',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Information Governance - Concepts, Strategies and Best Practices Ed 2','Information Governance - Concepts, Strategies and Best Practices Ed 2',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Information Systems, A Manager''s Guide to Harnessing Technology','Information Systems, A Manager''s Guide to Harnessing Technology',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Information Technology For Beginners 2021','Information Technology For Beginners 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Information Technology for Management, 2nd Edition','Information Technology for Management, 2nd Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Information Technology for Management...11ed 2018','Information Technology for Management...11ed 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'INFORMATION TECHNOLOGY PROJECT MANAGEMENT, 7e','INFORMATION TECHNOLOGY PROJECT MANAGEMENT, 7e',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'INFORMS Analytics Body of Knowledge by Cochran, James J, 2018','INFORMS Analytics Body of Knowledge by Cochran, James J, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Infrastructure Software Modules for Enterprises - Flexible Software Systems, Module Use-Cases, and Wireframes','Infrastructure Software Modules for Enterprises - Flexible Software Systems, Module Use-Cases, and Wireframes',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Innovation on Demand_ New Product Development Using TRIZ (2005)','Innovation on Demand_ New Product Development Using TRIZ (2005)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Innovation Project Management - Methods, Case Studies, and Tools for Managing Innovation Projects by Harold Kerzner, 2019','Innovation Project Management - Methods, Case Studies, and Tools for Managing Innovation Projects by Harold Kerzner, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Innovative Software - Running the Rapids','Innovative Software - Running the Rapids',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Innovators Playbook How to Create Great Products, Services and Experiences that Your Customers Will Love by Nathan Baird','Innovators Playbook How to Create Great Products, Services and Experiences that Your Customers Will Love by Nathan Baird',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Institutionalization of UX - A Step-by-Step Guide to a User Experience Practice','Institutionalization of UX - A Step-by-Step Guide to a User Experience Practice',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Integrated Storytelling by Design Concepts, Principles and Methods for New Narrative Dimensions by Klaus Sommer Paulsen','Integrated Storytelling by Design Concepts, Principles and Methods for New Narrative Dimensions by Klaus Sommer Paulsen',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Integrating Research and Practice in Software Engineering by Stan Jarzabek, Aneta Poniszewska-Mara��da, Lech Madeyski','Integrating Research and Practice in Software Engineering by Stan Jarzabek, Aneta Poniszewska-Mara��da, Lech Madeyski',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Internetworking with TCPIP Volume One, 6th Edition','Internetworking with TCPIP Volume One, 6th Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Introducing Disaster Recovery with Microsoft Azure - Understanding Services and Tools for Implementing a Recovery Solutio','Introducing Disaster Recovery with Microsoft Azure - Understanding Services and Tools for Implementing a Recovery Solutio',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Introduction to a Negative Approach to Argumentation - Towards a New Ethic for Philosophical Debate, Julio Cabrera, 2019','Introduction to a Negative Approach to Argumentation - Towards a New Ethic for Philosophical Debate, Julio Cabrera, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Introduction to Data Visualization & Storytelling - A Guide For The Data Scientist','Introduction to Data Visualization & Storytelling - A Guide For The Data Scientist',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Introduction to Disciplined Agile Delivery - Second Edition','Introduction to Disciplined Agile Delivery - Second Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Introduction to Information Systems...Canadian 5ed 2020','Introduction to Information Systems...Canadian 5ed 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Introduction to Stateflow with Applications','Introduction to Stateflow with Applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Introduction to the History of Computing - A Computing History Primer','Introduction to the History of Computing - A Computing History Primer',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Invasive Computing for Mapping Parallel Programs to Many-Core Architectures','Invasive Computing for Mapping Parallel Programs to Many-Core Architectures',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Inventive Computation Technologies','Inventive Computation Technologies',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Inventive Thinking through TRIZ A Practical Guide, Second Edition by Michael A. Orloff','Inventive Thinking through TRIZ A Practical Guide, Second Edition by Michael A. Orloff',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Investing in Information- The Information Management Body of Knowledge','Investing in Information- The Information Management Body of Knowledge',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'IT Crisisology Smart Crisis Management in Software Engineering Models, Methods, Patterns, Practices, Case Studies by Sergey V. Zykov','IT Crisisology Smart Crisis Management in Software Engineering Models, Methods, Patterns, Practices, Case Studies by Sergey V. Zykov',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'IT Manager''s Handbook - The Business Edition','IT Manager''s Handbook - The Business Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Jackson D. The Essence of Software..Matter for Great Design 2021','Jackson D. The Essence of Software..Matter for Great Design 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Kamburugamuve S. Foundations of Data Intensive Applications...2021','Kamburugamuve S. Foundations of Data Intensive Applications...2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Kaul N. Analytic Methods of Systems and Software Testing 2021','Kaul N. Analytic Methods of Systems and Software Testing 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Knowledge Engineering - Principles, Methods and Applications','Knowledge Engineering - Principles, Methods and Applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Knowledge Engineering Tools and Techniques for AI Planning','Knowledge Engineering Tools and Techniques for AI Planning',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Knowledge Is Beautiful- Impossible Ideas, Invisible Patterns, Hidden Connections','Knowledge Is Beautiful- Impossible Ideas, Invisible Patterns, Hidden Connections',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Knowledge Management and Engineering with Decisional DNA','Knowledge Management and Engineering with Decisional DNA',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Knowledge Management Strategies for Business Development','Knowledge Management Strategies for Business Development',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Knowledge Risk Management- From Theory to Praxis','Knowledge Risk Management- From Theory to Praxis',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Knowledge-Based Configuration - From Research to Business Cases','Knowledge-Based Configuration - From Research to Business Cases',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Knowledge-Based Information Systems in Practice','Knowledge-Based Information Systems in Practice',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Kroenke D., Boyle R. Experiencing MIS 8ed 2021','Kroenke D., Boyle R. Experiencing MIS 8ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Laboratory Quality Assurance Manual','Laboratory Quality Assurance Manual',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Laws of UX - Using Psychology to Design Better Products & Services','Laws of UX - Using Psychology to Design Better Products & Services',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Lead Designer''s Handbook - The Lead Designer and Design Management, Dale Sinclair, 2019','Lead Designer''s Handbook - The Lead Designer and Design Management, Dale Sinclair, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Lean Analytics- The Complete Guide to the Systematic Method for the Use of Data 2020','Lean Analytics- The Complete Guide to the Systematic Method for the Use of Data 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Lean and Agile Project Management, how to make any project better, faster, and more cost effective, 2ed 2020','Lean and Agile Project Management, how to make any project better, faster, and more cost effective, 2ed 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Lean Architecture for Agile Software Development','Lean Architecture for Agile Software Development',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Lean Management Principles for Information Technology','Lean Management Principles for Information Technology',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Lean Mastery - 8 Books in 1 Master Lean Six Sigma & Build a Lean Enterprise','Lean Mastery - 8 Books in 1 Master Lean Six Sigma & Build a Lean Enterprise',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Lean Project Management. Lean Startup, Enterprise,...2020','Lean Project Management. Lean Startup, Enterprise,...2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Lean Project Management.How to Apply Lean Thinking..2022','Lean Project Management.How to Apply Lean Thinking..2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learning Agile Understanding Scrum, XP, Lean, and Kanban by Andrew Stellman, Jennifer Greene (z-lib.org)','Learning Agile Understanding Scrum, XP, Lean, and Kanban by Andrew Stellman, Jennifer Greene (z-lib.org)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learning Domain-Driven Design - Aligning Software Architecture and Business Strategy 2021','Learning Domain-Driven Design - Aligning Software Architecture and Business Strategy 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learning Functional Data Structures and Algorithms','Learning Functional Data Structures and Algorithms',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learning Test-Driven Development - A Polyglot Guide to Writing Uncluttered Code 2022','Learning Test-Driven Development - A Polyglot Guide to Writing Uncluttered Code 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Lee N. Facebook Nation. Total Information Awareness 3ed 2020','Lee N. Facebook Nation. Total Information Awareness 3ed 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Letters to a New Developer - What I Wish I Had Known When Starting My Development Career by Dan Moore','Letters to a New Developer - What I Wish I Had Known When Starting My Development Career by Dan Moore',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Life and Death Design_ What Life-Saving Technology Can Teach Everyday UX Designers by Katie Swindler','Life and Death Design_ What Life-Saving Technology Can Teach Everyday UX Designers by Katie Swindler',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Logging And Log Management - The Authoritative Guide To Understanding The Concepts Surrounding Logging And Log Management','Logging And Log Management - The Authoritative Guide To Understanding The Concepts Surrounding Logging And Log Management',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Long S. Man-Machine-Environment System Engineering 2022','Long S. Man-Machine-Environment System Engineering 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Managing Data Science - Effective Strategies To Manage Data Science Projects And Build A Sustainable Team by Kirill Dubovikov, 2019','Managing Data Science - Effective Strategies To Manage Data Science Projects And Build A Sustainable Team by Kirill Dubovikov, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Managing Humans - Biting and Humorous Tales of a Software Engineering Manager, 2nd Edition','Managing Humans - Biting and Humorous Tales of a Software Engineering Manager, 2nd Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Managing Information Technology Outsourcing 3ed 2022','Managing Information Technology Outsourcing 3ed 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Managing project risks, Edwards, Michael Edwards, Peter J. Vaz Serra, Paulo, 2020','Managing project risks, Edwards, Michael Edwards, Peter J. Vaz Serra, Paulo, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Managing Technology and Product Development Programmes - A Framework for Success','Managing Technology and Product Development Programmes - A Framework for Success',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Managing the Unmanageable Rules, Tools, and Insights for Managing Software People and Teams by Mickey W. Mantle Ron Lichty','Managing the Unmanageable Rules, Tools, and Insights for Managing Software People and Teams by Mickey W. Mantle Ron Lichty',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Managing Transformation Projects - Tracing Lessons From The Industrial To The Digital Revolution by Mark Kozak-Holland, Chris Procter, 2020','Managing Transformation Projects - Tracing Lessons From The Industrial To The Digital Revolution by Mark Kozak-Holland, Chris Procter, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Managing Your Data Science Projects - Learn Salesmanship, Presentation, and Maintenance of Completed Models by Robert de Graaf, 2019','Managing Your Data Science Projects - Learn Salesmanship, Presentation, and Maintenance of Completed Models by Robert de Graaf, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'MATLAB Programming for Engineers 6ed 2020','MATLAB Programming for Engineers 6ed 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Mechanics of project management nuts and bolts of project execution by Badiru, Adedeji Bodunde Badiru, Ibrahim Adetokunboh Badiru, Sikiratu Abidemi, 2019','Mechanics of project management nuts and bolts of project execution by Badiru, Adedeji Bodunde Badiru, Ibrahim Adetokunboh Badiru, Sikiratu Abidemi, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Meta-Programming and Model-Driven Meta-Program Development','Meta-Programming and Model-Driven Meta-Program Development',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Microservice Architecture Aligning Principles, Practices, and Culture by Nadareishvili, Mitra, McLarty, Amundsen','Microservice Architecture Aligning Principles, Practices, and Culture by Nadareishvili, Mitra, McLarty, Amundsen',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Microservices for the Enterprise Designing, Developing, and Deploying by Kasun Indrasiri, Prabath Siriwardena','Microservices for the Enterprise Designing, Developing, and Deploying by Kasun Indrasiri, Prabath Siriwardena',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Mindapps Multistate Theory and Tools for Mind Design by Thomas B. Roberts, 2019','Mindapps Multistate Theory and Tools for Mind Design by Thomas B. Roberts, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Mindful Design - How and Why to Make Design Decisions for the Good of Those Using Your Product-Apress (2019)','Mindful Design - How and Why to Make Design Decisions for the Good of Those Using Your Product-Apress (2019)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Mindful Project Management...2ed 2020','Mindful Project Management...2ed 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Mining Software Engineering Data for Software Reuse by Diamantopoulos, Themistoklis, Symeonidis, Andreas L.','Mining Software Engineering Data for Software Reuse by Diamantopoulos, Themistoklis, Symeonidis, Andreas L.',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Mobilizing for Development (2019)','Mobilizing for Development (2019)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Models for concurrency by Abraham, Uri','Models for concurrency by Abraham, Uri',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Models, Methods and Tools for Product Service Design - The Manutelligence Project, 2019','Models, Methods and Tools for Product Service Design - The Manutelligence Project, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Modern Auditing and Assurance Services, 6th edition','Modern Auditing and Assurance Services, 6th edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Modern Oracle Enterprise Architecture Discover Oracles Hidden Gems for Next Generation Database and Application Migrations (English Edition) by JAVID UR RAHAMAN','Modern Oracle Enterprise Architecture Discover Oracles Hidden Gems for Next Generation Database and Application Migrations (English Edition) by JAVID UR RAHAMAN',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Monitoring and Control of Information-Poor Systems- An Approach based on Fuzzy Relational Models','Monitoring and Control of Information-Poor Systems- An Approach based on Fuzzy Relational Models',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Multi-Parametric Programming Theory, Algorithms and Applications','Multi-Parametric Programming Theory, Algorithms and Applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Multimedia Engineering - A Practical Guide for Internet Implementation','Multimedia Engineering - A Practical Guide for Internet Implementation',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Multiple User Interfaces - Cross-Platform Applications and Context-Aware Interfaces','Multiple User Interfaces - Cross-Platform Applications and Context-Aware Interfaces',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Nanhou J. Software Patterns Made Easy 2021','Nanhou J. Software Patterns Made Easy 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Network Meta-Analysis for Decision-Making (Statistics)','Network Meta-Analysis for Decision-Making (Statistics)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'New Product Development For Dummies','New Product Development For Dummies',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Numbersense - How to Use Big Data to Your Advantage','Numbersense - How to Use Big Data to Your Advantage',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Numerical Analysis with Elements of Computer Science 2020','Numerical Analysis with Elements of Computer Science 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Nystrom R. Crafting Interpreters 2021','Nystrom R. Crafting Interpreters 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Object -Oriented Analysis and Design','Object -Oriented Analysis and Design',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Object Design Style Guide by Matthias Noback, 2020','Object Design Style Guide by Matthias Noback, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Object-Oriented Design Choices 2021','Object-Oriented Design Choices 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Object-oriented Systems Analysis and Design Using UML','Object-oriented Systems Analysis and Design Using UML',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Object-Oriented vs. Functional Programming','Object-Oriented vs. Functional Programming',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Objects - Practicing the Art of Software','Objects - Practicing the Art of Software',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Odoo 12 Development Essentials by Daniel Reis','Odoo 12 Development Essentials by Daniel Reis',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'OOP Concepts Booster - Take Your Coding Skills to the Next Level','OOP Concepts Booster - Take Your Coding Skills to the Next Level',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Open Source Architecture','Open Source Architecture',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Optimizing Project Management by TE WU, 2020','Optimizing Project Management by TE WU, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'OReilly Intelligence-Driven Incident Response 2017.8','OReilly Intelligence-Driven Incident Response 2017.8',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'OReilly Programming Voice Interfaces 2017.11','OReilly Programming Voice Interfaces 2017.11',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'OReilly.Functional.Thinking.2014.6','OReilly.Functional.Thinking.2014.6',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'OReilly.The.Productive.Programmer.Jul.2008','OReilly.The.Productive.Programmer.Jul.2008',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Outcomes Over Output - Why customer behavior is the key metric for business success by Josh Seiden, 2019','Outcomes Over Output - Why customer behavior is the key metric for business success by Josh Seiden, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'PAINLESS PROJECT MANAGEMENT - A Step-by-Step Guide for Planning, Executing, and Managing Projects','PAINLESS PROJECT MANAGEMENT - A Step-by-Step Guide for Planning, Executing, and Managing Projects',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Pattern-Oriented Software Architecture For Dummies','Pattern-Oriented Software Architecture For Dummies',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Penetration Testing For Dummies','Penetration Testing For Dummies',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Penetration Testing with the Bash shell','Penetration Testing with the Bash shell',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Performance Evaluation for Network Services, Systems and Protocols 1e','Performance Evaluation for Network Services, Systems and Protocols 1e',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Performance Management of Integrated Systems and its Applications in Software Engineering by Millie Pant, Tarun K. Sharma, Sebasti��n Basterrech, Chitresh Banerjee','Performance Management of Integrated Systems and its Applications in Software Engineering by Millie Pant, Tarun K. Sharma, Sebasti��n Basterrech, Chitresh Banerjee',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Performance Management- Putting Research into Practice','Performance Management- Putting Research into Practice',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'PgMP Exam Practice Test and Study Guide, Fourth Edition','PgMP Exam Practice Test and Study Guide, Fourth Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Pine Chris. Learn to Program 3ed 2021','Pine Chris. Learn to Program 3ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Pirkle W. Designing Software Synthesizer Plugins in C++...2ed 2021.djvu','Pirkle W. Designing Software Synthesizer Plugins in C++...2ed 2021.djvu',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Practical Reverse Engineering','Practical Reverse Engineering',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Practical Risk Management for EPC - Design-Build Projects- Manage Risks Effectively - Stop the Losses','Practical Risk Management for EPC - Design-Build Projects- Manage Risks Effectively - Stop the Losses',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Practical Software Architecture Moving from System Context to Deployment by Tilak Mitra','Practical Software Architecture Moving from System Context to Deployment by Tilak Mitra',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Practical Test Automation Learn to Use Jasmine, RSpec, and Cucumber Effectively for Your TDD and BDD by Panos Matsinopoulos','Practical Test Automation Learn to Use Jasmine, RSpec, and Cucumber Effectively for Your TDD and BDD by Panos Matsinopoulos',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Practical UI Patterns for Design Systems - Fast-Track Interaction Design for a Seamless User Experience by Diana MacDonald, 2019','Practical UI Patterns for Design Systems - Fast-Track Interaction Design for a Seamless User Experience by Diana MacDonald, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Practice Standard for Project Estimating by Project Management Institute Project Management Institute','Practice Standard for Project Estimating by Project Management Institute Project Management Institute',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Practice Standard for Work Breakdown Structures - Third Edition','Practice Standard for Work Breakdown Structures - Third Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Pragmatic Evaluation of Software Architectures','Pragmatic Evaluation of Software Architectures',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Predicting Structured Data 1e','Predicting Structured Data 1e',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Preparing for Design-Build Projects - A Primer for Owners, Engineers, and Contractors','Preparing for Design-Build Projects - A Primer for Owners, Engineers, and Contractors',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Presenting Data Effectively - Communicating Your Findings for Maximum Impact, 2nd Edition','Presenting Data Effectively - Communicating Your Findings for Maximum Impact, 2nd Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'PRINCE2? Agile by AXELOS','PRINCE2? Agile by AXELOS',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Principles of Communications Networks and Systems','Principles of Communications Networks and Systems',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Principles of Information Technology 2020','Principles of Information Technology 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Principles of Product Management How to Land a PM Job and Launch Your Product Career by Peter Yang','Principles of Product Management How to Land a PM Job and Launch Your Product Career by Peter Yang',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Problem Structuring Approaches for the Management of Projects - Demonstrating Successful Practice, Gary Bell, Rosane Pagano, Jon Warwick, Carlos Sato, 2019','Problem Structuring Approaches for the Management of Projects - Demonstrating Successful Practice, Gary Bell, Rosane Pagano, Jon Warwick, Carlos Sato, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Producing Animation, 3rd Edition','Producing Animation, 3rd Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Product Design and Development (2019)','Product Design and Development (2019)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Product Development Principles and Tools for Creating Desirable and Transferable Designs by Christopher A. Mattson, Carl D. Sorensen','Product Development Principles and Tools for Creating Desirable and Transferable Designs by Christopher A. Mattson, Carl D. Sorensen',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Product Leadership - How Top Product Managers Launch Awesome Products and Build Successful Teams-O��Reilly Media (2017)','Product Leadership - How Top Product Managers Launch Awesome Products and Build Successful Teams-O��Reilly Media (2017)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Product Leadership by Richard Banfield','Product Leadership by Richard Banfield',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Product Management Essentials Tools and Techniques for Becoming an Effective Technical Product Manager by Aswin Pranam (auth.)','Product Management Essentials Tools and Techniques for Becoming an Effective Technical Product Manager by Aswin Pranam (auth.)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Product Management For Dummies by Brian Lawley, Pamela Schure','Product Management For Dummies by Brian Lawley, Pamela Schure',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Product Management In Practice - A Real-World Guide To The Key Connective Role Of The 21st Century','Product Management In Practice - A Real-World Guide To The Key Connective Role Of The 21st Century',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Product Roadmapping A Practical Guide to Prioritizing Opportunities, Aligning Teams, and Delivering Value to Customers and Stakeholders by C. Todd Lombardo Bruce McCarthy Evan Ryan Michael Connors','Product Roadmapping A Practical Guide to Prioritizing Opportunities, Aligning Teams, and Delivering Value to Customers and Stakeholders by C. Todd Lombardo Bruce McCarthy Evan Ryan Michael Connors',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Professional Practice for Architects and Project Managers','Professional Practice for Architects and Project Managers',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Professional Scrum Development with Azure DevOps by Richard Hundhausen','Professional Scrum Development with Azure DevOps by Richard Hundhausen',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Professional Workflow for Web Designers','Professional Workflow for Web Designers',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Profitable Web Traffic For Entrepreneurs','Profitable Web Traffic For Entrepreneurs',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Programming for Problem Solving 2019, Balagurusamy E','Programming for Problem Solving 2019, Balagurusamy E',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Programming for the Absolute Beginner, 2nd Edition','Programming for the Absolute Beginner, 2nd Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Programming Logic and Design, Comprehensive, 8th Edition','Programming Logic and Design, Comprehensive, 8th Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project Level 4 Workbook, Tom Hutchinson, 2019','Project Level 4 Workbook, Tom Hutchinson, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project Management - A Benefit Realisation Approach, Ofer Zwikael, John R. Smyrk, 2019','Project Management - A Benefit Realisation Approach, Ofer Zwikael, John R. Smyrk, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project Management - A Common-Sense Guide to the PMBOK Program, Part Two Plan and Execution, James W. Marion, 2018','Project Management - A Common-Sense Guide to the PMBOK Program, Part Two Plan and Execution, James W. Marion, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'PROJECT MANAGEMENT - A Systems Approach to Planning, Scheduling, and Controlling, 12ed','PROJECT MANAGEMENT - A Systems Approach to Planning, Scheduling, and Controlling, 12ed',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project Management - It''s All Bollocks! The Complete Exposure of the World of, and the Value of, Project Management, 2020','Project Management - It''s All Bollocks! The Complete Exposure of the World of, and the Value of, Project Management, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project Management - Systems, Principles, and Applications by Badiru, Adedeji Bodunde, 2ed 2019','Project Management - Systems, Principles, and Applications by Badiru, Adedeji Bodunde, 2ed 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project Management All-in-One for Dummies 2020','Project Management All-in-One for Dummies 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project Management and BIM for Sustainable Modern Cities by Mohamed Shehata, Fernanda Rodrigues, 2019','Project Management and BIM for Sustainable Modern Cities by Mohamed Shehata, Fernanda Rodrigues, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project Management by Pradeep Pai, 2019','Project Management by Pradeep Pai, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project Management Concepts, Methods, and Techniques','Project Management Concepts, Methods, and Techniques',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project Management Essentials 2ed 2019','Project Management Essentials 2ed 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project Management for Engineering and Construction Ed 2','Project Management for Engineering and Construction Ed 2',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project Management for Engineering, Business and Technology by John M. Nicholas  Herman Steyn 6ed 2020','Project Management for Engineering, Business and Technology by John M. Nicholas  Herman Steyn 6ed 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project Management for Humans - Helping People Get Things Done','Project Management for Humans - Helping People Get Things Done',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project Management Handbook - Simplified Agile, Scrum and DevOps for Beginners by Jack C. Stanley and Erik D. Gross','Project Management Handbook - Simplified Agile, Scrum and DevOps for Beginners by Jack C. Stanley and Erik D. Gross',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project Management in Construction, 6th Edition','Project Management in Construction, 6th Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project Management in Product Development_ Leadership Skills and Management Techniques to Deliver Great Products-Butterworth-Heinemann (2015)','Project Management in Product Development_ Leadership Skills and Management Techniques to Deliver Great Products-Butterworth-Heinemann (2015)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project Management Maturity Model 4ed 2021','Project Management Maturity Model 4ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project management methodologies, governance and success - insight from traditional and transformative research, Joslin, Robert, 2019','Project management methodologies, governance and success - insight from traditional and transformative research, Joslin, Robert, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project management of large software-intensive systems - controlling the software development process by Gechman, Marvin, 2019','Project management of large software-intensive systems - controlling the software development process by Gechman, Marvin, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project management theory and practice, 3ed, 2019','Project management theory and practice, 3ed, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project Management, Planning and Control...8ed 2021','Project Management, Planning and Control...8ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project Management- A Managerial Approach, 8th edition','Project Management- A Managerial Approach, 8th edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project Management. A Practical Approach 5ed 2021','Project Management. A Practical Approach 5ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project Management. Achieving Competitive Advantage 5ed 2019','Project Management. Achieving Competitive Advantage 5ed 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project Manager S Desk Reference 2nd Edition Mcgraw Hill','Project Manager S Desk Reference 2nd Edition Mcgraw Hill',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project planning and management - a guide for nurses and interprofessional teams by Dearman, Catherine Harris, James Leonard Roussel, Linda Thomas, Patricia L','Project planning and management - a guide for nurses and interprofessional teams by Dearman, Catherine Harris, James Leonard Roussel, Linda Thomas, Patricia L',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project to Product, How to Survive and Thrive in the Age of Digital Disruption With the Flow Framework  by Mik Kersten','Project to Product, How to Survive and Thrive in the Age of Digital Disruption With the Flow Framework  by Mik Kersten',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project Valuation Using Real Options- A Practitioner''s Guide','Project Valuation Using Real Options- A Practitioner''s Guide',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Project-Driven Technology Strategy','Project-Driven Technology Strategy',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Projects, Programs, and Portfolios in Strategic Organizational Transformation','Projects, Programs, and Portfolios in Strategic Organizational Transformation',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Prudhomme G. Software and Systems Modeling - THEORETICAL AND PRACTICAL ISSUES, 2019','Prudhomme G. Software and Systems Modeling - THEORETICAL AND PRACTICAL ISSUES, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Pulled - A Catalog of Screen Printing','Pulled - A Catalog of Screen Printing',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Purple Cow Transform Your Business by Being Remarkable by Seth Godin','Purple Cow Transform Your Business by Being Remarkable by Seth Godin',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Putting Design Thinking to Work - How Large Organizations Can Embrace Messy Institutions to Tackle Wicked Problems, Steven Ney, Christoph Meinel, 2019','Putting Design Thinking to Work - How Large Organizations Can Embrace Messy Institutions to Tackle Wicked Problems, Steven Ney, Christoph Meinel, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Quality Assured Measurement - Unification across Social and Physical Sciences','Quality Assured Measurement - Unification across Social and Physical Sciences',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Quality Management by Sartor Marco, Orzes Guido, 2019','Quality Management by Sartor Marco, Orzes Guido, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Quality Management System Handbook For Product Development Companies','Quality Management System Handbook For Product Development Companies',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Quantifying the User Experience 2e','Quantifying the User Experience 2e',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Ranked Set Sampling - 65 Years Improving the Accuracy in Data Gathering','Ranked Set Sampling - 65 Years Improving the Accuracy in Data Gathering',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Real-World Software Development - A Project-Driven Guide to Fundamentals in Java','Real-World Software Development - A Project-Driven Guide to Fundamentals in Java',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Recent Trends in Learning From Data','Recent Trends in Learning From Data',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Refactoring - Improving the Design of Existing Code, 2nd Edition','Refactoring - Improving the Design of Existing Code, 2nd Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Refactoring at Scale Regaining Control of Your Codebase by Maude Lemaire','Refactoring at Scale Regaining Control of Your Codebase by Maude Lemaire',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Refactoring Databases - Evolutionary Database Design','Refactoring Databases - Evolutionary Database Design',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Refactoring for Software Design Smells - Managing Technical Debt','Refactoring for Software Design Smells - Managing Technical Debt',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Refactoring UI by Steve Schoger, Adam Wathan','Refactoring UI by Steve Schoger, Adam Wathan',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Reliable Source - Lessons from a Life in Software Engineering','Reliable Source - Lessons from a Life in Software Engineering',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Requirements Engineering (2017)','Requirements Engineering (2017)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Requirements Engineering for Service and Cloud Computing (2017)','Requirements Engineering for Service and Cloud Computing (2017)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Requirements Engineering for Software and Systems by Phillip A. Laplante','Requirements Engineering for Software and Systems by Phillip A. Laplante',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Requirements Writing for System Engineering (2016)','Requirements Writing for System Engineering (2016)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Requirements Writing for System Engineering by George Koelsch (auth.)','Requirements Writing for System Engineering by George Koelsch (auth.)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Research Handbook On The Law Of Virtual And Augmented Reality by Woodrow Barfield, Marc Jonathan Blitz','Research Handbook On The Law Of Virtual And Augmented Reality by Woodrow Barfield, Marc Jonathan Blitz',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Research on Project, Programme and Portfolio Management, Integrating Sustainability into Project Management 2021','Research on Project, Programme and Portfolio Management, Integrating Sustainability into Project Management 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Researching UX Analytics by Luke Hay','Researching UX Analytics by Luke Hay',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Resource Proportional Software Design for Emerging Systems by Suparna Bhattacharya Kanchi Gopinath Douglas L. Voigt','Resource Proportional Software Design for Emerging Systems by Suparna Bhattacharya Kanchi Gopinath Douglas L. Voigt',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Resourceful Code Reuse - Write, Compile, Link, Run By Dmitry Zinoviev','Resourceful Code Reuse - Write, Compile, Link, Run By Dmitry Zinoviev',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Responsible Responsive Design','Responsible Responsive Design',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Rethinking Information Technology Asset Management Business Expert Press 2021','Rethinking Information Technology Asset Management Business Expert Press 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Rethinking Project Management..Dynamic..Digital..2021','Rethinking Project Management..Dynamic..Digital..2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Riedesel J. Software Telemetry. Reliable logging and monitoring 2021','Riedesel J. Software Telemetry. Reliable logging and monitoring 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Risk Management In Small And Medium Enterprises by Chiara Crovini, 2019','Risk Management In Small And Medium Enterprises by Chiara Crovini, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Routledge Handbook of Integrated Project Delivery, Derek H. T. Walker, Steve M. Rowlinson, 2020','Routledge Handbook of Integrated Project Delivery, Derek H. T. Walker, Steve M. Rowlinson, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Sabharwal N. Hands-on Question Answering Systems with BERT 2021','Sabharwal N. Hands-on Question Answering Systems with BERT 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Samani H. Robotics for Pandemics 2022','Samani H. Robotics for Pandemics 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Scrum - A Story Of Transformation - A Go-To Guide To Start Your Agile Journey','Scrum - A Story Of Transformation - A Go-To Guide To Start Your Agile Journey',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Scrum - The Complete Guide to the Agile Project Management Framework that Helps the Software Development','Scrum - The Complete Guide to the Agile Project Management Framework that Helps the Software Development',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Scrum for Beginners - An Ultimate Guide to Increase Productivity and Performances','Scrum for Beginners - An Ultimate Guide to Increase Productivity and Performances',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Scrum Mastery- From Good To Great Servant-Leadership','Scrum Mastery- From Good To Great Servant-Leadership',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Scrum Project Management','Scrum Project Management',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Scrum- Novice to Ninja- Methods for Agile, Powerful Development','Scrum- Novice to Ninja- Methods for Agile, Powerful Development',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Security Designs for the Cloud, Iot, and Social Networking','Security Designs for the Cloud, Iot, and Social Networking',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Seductive Interaction Design_ Creating Playful, Fun, and Effective User Experiences by Stephen P. Anderson (2011)','Seductive Interaction Design_ Creating Playful, Fun, and Effective User Experiences by Stephen P. Anderson (2011)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Semantic Software Design - A New Theory and Practical Guide for Modern Architects by Eben Hewitt, 2020','Semantic Software Design - A New Theory and Practical Guide for Modern Architects by Eben Hewitt, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Sequential and Parallel Algorithms and Data Structures The Basic Toolbox by Sanders, P.Mehlhorn, K.Dietzfelbinger, M.Dementiev, R.','Sequential and Parallel Algorithms and Data Structures The Basic Toolbox by Sanders, P.Mehlhorn, K.Dietzfelbinger, M.Dementiev, R.',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Seriously Good Software - Code that Works, Survives, and Wins (Java)','Seriously Good Software - Code that Works, Survives, and Wins (Java)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Shadow Weave Simply- Understanding the Weave Structure 25 Projects to Practice Your Skills','Shadow Weave Simply- Understanding the Weave Structure 25 Projects to Practice Your Skills',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Sharpen Your Team''s Skills in Project Management','Sharpen Your Team''s Skills in Project Management',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Singh N. Building Microservices with Micronaut...guide...2021','Singh N. Building Microservices with Micronaut...guide...2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Smart Systems Design, Applications, and Challenges 2020','Smart Systems Design, Applications, and Challenges 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Smith H. Inspiring Remote Tech Teams. Keys to Leadership...2021','Smith H. Inspiring Remote Tech Teams. Keys to Leadership...2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Social Customer Relationship Management - Fundamentals, Applications, Technologies by Alt, R.Reinhold, O., 2020','Social Customer Relationship Management - Fundamentals, Applications, Technologies by Alt, R.Reinhold, O., 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Soft Error Reliability Using Virtual Platforms 2020','Soft Error Reliability Using Virtual Platforms 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Architecture for Business by Lina Khalid','Software Architecture for Business by Lina Khalid',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Architecture for Developers Vol 1 Technical leadership and the balance with agility by Simon Brown','Software Architecture for Developers Vol 1 Technical leadership and the balance with agility by Simon Brown',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Architecture for Developers Vol 2 Visualise, document and explore your software architecture by Simon Brown','Software Architecture for Developers Vol 2 Visualise, document and explore your software architecture by Simon Brown',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Architecture in Practice 4ed 2021','Software Architecture in Practice 4ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Architecture Patterns for Serverless Systems 2021','Software Architecture Patterns for Serverless Systems 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Architecture. The Hard Parts...Analysis 2022','Software Architecture. The Hard Parts...Analysis 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Defined Systems Sensing, Communication and Computation by Deze Zeng, Lin Gu, Shengli Pan, Song Guo','Software Defined Systems Sensing, Communication and Computation by Deze Zeng, Lin Gu, Shengli Pan, Song Guo',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Design - Creating Solutions for Ill-Structured Problems 3ed 2021','Software Design - Creating Solutions for Ill-Structured Problems 3ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Design for Flexibility, How to Avoid Programming Yourself into a Corner 2021','Software Design for Flexibility, How to Avoid Programming Yourself into a Corner 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Design for Resilient Computer Systems by Igor Schagaev, Eugene Zouev, Kaegi Thomas','Software Design for Resilient Computer Systems by Igor Schagaev, Eugene Zouev, Kaegi Thomas',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Development Measurement Programs by Miroslaw Staron, Wilhelm Meding','Software Development Measurement Programs by Miroslaw Staron, Wilhelm Meding',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Development, Design and Coding With Patterns, Debugging, Unit Testing, and Refactoring by John F. Dooley','Software Development, Design and Coding With Patterns, Debugging, Unit Testing, and Refactoring by John F. Dooley',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Engineering - A Practical Approach by Laxmidhar V. Gaopande, 2020','Software Engineering - A Practical Approach by Laxmidhar V. Gaopande, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Engineering for Absolute Beginners, Your Guide to Creating Software Products 2021','Software Engineering for Absolute Beginners, Your Guide to Creating Software Products 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Engineering for Variability Intensive Systems - Foundations and Applications (2019)','Software Engineering for Variability Intensive Systems - Foundations and Applications (2019)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Engineering in the Era of Cloud Computing by Muthu Ramachandran, Zaigham Mahmood','Software Engineering in the Era of Cloud Computing by Muthu Ramachandran, Zaigham Mahmood',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Engineering Practice. A Case Study Approach 2021','Software Engineering Practice. A Case Study Approach 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Engineering Research, Management and Applications by Roger Lee, 2020','Software Engineering Research, Management and Applications by Roger Lee, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Engineering with UML by Bhuvan Unhelkar','Software Engineering with UML by Bhuvan Unhelkar',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Estimation Without Guessing - Effective Planning in an Imperfect World by George Dinwiddie, 2019','Software Estimation Without Guessing - Effective Planning in an Imperfect World by George Dinwiddie, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Networks  Virtualization, SDN, 5G, and Security by Pujolle, Guy','Software Networks  Virtualization, SDN, 5G, and Security by Pujolle, Guy',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Processes and Life Cycle Models An Introduction to Modelling, Using and Managing Agile, Plan-Driven and Hybrid Processes by Ralf Kneuper','Software Processes and Life Cycle Models An Introduction to Modelling, Using and Managing Agile, Plan-Driven and Hybrid Processes by Ralf Kneuper',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Project Estimation - Intelligent Forecasting, Project Control, And Client Relationship Management','Software Project Estimation - Intelligent Forecasting, Project Control, And Client Relationship Management',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Reverse Engineering for Beginners 2020','Software Reverse Engineering for Beginners 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Software Testing. A Craftsman''s Approach 5ed 2021','Software Testing. A Craftsman''s Approach 5ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Solutions Architect''s Handbook, Shrivastava S. 2ed 2021','Solutions Architect''s Handbook, Shrivastava S. 2ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Solving for Project Risk Management by Christian Smart','Solving for Project Risk Management by Christian Smart',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Solving Product Design Exercises - Questions & Answers by Artiom Dashinsky, 2018','Solving Product Design Exercises - Questions & Answers by Artiom Dashinsky, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Soofastaei A. Virtual Assistant 2021','Soofastaei A. Virtual Assistant 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Starting Out with Programming Logic and Design 5ed 2019','Starting Out with Programming Logic and Design 5ed 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Starting Out with Programming Logic and Design by Tony Gaddis','Starting Out with Programming Logic and Design by Tony Gaddis',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Storytelling for User Experience_ Crafting Stories for Better Design by Kevin Brooks','Storytelling for User Experience_ Crafting Stories for Better Design by Kevin Brooks',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Strategic Design and Innovative Thinking in Business Operations, 2018','Strategic Design and Innovative Thinking in Business Operations, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Strategic Doing - Ten Skills for Agile Leadership','Strategic Doing - Ten Skills for Agile Leadership',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Strategic Project Management Made Simple, Solution Tools for Leaders and Teams 2ed 2021','Strategic Project Management Made Simple, Solution Tools for Leaders and Teams 2ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Strategic Writing for UX - Drive Engagement, Conversion, and Retention with Every Word by Torrey Podmajersky, 2019','Strategic Writing for UX - Drive Engagement, Conversion, and Retention with Every Word by Torrey Podmajersky, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Street Coder, The Rules to Break and How to Break Them 2022 by Sedat Kapanoglu','Street Coder, The Rules to Break and How to Break Them 2022 by Sedat Kapanoglu',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Structured Parallel Programming- Patterns for Efficient Computation','Structured Parallel Programming- Patterns for Efficient Computation',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Succeeding with Use Cases_ Working Smart to Deliver Quality (2005)','Succeeding with Use Cases_ Working Smart to Deliver Quality (2005)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'SuperSight_ What Augmented Reality Means for Our Lives, Our Work, and the Way We Imagine the Future by David Rose','SuperSight_ What Augmented Reality Means for Our Lives, Our Work, and the Way We Imagine the Future by David Rose',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Sustainable Production System - Eco-development versus Sustainable Development','Sustainable Production System - Eco-development versus Sustainable Development',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Sustainable Software Architecture Analyze and Reduce Technical Debt by Lilienthal, Carola','Sustainable Software Architecture Analyze and Reduce Technical Debt by Lilienthal, Carola',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'System Analysis, Software Engineering and Interactive Database Management System with Software Tools Design','System Analysis, Software Engineering and Interactive Database Management System with Software Tools Design',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'System-Scenario-based Design Principles and Applications 2020','System-Scenario-based Design Principles and Applications 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Systemic and Systematic Project Management, Joseph Eli Kasser, 2019','Systemic and Systematic Project Management, Joseph Eli Kasser, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Systemic Design. Theory, Methods, and Practice 2018','Systemic Design. Theory, Methods, and Practice 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Systems Analysis and Design, 12ed 2020','Systems Analysis and Design, 12ed 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Systems Engineering Demystified A practitioners handbook for developing complex systems using a model-based approach by Jon Holt','Systems Engineering Demystified A practitioners handbook for developing complex systems using a model-based approach by Jon Holt',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Systems Performance Enterprise and the Cloud by Brendan Gregg','Systems Performance Enterprise and the Cloud by Brendan Gregg',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Systems, Software and Services Process Improvement by Gerard Prudhomme','Systems, Software and Services Process Improvement by Gerard Prudhomme',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Technical Drawing for Product Design_ Mastering ISO GPS and ASME GD&T (2020)','Technical Drawing for Product Design_ Mastering ISO GPS and ASME GD&T (2020)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Ten types of innovation the discipline of building breakthroughs by Larry Keeley, Helen Walters, Ryan Pikkel, Brian Quinn','Ten types of innovation the discipline of building breakthroughs by Larry Keeley, Helen Walters, Ryan Pikkel, Brian Quinn',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Art Of Asking Essential Questions Based On Critical Thinking Concepts And Socratic Principles, Linda Elder, Richard Paul, 2019','The Art Of Asking Essential Questions Based On Critical Thinking Concepts And Socratic Principles, Linda Elder, Richard Paul, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Art of Coding. The Language of Drawing,...2020','The Art of Coding. The Language of Drawing,...2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Art of Enterprise Information Architecture A Systems-Based Approach for Unlocking Business Insight by Mario Godinez, Eberhard Hechler, Klaus Koenig, Steve Lockwood, Martin Oberhofer, Michael Schro','The Art of Enterprise Information Architecture A Systems-Based Approach for Unlocking Business Insight by Mario Godinez, Eberhard Hechler, Klaus Koenig, Steve Lockwood, Martin Oberhofer, Michael Schro',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Art of Game Design - A Book of Lenses','The Art of Game Design - A Book of Lenses',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The art of innovation by Kelley, Tom [Kelley, Tom]','The art of innovation by Kelley, Tom [Kelley, Tom]',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Art of Scalability - Scalable Web Architecture, Processes, and Organizations for the Modern Enterprise,2nd Edition','The Art of Scalability - Scalable Web Architecture, Processes, and Organizations for the Modern Enterprise,2nd Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Basics of User Experience Design - A UX Design Book by the Interaction Design Foundation, Mads Soegaard, 2018','The Basics of User Experience Design - A UX Design Book by the Interaction Design Foundation, Mads Soegaard, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The CAPTCHA. Perspectives and Challenges 2020','The CAPTCHA. Perspectives and Challenges 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Chief Data Officer Management Handbook, Set Up and Run an Organization��s Data Supply Chain 2020','The Chief Data Officer Management Handbook, Set Up and Run an Organization��s Data Supply Chain 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Clean Coder - A Code of Conduct for Professional Programmers - 1st Edition (2011)','The Clean Coder - A Code of Conduct for Professional Programmers - 1st Edition (2011)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Coder Habits - The 39 habits of the professional programmer','The Coder Habits - The 39 habits of the professional programmer',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Complete Project Manager - INTEGRATING PEOPLE, ORGA NIZATIONAL, AND TECHNICAL SKILLS 2ed 2019','The Complete Project Manager - INTEGRATING PEOPLE, ORGA NIZATIONAL, AND TECHNICAL SKILLS 2ed 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Complete Software Project Manager - Mastering Technology from Planning to Launch and Beyond by Anna P. Murray','The Complete Software Project Manager - Mastering Technology from Planning to Launch and Beyond by Anna P. Murray',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Data Storytelling Workbook by Anna Feigenbaum, Aria Alamalhodaei, 2020','The Data Storytelling Workbook by Anna Feigenbaum, Aria Alamalhodaei, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Data Team? Procedure - A Systematic Approach to School Improvement 2018','The Data Team? Procedure - A Systematic Approach to School Improvement 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Data-Driven Project Manager by Mario Vanhoucke, 2018','The Data-Driven Project Manager by Mario Vanhoucke, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Decision Model A Business Logic Framework Linking Business and Technology (IT Management) by Barbara von Halle, Larry Goldberg','The Decision Model A Business Logic Framework Linking Business and Technology (IT Management) by Barbara von Halle, Larry Goldberg',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Design of Everyday Things - Revised and Expanded Edition - Don Norman','The Design of Everyday Things - Revised and Expanded Edition - Don Norman',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The design studio - method creative problem solving with UX sketching by Sullivan, Brian','The design studio - method creative problem solving with UX sketching by Sullivan, Brian',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Design Thinking Quick Start Guide - A 6-Step Process for Generating and Implementing Creative Solutions','The Design Thinking Quick Start Guide - A 6-Step Process for Generating and Implementing Creative Solutions',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The DNA of Strategy Execution - Next Generation Project Management and PMO','The DNA of Strategy Execution - Next Generation Project Management and PMO',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Econometric Analysis of Network Data 2020','The Econometric Analysis of Network Data 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Elements of Computing Systems...from First Principles 2ed 2021','The Elements of Computing Systems...from First Principles 2ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Emerging Technology Of Big Data - Its Impact As A Tool For Ict Development','The Emerging Technology Of Big Data - Its Impact As A Tool For Ict Development',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Essentials Of Modern Software Engineering Free The Practices From The Method Prisons by Ivar Jacobson, Harold ��Bud�� Lawson, Pan-Wei Ng, Paul E. McMahon, Michael Goedicke','The Essentials Of Modern Software Engineering Free The Practices From The Method Prisons by Ivar Jacobson, Harold ��Bud�� Lawson, Pan-Wei Ng, Paul E. McMahon, Michael Goedicke',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The everyday project manager a primer for learning the principles of successful project management by Nicholls, Jeremy','The everyday project manager a primer for learning the principles of successful project management by Nicholls, Jeremy',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Fast Forward MBA in Project Management 6ed 2021','The Fast Forward MBA in Project Management 6ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Future of Software Quality Assurance 2020','The Future of Software Quality Assurance 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Human Change Management Body of Knowledge (HCMBOK), 3ed 2018 by Campos, Carla Goncalves, Vicente','The Human Change Management Body of Knowledge (HCMBOK), 3ed 2018 by Campos, Carla Goncalves, Vicente',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The human factor in project management by Denise Thompson, 2019','The human factor in project management by Denise Thompson, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Infographic A History of Data Graphics in News and Communications by Murray Dick','The Infographic A History of Data Graphics in News and Communications by Murray Dick',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Joy of UX - User Experience and Interactive Design for Developers 1e','The Joy of UX - User Experience and Interactive Design for Developers 1e',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Knowledge Manager''s Handbook...2ed 2020','The Knowledge Manager''s Handbook...2ed 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Maxcoders Guide To Finding Your Dream Developer Job','The Maxcoders Guide To Finding Your Dream Developer Job',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Miniature Guide to Critical Thinking Concepts and Tools by Richard Paul, 8ed 2019','The Miniature Guide to Critical Thinking Concepts and Tools by Richard Paul, 8ed 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Monkey-Proof Box - Curriculum design for building knowledge, developing creative thinking and promoting independence, Jonathan Lear, 2019','The Monkey-Proof Box - Curriculum design for building knowledge, developing creative thinking and promoting independence, Jonathan Lear, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Nature and Functions of Critical & Creative Thinking, Linda Elder, Richard Paul, 2019','The Nature and Functions of Critical & Creative Thinking, Linda Elder, Richard Paul, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Non-Project Manager''s Guide to Project Management by Sam Buah (2021)','The Non-Project Manager''s Guide to Project Management by Sam Buah (2021)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Object-Oriented Thought Process by Weisfeld, Matt','The Object-Oriented Thought Process by Weisfeld, Matt',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Palgrave Handbook of Knowledge Management by Jawad Syed, Peter A. Murray, Donald Hislop, Yusra Mouzughi, 2018','The Palgrave Handbook of Knowledge Management by Jawad Syed, Peter A. Murray, Donald Hislop, Yusra Mouzughi, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Product Manager''s Desk Reference 3ed 2021','The Product Manager''s Desk Reference 3ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Production of Global Web Series in a Networked Age','The Production of Global Web Series in a Networked Age',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Project Book. The Complete Guide to Consistently Delivering Great Projects 2019','The Project Book. The Complete Guide to Consistently Delivering Great Projects 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Project Management Communications Toolkit, 2nd Edition','The Project Management Communications Toolkit, 2nd Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Project Manager''s Guide to Health Information Technology Implementation, Susan M. Houston, 2ed, 2017','The Project Manager''s Guide to Health Information Technology Implementation, Susan M. Houston, 2ed, 2017',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Project Managers Desk Reference by James P. Lewis','The Project Managers Desk Reference by James P. Lewis',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Project Managers Guide to IDIQ Task Order Service Contracts','The Project Managers Guide to IDIQ Task Order Service Contracts',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Project Success Method- A Proven Approach for Achieving Superior Project Performance in as Little as 5 Days','The Project Success Method- A Proven Approach for Achieving Superior Project Performance in as Little as 5 Days',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The project workout - the ultimate guide to directing and managing business-led projects, Buttrick, Robert, 5ed 2019','The project workout - the ultimate guide to directing and managing business-led projects, Buttrick, Robert, 5ed 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The SaaS Sales Method for Customer Success & Account Managers - How to Grow Customers, 2018','The SaaS Sales Method for Customer Success & Account Managers - How to Grow Customers, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Science and Management of Uncertainty 2021','The Science and Management of Uncertainty 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Scrum Fieldbook A Master Class on Accelerating Performance, Getting Results, and Defining the Future by J. J. Sutherland [Sutherland, J. J.]','The Scrum Fieldbook A Master Class on Accelerating Performance, Getting Results, and Defining the Future by J. J. Sutherland [Sutherland, J. J.]',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Software Architect Elevator- Redefining the Architect''s Role in the Digital Enterprise 2020','The Software Architect Elevator- Redefining the Architect''s Role in the Digital Enterprise 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Ten Faces of Innovation IDEOs Strategies for Defeating the Devils Advocate and Driving Creativity Throughout Your Organization by Tom Kelley, Jonathan Littman','The Ten Faces of Innovation IDEOs Strategies for Defeating the Devils Advocate and Driving Creativity Throughout Your Organization by Tom Kelley, Jonathan Littman',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Today and Future of WSN, AI, and IoT A Compass and Torchbearer for the Technocrats by Chandrakant Naikodi, Suresh L','The Today and Future of WSN, AI, and IoT A Compass and Torchbearer for the Technocrats by Chandrakant Naikodi, Suresh L',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Unicode Standard, Version 13.0 by The Unicode Consortium','The Unicode Standard, Version 13.0 by The Unicode Consortium',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The UX Book - Process and Guidelines for Ensuring a Quality User Experience by Rex Hartson, Pardha Pyla','The UX Book - Process and Guidelines for Ensuring a Quality User Experience by Rex Hartson, Pardha Pyla',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The UX Book_ Agile UX Design for a Quality User Experience (2018)','The UX Book_ Agile UX Design for a Quality User Experience (2018)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The-Disciplines-of-User-Experience-Design_envis-precisely','The-Disciplines-of-User-Experience-Design_envis-precisely',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Theories of Knowledge - How to Think about What You Know by Joseph H. Shieber, 2019','Theories of Knowledge - How to Think about What You Know by Joseph H. Shieber, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Thinking Through Art - Reflections on Art as Research, Katy Macleod, Lin Holdridge, 2005','Thinking Through Art - Reflections on Art as Research, Katy Macleod, Lin Holdridge, 2005',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'This is service design doing - applying service design thinking in the real world - a practitioner��s handbook, 2018','This is service design doing - applying service design thinking in the real world - a practitioner��s handbook, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'This Is Service Design Doing - Using Research and Customer Journey Maps to Create Successful Services, 2016','This Is Service Design Doing - Using Research and Customer Journey Maps to Create Successful Services, 2016',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Total Quality Management (TQM) Principles, Methods, and Applications by Sunil Luthra  Dixit Garg  Ashish Agarwal  and Sachin K. Mangla','Total Quality Management (TQM) Principles, Methods, and Applications by Sunil Luthra  Dixit Garg  Ashish Agarwal  and Sachin K. Mangla',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Transformations and Projections in Computer Graphics','Transformations and Projections in Computer Graphics',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Transforming an idea into a business with design thinking - the structured approach from Silicon Valley for entrepreneurs and leaders, Alam, Mashhood, 2019','Transforming an idea into a business with design thinking - the structured approach from Silicon Valley for entrepreneurs and leaders, Alam, Mashhood, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Transforming Financial Institutions...2022','Transforming Financial Institutions...2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'TRIZ POWER TOOLS Job  1 Discovering Markets Carving out New Turf in Saturated Markets by Larry Ball and others','TRIZ POWER TOOLS Job  1 Discovering Markets Carving out New Turf in Saturated Markets by Larry Ball and others',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'TRIZ POWER TOOLS Job  2 Choosing Features What Features Will Excite the Target Market by Larry Ball and others','TRIZ POWER TOOLS Job  2 Choosing Features What Features Will Excite the Target Market by Larry Ball and others',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'TRIZ POWER TOOLS Job  4 Simplifying Simplifying, Cost Reducing  Overhauling to Increase Value by Larry Ball (Primary Author)--Collaborative Authors','TRIZ POWER TOOLS Job  4 Simplifying Simplifying, Cost Reducing  Overhauling to Increase Value by Larry Ball (Primary Author)--Collaborative Authors',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'TRIZ POWER TOOLS Job  6 Implementing Turning Your Concept into Reality by Larry Ball and others','TRIZ POWER TOOLS Job  6 Implementing Turning Your Concept into Reality by Larry Ball and others',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'TRIZ POWER TOOLS Job 5 Resolving Problems How to Systematically Tackle Tough Problems-Larry Ball (2010)','TRIZ POWER TOOLS Job 5 Resolving Problems How to Systematically Tackle Tough Problems-Larry Ball (2010)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'TRIZ POWER TOOLS Skill  1 Resolving Contradictions The Skill that Will Give You the Confidence to Do the Rest by Collaborative Authors','TRIZ POWER TOOLS Skill  1 Resolving Contradictions The Skill that Will Give You the Confidence to Do the Rest by Collaborative Authors',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Tsui F. Essentials of Software Engineering 5ed 2022','Tsui F. Essentials of Software Engineering 5ed 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Understand, Manage, And Prevent Algorithmic Bias - A Guide For Business Users And Data Scientists by Tobias Baer, 2019','Understand, Manage, And Prevent Algorithmic Bias - A Guide For Business Users And Data Scientists by Tobias Baer, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Understanding Distributed Systems, What every developer should know about large distributed applications 2021','Understanding Distributed Systems, What every developer should know about large distributed applications 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Understanding Service-Oriented Architecture Designing Adaptive Business Model for SMEs (English Edition) by Seth, Dr.  Ashish, Seth, Dr.  Kirti','Understanding Service-Oriented Architecture Designing Adaptive Business Model for SMEs (English Edition) by Seth, Dr.  Ashish, Seth, Dr.  Kirti',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'universal principles of design','universal principles of design',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'User Experience Design (Smashing eBook Series)','User Experience Design (Smashing eBook Series)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'User-Driven Applications for Research and Science, Building Programs for Fields with Open Scenarios and Unpredictable User Actions 2020','User-Driven Applications for Research and Science, Building Programs for Fields with Open Scenarios and Unpredictable User Actions 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'UX Design A Field Guide to Process and Methodology for Timeless User Experience by Steven Miller [Miller, Steven]','UX Design A Field Guide to Process and Methodology for Timeless User Experience by Steven Miller [Miller, Steven]',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'UX Design for Enterprise Apps Bridge the User Experience Gap in Enterprise Applications for Financial Services  Insurance by Synechron Inc  Kapil Wadhawan  Saumen Das  Ashish Nangla  Diana Kearns-Mano (z-lib.org)','UX Design for Enterprise Apps Bridge the User Experience Gap in Enterprise Applications for Financial Services  Insurance by Synechron Inc  Kapil Wadhawan  Saumen Das  Ashish Nangla  Diana Kearns-Mano (z-lib.org)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'UX Design for Mobile, Design apps that deliver impressive mobile experiences','UX Design for Mobile, Design apps that deliver impressive mobile experiences',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'UX for Developers - How to Integrate User-Centered Design Principles Into Your Day-to-Day Development Work by Westley Knight, 2019','UX for Developers - How to Integrate User-Centered Design Principles Into Your Day-to-Day Development Work by Westley Knight, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'UX for Lean Startups - Faster, Smarter User Experience Research and Design by Laura Klein','UX for Lean Startups - Faster, Smarter User Experience Research and Design by Laura Klein',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'UX for XR User Experience Design and Strategies for Immersive Technologies (Design Thinking) by Hillmann, Cornel','UX for XR User Experience Design and Strategies for Immersive Technologies (Design Thinking) by Hillmann, Cornel',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'UX Fundamentals for Non-UX Professionals - User Experience Principles for Managers, Writers, Designers, and Developers by Edward Stull','UX Fundamentals for Non-UX Professionals - User Experience Principles for Managers, Writers, Designers, and Developers by Edward Stull',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'UX Management Methods A User Experience Design Leadership Guide for Beginners How to Lead UX Designers or Master the UX Research Lifecycle as A Team of One by Binder, Jon','UX Management Methods A User Experience Design Leadership Guide for Beginners How to Lead UX Designers or Master the UX Research Lifecycle as A Team of One by Binder, Jon',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'UX Style Frameworks - Creating Collaborative Standards 1e','UX Style Frameworks - Creating Collaborative Standards 1e',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Viable Project Business. A Bionic Management System for Large Enterprises 2021','Viable Project Business. A Bionic Management System for Large Enterprises 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Virtualization A Managers Guide','Virtualization A Managers Guide',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Virtuous Cycles In Humanistic Management - From the Classroom To The Corporation by Ricardo Aguado, Almudena Eizaguirre, 2020','Virtuous Cycles In Humanistic Management - From the Classroom To The Corporation by Ricardo Aguado, Almudena Eizaguirre, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Visual And Multimodal Research In Organization And Management Studies by H?llerer, Markus A., 2019','Visual And Multimodal Research In Organization And Management Studies by H?llerer, Markus A., 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Visual project management simplifying project execution to deliver on time and on budget by Woeppel, Mark J','Visual project management simplifying project execution to deliver on time and on budget by Woeppel, Mark J',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Visualizing Project Management - Models and Frameworks for Mastering Complex Systems by Kevin Forsberg, Hal Mooz, Howard Cotterman','Visualizing Project Management - Models and Frameworks for Mastering Complex Systems by Kevin Forsberg, Hal Mooz, Howard Cotterman',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Visualizing Technology Complete, Geoghan D.  8ed 2020','Visualizing Technology Complete, Geoghan D.  8ed 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Visvizi A. Managing Smart Cities...Effective Management 2022','Visvizi A. Managing Smart Cities...Effective Management 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Voice User Interface Design - Moving from GUI to Mixed Modal Interaction by Ritwik Dasgupta','Voice User Interface Design - Moving from GUI to Mixed Modal Interaction by Ritwik Dasgupta',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Whitman M. Principles of Incident Response...Recovery 3ed 2021','Whitman M. Principles of Incident Response...Recovery 3ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Whitt P. Practical Paint.NET...Image Editor for Microsoft 2022','Whitt P. Practical Paint.NET...Image Editor for Microsoft 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Work Breakdown Structures The Foundation for Project Management Excellence by Eric S. Norman, Shelly A. Brotherton, Robert T. Fried','Work Breakdown Structures The Foundation for Project Management Excellence by Eric S. Norman, Shelly A. Brotherton, Robert T. Fried',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Workman M. Information Security Management 2ed 2023','Workman M. Information Security Management 2ed 2023',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Write Great Code. Vol. 1 Understanding the Machine 2ed 2020','Write Great Code. Vol. 1 Understanding the Machine 2ed 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Write Great Code. Vol. 2 Thinking Low-Level...2ed 2020','Write Great Code. Vol. 2 Thinking Low-Level...2ed 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Write Great Code. Vol. 3  Engineering Software 2020','Write Great Code. Vol. 3  Engineering Software 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Your First Year in Code - A complete guide for new aspiring developers','Your First Year in Code - A complete guide for new aspiring developers',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Advanced Web Development with React','Advanced Web Development with React',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Beginning MERN Stack Build and Deploy a Full Stack MongoDB, Express, React, Node.js App by Greg Lim','Beginning MERN Stack Build and Deploy a Full Stack MongoDB, Express, React, Node.js App by Greg Lim',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Beginning React Native with Hooks by Lim, Greg','Beginning React Native with Hooks by Lim, Greg',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Beginning React with Hooks','Beginning React with Hooks',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Bieh M. React Deep Dive 2021','Bieh M. React Deep Dive 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Biswas N. Beginning React and Firebase...React and Firebase 2021','Biswas N. Beginning React and Firebase...React and Firebase 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Build SPA with React and Wagtail','Build SPA with React and Wagtail',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Building React Apps with Server-Side Rendering, Use React, Redux, and Next to Build Full Server-Side Rendering Applications by Mohit Thakkar, 2020','Building React Apps with Server-Side Rendering, Use React, Redux, and Next to Build Full Server-Side Rendering Applications by Mohit Thakkar, 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Crump S. Simplify Testing with React Testing Library...2021','Crump S. Simplify Testing with React Testing Library...2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Designing Applications with Spring Boot 2.2 and React JS Step-by-step guide to design and develop intuitive full stack web applications by Dinesh Rajput','Designing Applications with Spring Boot 2.2 and React JS Step-by-step guide to design and develop intuitive full stack web applications by Dinesh Rajput',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Designing React Hooks the Right Way by Fang Jin','Designing React Hooks the Right Way by Fang Jin',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Feldman R. Developing A React.js Edge...User Interfaces 2ed 2018','Feldman R. Developing A React.js Edge...User Interfaces 2ed 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Full Stack Serverless - Modern Application Development With React Aws And Graphql','Full Stack Serverless - Modern Application Development With React Aws And Graphql',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Full-Stack React Projects- Build real-world modern web apps with the MERN stack from scratch, 2nd Edition','Full-Stack React Projects- Build real-world modern web apps with the MERN stack from scratch, 2nd Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Full-Stack React, TypeScript, and Node Build cloud-ready web applications using React 17 with Hooks and GraphQL by David Choi','Full-Stack React, TypeScript, and Node Build cloud-ready web applications using React 17 with Hooks and GraphQL by David Choi',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Fullstack React with TypeScript by Nate Murray','Fullstack React with TypeScript by Nate Murray',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Fullstack React. The Complete Guide...2021','Fullstack React. The Complete Guide...2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Functional React, 2nd Edition - Quick start with React Hooks, Redux and MobX','Functional React, 2nd Edition - Quick start with React Hooks, Redux and MobX',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Griffiths D. React Cookbook. Recipes for Mastering the React Framework 2021','Griffiths D. React Cookbook. Recipes for Mastering the React Framework 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Integrating D3.js with React','Integrating D3.js with React',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'JavaScript Everywhere - Building Cross-Platform Applications with GraphQL, React, React Native, and Electron by Adam D. Scott','JavaScript Everywhere - Building Cross-Platform Applications with GraphQL, React, React Native, and Electron by Adam D. Scott',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Larsen-Disney S. Elevating React Web Development with Gatsby 4 2022','Larsen-Disney S. Elevating React Web Development with Gatsby 4 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learn React with TypeScript 3 by Carl Rippon','Learn React with TypeScript 3 by Carl Rippon',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learning React - A Hands-On Guide to Building Web Applications Using React and Redux by Kirupa Chinnathambi','Learning React - A Hands-On Guide to Building Web Applications Using React and Redux by Kirupa Chinnathambi',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learning React - Modern Patterns for Developing React Apps, 2ed','Learning React - Modern Patterns for Developing React Apps, 2ed',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learning React js - Learn React JS From Scratch with Hands-On Projects , 2nd Edition','Learning React js - Learn React JS From Scratch with Hands-On Projects , 2nd Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learning React Native - Building Native Mobile Apps with JavaScript','Learning React Native - Building Native Mobile Apps with JavaScript',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'MERN Projects for Beginners - Create Five Social Web Apps Using MongoDB, Express.js, React','MERN Projects for Beginners - Create Five Social Web Apps Using MongoDB, Express.js, React',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'MobX Quick Start Guide - Supercharge the client state in your React apps with MobX','MobX Quick Start Guide - Supercharge the client state in your React apps with MobX',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Modern Full-Stack Development - Using TypeScript, React, Node.js, Webpack, and Docker by Frank Zammetti','Modern Full-Stack Development - Using TypeScript, React, Node.js, Webpack, and Docker by Frank Zammetti',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Practical Enterprise React...2021','Practical Enterprise React...2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Pro React 16 by Adam Freeman','Pro React 16 by Adam Freeman',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Qiu J. Test-Driven Development with React...Applications 2021','Qiu J. Test-Driven Development with React...Applications 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'React - Up & Running - Building Web Applications','React - Up & Running - Building Web Applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'React 17 Design Patterns and Best Practices...3ed 2021','React 17 Design Patterns and Best Practices...3ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'React and Libraries Your Complete Guide to the React Ecosystem by Elad Elrom','React and Libraries Your Complete Guide to the React Ecosystem by Elad Elrom',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'React and React Native, 3rd Edition - A complete hands-on guide to modern web and mobile development with React by Adam Boduch, Roy Derks','React and React Native, 3rd Edition - A complete hands-on guide to modern web and mobile development with React by Adam Boduch, Roy Derks',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'React Cookbook - Recipes for Mastering the React Framework','React Cookbook - Recipes for Mastering the React Framework',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'React Design Patterns and Best Practices - Design, build & deploy production-ready web apps using standard industry practices, Carlos Santana Rold��n, 2019','React Design Patterns and Best Practices - Design, build & deploy production-ready web apps using standard industry practices, Carlos Santana Rold��n, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'React Hooks in Action With Suspense and Concurrent Mode by John Larsen','React Hooks in Action With Suspense and Concurrent Mode by John Larsen',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'React js - The Ultimate Beginner''s Guide to Learn React js Programming Step by Step','React js - The Ultimate Beginner''s Guide to Learn React js Programming Step by Step',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'React js For Beginners Learning React js Library From Scratch , 1st Edition by William, Emma','React js For Beginners Learning React js Library From Scratch , 1st Edition by William, Emma',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'React js The Ultimate Beginners Guide to Learn React js Programming Step by Step by Kathleen Peterson','React js The Ultimate Beginners Guide to Learn React js Programming Step by Step by Kathleen Peterson',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'React Material-UI Cookbook- Build captivating user experiences using React and Material-UI.mobi','React Material-UI Cookbook- Build captivating user experiences using React and Material-UI.mobi',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'React Native Cookbook, 2nd Edition','React Native Cookbook, 2nd Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'React Projects by Roy Derks','React Projects by Roy Derks',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'React to Python. Creating React Front-End Web App with Python 2021','React to Python. Creating React Front-End Web App with Python 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'React-Architect Full-Stack React App Development and Serverless Deployment by Frank Zickert','React-Architect Full-Stack React App Development and Serverless Deployment by Frank Zickert',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'React.js Complete Guide To Server-Side Rendering (Front-end development Book 1)','React.js Complete Guide To Server-Side Rendering (Front-end development Book 1)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Stefanov S. React. Up and Running. Building Web App 2ed 2022','Stefanov S. React. Up and Running. Building Web App 2ed 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Test-Driven React - Find Problems Early, Fix Them Quickly, Code with Confidence [PDF]','Test-Driven React - Find Problems Early, Fix Them Quickly, Code with Confidence [PDF]',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Road to learn React - Your journey to master plain yet pragmatic React.js, Robin Wieruch, 2018','The Road to learn React - Your journey to master plain yet pragmatic React.js, Robin Wieruch, 2018',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Road to React - Your journey to master plain yet pragmatic React','The Road to React - Your journey to master plain yet pragmatic React',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'A Guide to Bootstrap Studio The definitive Guide to Bootstrap Studio by C?ppicus, Ben (z-lib.org)','A Guide to Bootstrap Studio The definitive Guide to Bootstrap Studio by C?ppicus, Ben (z-lib.org)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Advanced API Security - OAuth 2.0 and Beyond by Prabath Siriwardena, 2ed 2020','Advanced API Security - OAuth 2.0 and Beyond by Prabath Siriwardena, 2ed 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Agile Web Development with Rails 6','Agile Web Development with Rails 6',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Angular and Machine Learning by Pocket Primer','Angular and Machine Learning by Pocket Primer',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Angular Design Patterns Implement the Gang of Four patterns in your apps with Angular by Mathieu Nayrolles','Angular Design Patterns Implement the Gang of Four patterns in your apps with Angular by Mathieu Nayrolles',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Angular2+ Made Easy. A beginners handbook...2021','Angular2+ Made Easy. A beginners handbook...2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Ayaz M. Angular Cookbook. Over 80 actionable recipes...2021','Ayaz M. Angular Cookbook. Over 80 actionable recipes...2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Beginning Ruby 3. From Beginner to Pro 4ed 2021','Beginning Ruby 3. From Beginner to Pro 4ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Blazor WebAssembly by Example A project-based guide to building web apps with .NET, Blazor WebAssembly, and C by Wright, Toi B.,','Blazor WebAssembly by Example A project-based guide to building web apps with .NET, Blazor WebAssembly, and C by Wright, Toi B.,',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Bootstrap Reference Guide Web Development with Bootstrap by Claudia Alves','Bootstrap Reference Guide Web Development with Bootstrap by Claudia Alves',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Brown E. Web Development with Node and Express...2ed 2020','Brown E. Web Development with Node and Express...2ed 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Build Websites with Hugo','Build Websites with Hugo',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Build Your Own 2D Game Engine and Create Great Web Games - Using HTML5, JavaScript, and WebGL2','Build Your Own 2D Game Engine and Create Great Web Games - Using HTML5, JavaScript, and WebGL2',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Building Offline Applications with Angular','Building Offline Applications with Angular',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Building Progressive Web Applications with Vue.js - Reliable, Fast, and Engaging Apps with Vue.js by Carlos Rojas','Building Progressive Web Applications with Vue.js - Reliable, Fast, and Engaging Apps with Vue.js by Carlos Rojas',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Building Your Online Store With Wordpress And Woocommerce','Building Your Online Store With Wordpress And Woocommerce',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Butler T.PHP and MySQL.Novice to Ninja.Get Up to Speed..7ed 2022','Butler T.PHP and MySQL.Novice to Ninja.Get Up to Speed..7ed 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Creating Data Driven Web Sites An Introduction To Html Css Php And Mysql','Creating Data Driven Web Sites An Introduction To Html Css Php And Mysql',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Creating Web Pages For Dummies','Creating Web Pages For Dummies',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Creative DIY Microcontroller Projects with TinyGo and WebAssembly 2021','Creative DIY Microcontroller Projects with TinyGo and WebAssembly 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Creative Projects for Rust Programmers - Build exciting projects on domains such as web apps, WebAssembly, games, and parsing','Creative Projects for Rust Programmers - Build exciting projects on domains such as web apps, WebAssembly, games, and parsing',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'CSS 3 Visual Learning Guide - a comprehensive example set for getting up to speed fast','CSS 3 Visual Learning Guide - a comprehensive example set for getting up to speed fast',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'CSS for Dummies - Learn CSS 3.0 in 30 Minutes - 1E (2017)','CSS for Dummies - Learn CSS 3.0 in 30 Minutes - 1E (2017)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'CSS Grid Layout - 5 Practical Projects by Diego Souza, Ahmed Bouchefra, Giulio Mainardi, Ilya Bodrov-Krukowski, Craig Buckler','CSS Grid Layout - 5 Practical Projects by Diego Souza, Ahmed Bouchefra, Giulio Mainardi, Ilya Bodrov-Krukowski, Craig Buckler',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'CSS in Depth','CSS in Depth',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'CSS Secrets- Better Solutions to Everyday Web Design Problems (EPUB)','CSS Secrets- Better Solutions to Everyday Web Design Problems (EPUB)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'CSS3 SIMPLIFIED CSS Simplified And Turned To Fun (Web Development Simplified Book 4) by Marcus, O.A.','CSS3 SIMPLIFIED CSS Simplified And Turned To Fun (Web Development Simplified Book 4) by Marcus, O.A.',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Design and Build Great Web APIs, Robust, Reliable, and Resilient 2020','Design and Build Great Web APIs, Robust, Reliable, and Resilient 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Developing Business Applications For The Web With Html Css Jsp Php Asp Net','Developing Business Applications For The Web With Html Css Jsp Php Asp Net',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Dhule M. Beginning Game Development with Godot...2022','Dhule M. Beginning Game Development with Godot...2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Encyclopedia of Criminal Activities and the Deep Web 2021','Encyclopedia of Criminal Activities and the Deep Web 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Every Layout - Relearn CSS layout, by example, 2nd Edition','Every Layout - Relearn CSS layout, by example, 2nd Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Extending Gatsby - Create a Blog Site Using MDX, CDN, and Netlify','Extending Gatsby - Create a Blog Site Using MDX, CDN, and Netlify',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Foundation Gatsby Projects Create Four Real Production Websites with Gatsby by Nabendu Biswas','Foundation Gatsby Projects Create Four Real Production Websites with Gatsby by Nabendu Biswas',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Full-Stack Web Development with Jakarta EE and Vue.js  Your One-Stop Guide to Building Modern Full-Stack Applications with Jakarta EE and Vue.js 2020','Full-Stack Web Development with Jakarta EE and Vue.js  Your One-Stop Guide to Building Modern Full-Stack Applications with Jakarta EE and Vue.js 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Godot From Zero to proficiency (Advanced) - Use advanced techniques to build both 2D and 3D games','Godot From Zero to proficiency (Advanced) - Use advanced techniques to build both 2D and 3D games',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Hands On JavaScript High Performance - Build faster web apps using Node.js, Svelte.js and WebAssembly','Hands On JavaScript High Performance - Build faster web apps using Node.js, Svelte.js and WebAssembly',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Hands On With Html Apis Harness The Power Of Html Apis','Hands On With Html Apis Harness The Power Of Html Apis',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Hands-on Nuxt.js Web Development_ Build universal and static-generated Vue.js applications using Nuxt.js (2020)','Hands-on Nuxt.js Web Development_ Build universal and static-generated Vue.js applications using Nuxt.js (2020)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Higginbotham J. Principles of Web API Design..Microservices 2022','Higginbotham J. Principles of Web API Design..Microservices 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'How To Build And Design A Website Using Wordpress A Step By Step Guide With Screenshots','How To Build And Design A Website Using Wordpress A Step By Step Guide With Screenshots',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'HTML & CSS QuickStart Guide 2021','HTML & CSS QuickStart Guide 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'HTML and CSS - Visual QuickStart Guide, 9th Edition','HTML and CSS - Visual QuickStart Guide, 9th Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Html And Jquery Coding Exercises Coding For Beginners','Html And Jquery Coding Exercises Coding For Beginners',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Html Bootcamp Learn The Basics Of Html And Css In 2 Weeks','Html Bootcamp Learn The Basics Of Html And Css In 2 Weeks',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'HTML CSS Coding Practice Book 1 (Practical Hands-on Series) by ,','HTML CSS Coding Practice Book 1 (Practical Hands-on Series) by ,',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Html Css For Beginners Your Step By Step Guide To Easily Html Css Programming In 7 Days','Html Css For Beginners Your Step By Step Guide To Easily Html Css Programming In 7 Days',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Html Css Questions Answers For Interview Students Competitive Exams','Html Css Questions Answers For Interview Students Competitive Exams',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Html Simplified And Turned To Fun Web Development Simplified Book 1','Html Simplified And Turned To Fun Web Development Simplified Book 1',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'HTML SIMPLIFIED HTML Simplified And Turned To Fun (Web Development Simplified Book 1) by Marcus, O.A.','HTML SIMPLIFIED HTML Simplified And Turned To Fun (Web Development Simplified Book 1) by Marcus, O.A.',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Html, Css  Javascript in easy steps Special Edition by Mike McGrath','Html, Css  Javascript in easy steps Special Edition by Mike McGrath',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'HTML5 & CSS3 - A Step-by-Step guide for beginners to build and design responsive','HTML5 & CSS3 - A Step-by-Step guide for beginners to build and design responsive',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'HTTP2 in Action by Barry Pollard','HTTP2 in Action by Barry Pollard',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Interactive Web-Based Data Visualization with R, plotly, and shiny (True EPUB)','Interactive Web-Based Data Visualization with R, plotly, and shiny (True EPUB)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Jquery For Beginners Javascript Jquery Tutorial','Jquery For Beginners Javascript Jquery Tutorial',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Kanban Successful Evolutionary Change for Your Technology Business by David J. Anderson','Kanban Successful Evolutionary Change for Your Technology Business by David J. Anderson',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Kataoka B. Digital Transformation and Modernization with IBM API connect 2022','Kataoka B. Digital Transformation and Modernization with IBM API connect 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Kibana 7 Quick Start Guide, Anurag Srivastava, 2019','Kibana 7 Quick Start Guide, Anurag Srivastava, 2019',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Landing Page Hot Tips 2021','Landing Page Hot Tips 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learn Rails 6 Accelerated Web Development With Ruby On Rails 2021','Learn Rails 6 Accelerated Web Development With Ruby On Rails 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learn Web Design with HTML and CSS for beginners 2020','Learn Web Design with HTML and CSS for beginners 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learn WebAssembly - Build web applications with native performance using Wasm and C C++','Learn WebAssembly - Build web applications with native performance using Wasm and C C++',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Learning Bulma Understand How to Develop Responsive, Mobile-first Websites Using This Impressive, Modern Framework by Aravind Shenoy','Learning Bulma Understand How to Develop Responsive, Mobile-first Websites Using This Impressive, Modern Framework by Aravind Shenoy',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'LEARNING WEB DESIGN - HTML5 - A Practical Handbook','LEARNING WEB DESIGN - HTML5 - A Practical Handbook',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Master Cascading Style Sheets (CSS) Quickly - CSS Properties, CSS Property Definitions','Master Cascading Style Sheets (CSS) Quickly - CSS Properties, CSS Property Definitions',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Mezzalira L. Building Micro-Frontends...(Final Release) 2021 Fix','Mezzalira L. Building Micro-Frontends...(Final Release) 2021 Fix',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Micro Frontends in Action (2020)','Micro Frontends in Action (2020)',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Modern CSS with Tailwind - Flexible Styling Without the Fuss','Modern CSS with Tailwind - Flexible Styling Without the Fuss',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Moving from Unity to Godot - An In-Depth Handbook to Godot for Unity Users','Moving from Unity to Godot - An In-Depth Handbook to Godot for Unity Users',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Network Geeks - How They Built the Internet','Network Geeks - How They Built the Internet',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Networking All-in-One For Dummies 8ed 2021','Networking All-in-One For Dummies 8ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Ng-Book The Complete Guide to Angular 9 by Nathan Murray Felipe Coury Ari Lerner Carlos Taborda','Ng-Book The Complete Guide to Angular 9 by Nathan Murray Felipe Coury Ari Lerner Carlos Taborda',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'ng-book. The Complete Book on Angular 11 2020','ng-book. The Complete Book on Angular 11 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Ninja Squad. Become A Ninja With Angular (v13.0.0) 2021','Ninja Squad. Become A Ninja With Angular (v13.0.0) 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'PHP 8 Quick Scripting Reference...Guide...3ed 2020','PHP 8 Quick Scripting Reference...Guide...3ed 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Pro Angular 9 Build Powerful and Dynamic Web Apps by Adam Freeman','Pro Angular 9 Build Powerful and Dynamic Web Apps by Adam Freeman',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Pro Html5 Games Learn To Build Your Own Games Using Html5 And Javascript','Pro Html5 Games Learn To Build Your Own Games Using Html5 And Javascript',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Programming 3d Applications With Html5 And Webgl','Programming 3d Applications With Html5 And Webgl',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Programming In Html Completed In 1 Day','Programming In Html Completed In 1 Day',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Programming WebAssembly with Rust- Unified Development for Web, Mobile, and Embedded Applications','Programming WebAssembly with Rust- Unified Development for Web, Mobile, and Embedded Applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Progressive Web Apps with Angular Create Responsive, Fast and Reliable PWAs Using Angular by Majid Hajian','Progressive Web Apps with Angular Create Responsive, Fast and Reliable PWAs Using Angular by Majid Hajian',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Query Understanding for Search Engines 2020','Query Understanding for Search Engines 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Responsive Web Design By Example - Beginners Guide 2nd Revised Edition','Responsive Web Design By Example - Beginners Guide 2nd Revised Edition',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Spatial Analysis with R. Statistics,...2ed 2021','Spatial Analysis with R. Statistics,...2ed 2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Svelte 3 Up and Running A practical guide to building production-ready static web apps with Svelte 3 by Alessandro Segala','Svelte 3 Up and Running A practical guide to building production-ready static web apps with Svelte 3 by Alessandro Segala',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'TCP-IP. Protocol Suite 4ed 2010','TCP-IP. Protocol Suite 4ed 2010',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Art of WebAssembly...2021','The Art of WebAssembly...2021',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'The Illustrated Network How TCPIP Works in a Modern Network by Walter Goralski','The Illustrated Network How TCPIP Works in a Modern Network by Walter Goralski',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Two Scoops of Django 3.x by Daniel  Audrey Feldroy','Two Scoops of Django 3.x by Daniel  Audrey Feldroy',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Using Gatsby and Netlify CMS Build Blazing Fast JAMstack Apps Using Gatsby and Netlify CMS by Joe Attardi','Using Gatsby and Netlify CMS Build Blazing Fast JAMstack Apps Using Gatsby and Netlify CMS by Joe Attardi',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Uzayr S. Web Performance Optimization. A Practical Approach 2022','Uzayr S. Web Performance Optimization. A Practical Approach 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Vue.js Learn By Coding by Scott Hughes','Vue.js Learn By Coding by Scott Hughes',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Wargo J. Learning Progressive Web Apps 2020','Wargo J. Learning Progressive Web Apps 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Web Accessibility for Developers by Digital Education Strategies','Web Accessibility for Developers by Digital Education Strategies',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Web Application Advanced Hacking 2020','Web Application Advanced Hacking 2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Web Application Security. Exploitation...2020','Web Application Security. Exploitation...2020',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Web Design Playground Html Css The Interactive Way','Web Design Playground Html Css The Interactive Way',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Web Development with Angular and Bootstrap Embrace responsive web design and build adaptive Angular web applications','Web Development with Angular and Bootstrap Embrace responsive web design and build adaptive Angular web applications',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Web Security for Developers - Real Threats, Practical Defense by Malcolm McDonald','Web Security for Developers - Real Threats, Practical Defense by Malcolm McDonald',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'WebAssembly for Cloud. A Basic Guide...Cloud Apps 2022','WebAssembly for Cloud. A Basic Guide...Cloud Apps 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'WebAssembly in Action by Gerard Gallant','WebAssembly in Action by Gerard Gallant',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'WebAssembly.The Definitive Guide.(Final Release) 2022','WebAssembly.The Definitive Guide.(Final Release) 2022',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'Wordpress Fundamentals A Comprehensive Beginner S Guide To Wordpress','Wordpress Fundamentals A Comprehensive Beginner S Guide To Wordpress',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'wordpress website design - Step by Step Guide on WP How to Build a Beautiful Website with wordpress','wordpress website design - Step by Step Guide on WP How to Build a Beautiful Website with wordpress',false);

INSERT INTO `gict`.`tutorials` (`id`,`title`,`description`,`published`) VALUES(0,'XML and Related Technologies','XML and Related Technologies',false);

