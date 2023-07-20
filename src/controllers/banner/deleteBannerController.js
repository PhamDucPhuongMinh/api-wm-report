import pool from "../../configs/connectDB";

const deleteBannerController = async (req, res) => {
  try {
    const { id } = req.body;
    if (!id) {
      res.status(200).json({
        result: false,
        msg: "Bạn chưa nhập dữ liệu hoặc dữ liệu không đúng.",
      });
    } else {
      const [deleteNews] = await pool.execute(
        "DELETE FROM banner WHERE Id = ?",
        [id]
      );
      res.status(200).json({
        result: true,
        msg: "Xoá banner thành công.",
      });
    }
  } catch (error) {
    console.log(error);
    res.status(200).json({
      result: false,
      msg: "Hệ thống bảo trì. Vui lòng thử lại.",
    });
  }
};

export default deleteBannerController;
