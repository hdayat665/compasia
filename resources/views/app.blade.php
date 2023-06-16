<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CompAsia</title>
    <!-- Bootstrap Icons CSS -->
    {{-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.0/font/bootstrap-icons.css"> --}}
</head>

<body id="app">
    <div class="py-4">
        <product-component></product-component>
    </div>
</body>
<script src="{{ mix('js/app.js') }}"></script>

</html>
