## Инструкция
- Первый раз соберем контейнер
  ```sh
    docker build -t potreeconverter .
  ```
- Все las файлы скопируем в папку `/input`
- И с помощью команды конвертируем наш las в potree формат
  ```sh
    docker run -v $PWD/input:/input -v $PWD/output:/output potreeconverter PotreeConverter /input/<name_las_file>.las -p <name_for_converted_file> -o /output/<folder_name>
  ```