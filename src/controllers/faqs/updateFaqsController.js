import pool from "../../configs/connectDB";

const updateFaqsController = async (req, res) => {
  try {
    const { question, answer, category, id } = req.body;
    if (!question || !answer || !category || !id) {
      res.status(200).json({
        result: false,
        msg: "Bạn chưa nhập dữ liệu hoặc dữ liệu không đúng.",
      });
    } else {
      const [updateFaqs] = await pool.execute(
        "UPDATE faqs SET Question=?,Answer=?,Category=? WHERE Id=?",
        [question, answer, category, id]
      );
      res.status(200).json({
        result: true,
        msg: "Thay đổi FAQs thành công.",
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

export default updateFaqsController;
