require("./bootstrap");

import { createApp } from "vue";
import Product from "./components/ProductComponent.vue";
import "bootstrap/dist/css/bootstrap.css";
import $ from "jquery";
window.$ = $;

const app = createApp({});
app.component("product-component", Product);

app.mount("#app");
