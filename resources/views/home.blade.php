@extends('layouts.app')

@section('content')
    <div class="max-w-6xl mx-auto sm:px-6 lg:px-8">

        <form class="js-form-filter" action="{{ route('table.filter') }}" method="post">
            @csrf

            <div class="table__filters d-flex flex-row justify-center align-items-center">
                <div class="filter__item m-2">
                    <label for="name-org">Название организации</label>
                    <select class="browser-default custom-select" name="org_id" id="name-org" required>
                        @foreach($orgs as $org)
                            <option value="{{ $org->id }}">{{ $org->name }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="filter__item m-2">
                    <label for="start_date">Время начала</label>
                    <select class="browser-default custom-select" name="start_date" id="start_date" required>
                        @foreach($startDate as $item)
                            <option value="{{ $item->start_date }}">{{ $item->start_date }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="filter__item m-2">
                    <label for="finish_date">Время конца</label>
                    <select class="browser-default custom-select" name="finish_date" id="finish_date" required>
                        @foreach($finishDate as $item)
                            <option value="{{ $item->finish_date }}">{{ $item->finish_date }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="filter__item m-2">
                    <button type="submit" class="btn btn-primary">Обновить</button>
                </div>
            </div>

            @if($errors->any())
                <div class="alert alert-danger d-flex flex-column">
                    @foreach($errors->all() as $error)
                        <div>{{ $error }}</div>
                    @endforeach
                </div>
            @endif

            <div class="js-table-alert"></div>

            <table class="table table-bordered bg-white shadow sm:rounded-lg overflow-hidden">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Название организации</th>
                        <th scope="col">Полное имя сотрудника</th>
                        <th scope="col">Название курса</th>
                        <th scope="col">Завершён\Не завершён</th>
                    </tr>
                </thead>
                <tbody class="js-table-filter">
                    @foreach($table as $key => $column)
                        <tr>
                            <th scope="row">{{ ++$key }}</th>
                            <td>{{ $column->org }}</td>
                            <td>{{ $column->name }}</td>
                            <td>{{ $column->course }}</td>
                            @switch($column->lifetime)
                                @case(1)
                                @case(2)
                                    <td>Не завершён</td>
                                    @break
                                @case(3)
                                @case(4)
                                    <td>Завершён</td>
                                    @break
                                @default
                                    <td>Н/Д</td>
                            @endswitch
                        </tr>
                    @endforeach
                </tbody>
            </table>

        </form>

    </div>
@endsection
