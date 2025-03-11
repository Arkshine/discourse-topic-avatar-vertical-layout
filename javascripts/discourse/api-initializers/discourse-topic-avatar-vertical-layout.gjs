import { apiInitializer } from "discourse/lib/api";

export default apiInitializer((api) => {
  const site = api.container.lookup("service:site");

  if (site.mobileView) {
    return;
  }

  api.decorateWidget("post-avatar:after", (helper) => {
    return helper.attach("poster-name", helper.attrs);
  });
});
