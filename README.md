# TURKEY QUAKE DATA API

# API DOCUMENTATION
Quake_data_API is a web service for TURKEY quake datas.
This is the most powerful feature of RUBY ON RAILS.
```ruby
  render json:{
      @quake_datas
    }
```
Rendering datas multiple format(only some configuration).

For using this api on your local system:
Using DOCKER :(Coming Soon)
  ``` sh
      $ sudo docker pull nkudatascience/quake_data_api_master
  ```
  And after you need some CRONTAB configuration.




    ```
      //GET localhost:3000/cities.json
        $curl localhost:3000/cities.json
        //all cities

        $    {
                  'şehirler':{
                        'id': 1,
                        'name': 'ADANA',
                        'latitude': 37,
                        'longitude': 35.3213
                      },
                        {
                        'id': 2,
                        'name': 'ADIYAMAN',
                        'latitude': 37.7648,
                        'longitude': 38.2786
            }

        ```


  ```sh
    //GET localhost:3000/quakes/[PLATE_CODE_OF_CITY]
      $curl localhost:3000/quakes/12
      //12 numbered city.

      $  'sehir': AĞRI,
            'deprem_kayitlari': [
            {
                'id': 57977,
                'date': '2017-02-21',
                'power': 2,
                'city_id': 4,
                'latitude': 39.6727,
                'longitude': 42.6487,
                'time': '2000-01-01T10:21:24.000Z'
            },

          .//And other quake DATAS ABOUT CITY.

  ```

On schedule.rb file change the .log file path on your system.

```ruby

  set :output, {:error => '~/[YOUR OWN PATH]/api.error.log', :standard => '~/[YOUR OWN PATH]/api.standard.log'}
  set :environment, "development"#according as :environment it using [DATABASENAME]_development

```

```sh
  $curl localhost:3000/quakes
  $[
        {
        'id': 22038,
        'date': '2017-03-12',
        'power': 2.4,
        'city_id': 80,
        'latitude': 37.1208,
        'longitude': 36.1817,
        'created_at': '2017-03-11T22:44:53.000Z',
        'updated_at': '2017-03-11T22:44:53.000Z',
        'time': '2000-01-01T00:02:34.000Z'
        },

```



FOR FETCH ALL QUAKE DATA
```sh
  $ gem install rest-client
  $ ruby parser.rb [YOUR_FOLDER_NAME]

```
