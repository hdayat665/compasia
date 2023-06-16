<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <form id="uploadForm">
                            <div class="row">
                                <div class="col-lg-6">
                                    <input
                                        type="file"
                                        name="file"
                                        class="form-control"
                                    />
                                </div>
                                <div class="col-lg-3">
                                    <button
                                        type="button"
                                        class="btn btn-block btn-outline-primary w-100"
                                        id="uploadBtn"
                                    >
                                        <i class="bi bi-cloud-upload"></i>
                                        Upload
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="card-header">Product List</div>
                    <div class="card-body">
                        <table class="table" id="productTable">
                            <thead>
                                <tr>
                                    <th>Product Id</th>
                                    <th>Types</th>
                                    <th>Brand</th>
                                    <th>Model</th>
                                    <th>Capacity</th>
                                    <th>Quantity</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="product in products">
                                    <td>{{ product.product_id }}</td>
                                    <td>{{ product.type }}</td>
                                    <td>{{ product.brand }}</td>
                                    <td>{{ product.model }}</td>
                                    <td>{{ product.capacity }}</td>
                                    <td>{{ product.quantity }}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import axios from "axios";
import "datatables.net-responsive-dt";

export default {
    data() {
        return {
            products: {},
        };
    },
    methods: {
        async getProduct() {
            try {
                const response = await axios.get("/api/productList");
                this.products = response.data.products;
            } catch (error) {
                console.error(error);
            }
        },
        initializeDataTable() {
            $("#productTable").DataTable({
                // responsive: true,
            });
        },
    },
    async created() {
        await this.getProduct();
        this.initializeDataTable();
    },
    mounted() {
        $(document).ready(() => {
            $("#uploadBtn").click(() => {
                const data = new FormData(
                    document.getElementById("uploadForm")
                );
                $.ajax({
                    type: "POST",
                    url: "/api/uploadProductExcel",
                    data: data,
                    processData: false,
                    contentType: false,
                }).done(() => {
                    location.reload();
                });
            });
        });
    },
};
</script>
