import { createRouter, createWebHashHistory } from "vue-router";

import Layout from "@/layout/Layout.vue";
import Home from "@/views/Home.vue";
import Subjects from "@/views/Subjects.vue";
import Contact from "@/views/Contact.vue";

const routes = [
  {
    path: "/:pathMatch(.*)*",
    redirect: "/home",
    component: Layout,
    children: [
      {
        path: "/home",
        name: "home",
        components: { default: Home },
      },
      {
        path: "/subjects",
        name: "subjects",
        components: { default: Subjects },
      },
      {
        path: "/contact",
        name: "contact",
        components: { default: Contact },
      },
    ],
  },
];

const router = createRouter({
  history: createWebHashHistory(),
  linkActiveClass: "active",
  routes,
});

export default router;
