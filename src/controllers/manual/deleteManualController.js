import pool from "../../configs/connectDB";

const deleteManualController = async (req, res) => {
  try {
    const { id } = req.body;
    if (!id) {
      res.status(200).json({
        result: false,
        msg: "Bạn chưa nhập dữ liệu hoặc dữ liệu không đúng.",
      });
    } else {
      const [deleteManual] = await pool.execute(
        "DELETE FROM manual WHERE Id = ?",
        [id]
      );
      res.status(200).json({
        result: true,
        msg: "Xoá hướng dẫn sử dụng thành công.",
      });
    }
  } catch (error) {
    console.log(error);
    res.status(200).json({
      result: false,
      msg: "Hệ thống đang bảo trì. Vui lòng thử lại sau.",
    });
  }
};

export default deleteManualController;
