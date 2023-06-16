require("./bootstrap");

import { createApp } from "vue";
import Product from "./components/ProductComponent.vue";
import "bootstrap/dist/css/bootstrap.css";
import "datatables.net";
import "datatables.net-bs5/css/dataTables.bootstrap5.min.css";
import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap-icons/font/bootstrap-icons.css";

import $ from "jquery";
// import "jquery/dist/jquery.min.js";
import "datatables.net-bs5/js/dataTables.bootstrap5.min.js";
import "bootstrap/dist/js/bootstrap.bundle.min.js";
import "datatables.net-bs5";
import responsive from "datatables.net-responsive";
window.$ = $;

const app = createApp({});
app.component("product-component", Product);

app.mount("#app");
