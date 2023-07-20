import pool from "../../configs/connectDB";
import jwt from "jsonwebtoken";
import createNewsController from "./createNewsController";
import updateNewsController from "./updateNewsController";
import deleteNewsController from "./deleteNewsController";

const newsController = async (req, res) => {
  try {
    const token = req.headers.token;
    jwt.verify(token, process.env.PRIVATE_KEY, async function (err, decoded) {
      if (err) {
        res.status(405).json({
          result: false,
          msg: "Bạn không có quyền thực hiện hành động này. Vui lòng đăng nhập.",
        });
      } else {
        const { action } = req.params;
        switch (action) {
          case "create":
            createNewsController(decoded, req, res);
            break;
          case "update":
            updateNewsController(req, res);
            break;
          case "delete":
            deleteNewsController(req, res);
            break;
          default:
            const [news] = await pool.execute(
              "SELECT news.Id, news.Title, news.Highlight, news.Thumbnail, news.Content, news.CreateAt, news.UpdateAt, users.Name as CreateBy FROM news INNER JOIN users ON news.CreateBy=users.Id;"
            );
            res.status(200).json({
              result: true,
              msg: "Success",
              data: news,
            });
        }
      }
    });
  } catch (error) {
    console.log(error);
    res.status(200).json({
      result: false,
      msg: "Hệ thống bảo trì. Vui lòng thử lại.",
    });
  }
};

export default newsController;
