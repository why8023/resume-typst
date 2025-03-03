#import "./lib.typ": *
#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

#show: project.with(
  title: "WHY RESUME",
  author: (name: "王弘扬"),
  contacts: ("183 2850 4432", "291424708@qq.com", "28岁", "硕士", "CET-6",),
)

// 自定义区域为图片
#place(top + right, dy: -10pt, image("why.jpg", width: 8%, alt: "why", fit: "contain", format: "jpg", height: 8%))

#resume-section("教育经历")
#resume-education(
  university: "成都理工大学",
  degree: "学术型硕士研究生",
  school: "地球探测与信息技术",
  start: "2016.09",
  end: "2019.06",
)[]
#resume-education(
  university: "成都理工大学",
  degree: "工学学士",
  school: "勘查技术与工程(卓越工程师计划)",
  start: "2012.09",
  end: "2016.06",
)[]

#resume-section("技术能力")
#resume-item(
  left: "",
  right: "",
)[
  - *编程语言*: *Python*, *C++*, *Matlab*, SQL, Shell
  - *工具*: *PyTorch*, DeepSpeed, TensorFlow, PyCaret, scikit-learn, Pandas, Numpy, LangChain, Docker, FastAPI, Gradio, Git,
    CMake
  - *AI*: 熟悉传统机器学习算法和主流深度学习模型，根据场景需求灵活进行模型训练和优化
]

#resume-section("工作经历")
#resume-work(company: "成都心吉康科技有限公司", duty: "算法工程师", start: "2023.10", end: "2025.02")[
  - *主导开发*: ECG ST异常检测系统
  - *协同参与*: ECG/PPG房颤检测系统, 医疗设备端心电同步算法, 手表端智能光强调节算法
]
#resume-work(company: "成都乐动信息技术有限公司", duty: "算法工程师", start: "2020.07", end: "2023.10")[
  - *主导开发*: 基于深度学习的运动过程识别模型, 基于ML的GPS轨迹优化算法, 基于Stable Diffusion的奖牌生成模型
  - *协同参与*: 移动端和大屏基于人体骨骼点的动作姿态识别功能, 基于LangChain和OpenAI的智能客服系统
]
#resume-work(company: "成都酷乐无限科技有限公司", duty: "算法工程师", start: "2019.07", end: "2020.06")[
  - *主导开发*: 游戏作弊行为检测模型, 相似账号识别算法, 游戏等级评定算法, 游戏数据的时间序列预测模型
]

#resume-section("项目经历")
#resume-project(title: "ECG ST异常检测系统", duty: "深度学习 / 信号处理", start: "2024.06", end: "2025.01")[
  - 基于信号语义分割模型, 训练ECG信号特征点检测模型, 准确率提升至95%(+*10%*)
  - 基于ST检测经典算法, 融合IMU数据, 创新ST段检测算法, 结合小波变换和自适应阈值技术, 实现对ST段抬高和压低的准确识别,
    准确率提升至84%(+*6%*)
  - 基于C++通过libtorch部署模型，实现快速模型推理，采用多线程技术提高处理效率
]
#resume-project(title: "ECG/PPG房颤检测系统", duty: "深度学习 / 信号处理", start: "2024.06", end: "2025.01")[
  - 基于信号波形形态学特征，设计最优网络结构，充分利用波形时序动态特性，检测准确率提升至98%(+*5%*)
  - 优化模型结构，采用注意力机制和残差连接，减少参数量40%的同时保持性能，使模型适合在低功耗设备上运行
  - 基于C++/libtorch部署算法，实现高效数据采样和多线程并行计算，优化内存缓冲区使用，提升单次推理效率，内存占用率降低40%
  - 设计自适应阈值策略，根据不同用户的生理特征动态调整检测参数，并引入房颤负荷，有效识别并排除，假阳性率降低5%
]
#resume-project(title: "医疗设备端心电同步算法", duty: "深度学习 / 信号处理", start: "2024.06", end: "2025.01")[
  - 设计并实现高精度心电同步算法，通过R波精确检测和动态窗口技术，将同步准确率提升至98%
  - 基于C++开发高性能算法库，采用多线程并行处理和内存池技术，在嵌入式设备上实现实时处理，延迟降低40%
]

#resume-project(
  title: "基于深度学习的运动过程精细划分模型",
  duty: "分类算法 / 防作弊服务 / 异常检测",
  start: "2020.07",
  end: "2022.09",
)[
  - 搭建Label Studio收集和标注移动设备的三轴传感器数据, 建立运动数据集
  - 使用PyCaret训练, 对比, 优化机器学习模型, 最后选定XGBooost模型, 准确率达到89\%
  - 使用Pytorch以DeepConvLSTM为baseline 进行训练和优化, 进一步提高准确率至99\%
  - 结合ONNX Runtime, FastAPI, Uvicorn提供服务, 编写Dockerfile进行部署
]
#resume-project(
  title: "基于人体骨骼点的动作姿态识别算法",
  duty: "MoveNet / 移动端 / 动作匹配",
  start: "2022.03",
  end: "2023.03",
)[
  - 部署MoveNet模型到移动端, 测试骨骼点识别的效果, 准确率达到 90\%
  - 基于商汤SDK提供的骨骼点数据, 独创动作匹配算法, 评估动作标准度
  - Android端使用Pytorch通过自定义编译所需算子后部署, iOS端使用TensorFlow Lite部署
]
#resume-project(title: "基于LangChain和OpenAI的客服问答系统", duty: "文档问答 / ChatGPT", start: "2023.06", end: "2023.08")[
  - 基于LangChain和Vector Database实现对客服文档资料的读取, 分割, 向量化存储, 相似性检索
  - 使用OpenAI的GPT模型, 优化PromptTemplate, 实现符合标准的回答流程
  - 向开源项目LangChain提交了PR修复Metadata Filter的问题,并被采纳
]
#resume-project(title: "游戏作弊检测模型", duty: "异常检测 / 特征挖掘", start: "2019.06", end: "2020.06")[
  - 基于常用统计特征能够有效识别作弊行为, 使用Isolation Forest进行异常检测, 准确率达到 80\%
  - 为解决新的作弊方式，探索游戏策略层次的敏感特征，准确率提高到 95\%
  - 使用Pandas进行特征提取和分析, 利用scikit-learn进行异常检测, 通过Flask提供检测服务
]
#resume-project(
  title: "基于NearestNeighbor的GPS轨迹优化算法",
  duty: "KNN / KalmanFiltering / 停留点检测",
  start: "2021.03",
  end: "2021.07",
)[
  - 针对通用运动场景, 独创高精度GPS轨迹停留点检测算法,解决密集停留点对轨迹的影响
  - 针对跑圈场景,通过异常检测处理轨迹突变点,采用卡尔曼滤波修正轨迹飘移点
  - 基于NearestNeighbor算法和高质量的历史数据对偏移轨迹纠偏, 提高轨迹合理性
]
#resume-project(title: "基于Stable Diffusion的奖牌生成模型", duty: "模型微调", start: "2023.01", end: "2023.02")[
  - 基于Stable Diffusion模型对自定义的奖牌数据集进行Fine-tuning, 并在测试集上取得了较好的效果
  - 使用Gradio搭建webUI, 提供奖牌生成服务
]
#resume-section("个人成果")
- 
