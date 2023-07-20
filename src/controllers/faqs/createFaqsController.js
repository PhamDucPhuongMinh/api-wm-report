import pool from "../../configs/connectDB";

const createFaqsController = async (req, res) => {
  try {
    const { question, answer, category } = req.body;
    if (!question || !answer || !category) {
      res.status(200).json({
        result: false,
        msg: "Bạn chưa nhập dữ liệu hoặc dữ liệu không đúng.",
      });
    } else {
      const [storeFaqs] = await pool.execute(
        "INSERT INTO faqs(Question, Answer, Category) VALUES (?,?,?)",
        [question, answer, category]
      );
      res.status(200).json({
        result: true,
        msg: "Tạo FAQs thành công.",
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

export default createFaqsController;
