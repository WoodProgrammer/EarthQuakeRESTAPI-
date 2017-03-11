# Quake_data_API
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

  ```sh
      $curl localhost:3000/api/locations/12
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

FOR FETCH ALL QUAKE DATA
```sh
  $ gem install rest-client
  $ ruby parser.rb [YOUR_FOLDER_NAME]

```
