// ==================== 述职抽签系统 - 配置文件 ====================
// 在此处编辑中心名称和人员列表

const CONFIG = {
    // 中心数据
    centers: [
        { id: 1, name: "北京中心", quota: 2 },
        { id: 2, name: "上海中心", quota: 1 },
        { id: 3, name: "广州中心", quota: 2 },
        { id: 4, name: "深圳中心", quota: 1 }
    ],
    
    // 人员数据（centerId 对应上方中心的 id）
    members: [
        // 北京中心
        { id: 1, centerId: 1, name: "张三" },
        { id: 2, centerId: 1, name: "李四" },
        { id: 3, centerId: 1, name: "王五" },
        { id: 4, centerId: 1, name: "赵六" },
        
        // 上海中心
        { id: 5, centerId: 2, name: "钱七" },
        { id: 6, centerId: 2, name: "孙八" },
        { id: 7, centerId: 2, name: "周九" },
        
        // 广州中心
        { id: 8, centerId: 3, name: "吴十" },
        { id: 9, centerId: 3, name: "郑一" },
        { id: 10, centerId: 3, name: "王二" },
        { id: 11, centerId: 3, name: "李三" },
        
        // 深圳中心
        { id: 12, centerId: 4, name: "张四" },
        { id: 13, centerId: 4, name: "刘五" },
        { id: 14, centerId: 4, name: "陈六" }
    ]
};

// ==================== 使用说明 ====================
// 
// 添加新中心：
// 1. 在 centers 数组中添加新对象：{ id: 5, name: "新中心名称", quota: 1 }
// 2. id 必须是唯一数字，从 1 开始递增
//
// 添加新人员：
// 1. 在 members 数组中添加新对象：{ id: 15, centerId: 1, name: "姓名" }
// 2. id 必须是唯一数字
// 3. centerId 对应所属中心的 id
//
// 修改抽取名额：
// 修改 centers 中对应中心的 quota 值
//
// 修改后保存文件，刷新网页即可生效！
// ================================================================
