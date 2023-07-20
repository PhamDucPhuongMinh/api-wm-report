import express from "express";
import loginController from "../controllers/loginController";
import changePasswordController from "../controllers/changePasswordController";
import menuController from "../controllers/menuController";
import newsController from "../controllers/news/newsController";
import bannerController from "../controllers/banner/bannerController";
import faqsController from "../controllers/faqs/faqsController";
import faqsCategoryController from "../controllers/faqs-category/FaqsCategoryController";
import manualCategoryController from "../controllers/manual-category/manualCategoryController";
import manualController from "../controllers/manual/manualController";

const router = express.Router();

const initRoutes = (app) => {
  router.post("/login", loginController);
  router.post("/change-password", changePasswordController);
  router.post("/menu", menuController);
  router.post("/news/:action?", newsController);
  router.post("/banner/:action?", bannerController);
  router.post("/faqs-category/:action?", faqsCategoryController);
  router.post("/faqs/:action?", faqsController);
  router.post("/manual-category/:action?", manualCategoryController);
  router.post("/manual/:action?", manualController);

  return app.use("/", router);
};

export default initRoutes;
