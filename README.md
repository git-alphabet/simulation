## **更新说明 (2025-12-03)**

- **新增地图**：加入了 `rmuc_2026` 与 `rmul_2026` 两个仿真世界，用于 2026 赛季场景测试。
- **机器人模型变更**：机器人模型正在逐步变更（机构模型完成后会继续更新并替换现有模型）。
- **切换世界**：如需更换当前仿真世界，请编辑 `src/rmu_gazebo_simulator/rmu_gazebo_simulator/config/gz_world.yaml` 中的 `world` 字段。
- **用途说明**：此分支/包主要用于测试决策算法及评估新算法（例如控制器）的可行性与交互效果。
- **GPU 加速渲染**：若要启用 NVIDIA GPU 加速渲染（建议用于有独立显卡的机器），在启动前在终端设置以下环境变量：
  - `export __NV_PRIME_RENDER_OFFLOAD=1`
  - `export __GLX_VENDOR_LIBRARY_NAME=nvidia`
  启动脚本 `start_gazebo.sh` 默认会使用 GPU 渲染（在环境变量设置正确的前提下）。
- **机器人模型包**：机器人外观/URDF 等模型放在 `pb2025_robot_description` 包内。
