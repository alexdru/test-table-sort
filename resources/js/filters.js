$(function() {

    if ($('.js-form-filter').length) {
        $('.js-form-filter').on('submit', function (e) {
            e.preventDefault();

            let form = $(this);
            $.ajax({
                url: form.attr('action'),
                type: form.attr('method'),
                data: form.serialize(),
                dataType: 'json',

                success: function (data) {
                    console.log(data);

                    if (!data.length > 0) {

                        $('.js-table-alert').html('');
                        $('.js-table-alert').append(
                            '<div class="alert alert-warning d-flex flex-column">' +
                            'Данных не найдено' +
                            '</div>'
                        );

                        $('.js-table-filter').html('');
                        $('.js-table-filter').append(
                            '<tr>' +
                            '<th scope="row">0</th>' +
                            '<td>N/A</td>' +
                            '<td>N/A</td>' +
                            '<td>N/A</td>' +
                            '<td>N/A</td>' +
                            '</tr>'
                        );

                    } else {

                        $('.js-table-alert').html('');
                        $('.js-table-alert').append(
                            '<div class="alert alert-success d-flex flex-column">' +
                            'Данные таблицы успешно обновлены' +
                            '</div>'
                        );

                        $('.js-table-filter').html('');
                        $.each(data, function (index, value) {
                            console.log(value);
                            let lifetime;
                            switch (value.lifetime) {
                                case 1:
                                case 2:
                                    lifetime = '<td>Не завершён</td>';
                                    break;
                                case 3:
                                case 4:
                                    lifetime = '<td>Завершён</td>';
                                    break;
                                default:
                                    lifetime = '<td>Н/Д</td>';
                            }

                            $('.js-table-filter').append(
                                '<tr>' +
                                '<th scope="row">' + ++index + '</th>' +
                                '<td>' + value.org + '</td>' +
                                '<td>' + value.name + '</td>' +
                                '<td>' + value.course + '</td>' +
                                lifetime +
                                '</tr>'
                            );
                        });
                    }

                },
                error: function (data) {
                    console.log(data);

                    $('.js-table-alert').html('');
                    $('.js-table-alert').append(
                        '<div class="alert alert-danger d-flex flex-column">' +
                        'Данные таблицы не удалось обновить' +
                        '</div>'
                    );
                }

            });
            return false;
        });
    }

});
