codeunit 50100 "UserInfo"
{
    procedure FetchUserInfoUsingApi()
    var
        Client: HttpClient;
        Response: HttpResponseMessage;
        JsonText: Text;
        UsersArray: JsonArray;
        UserObj: JsonObject;
        Token: JsonToken;
        AddressObj: JsonObject;
        GeoObj: JsonObject;
        CompanyObj: JsonObject;
        RecUser: Record CustomerInfo;
        i: Integer;
    begin
        // Call API
        if not Client.Get('https://jsonplaceholder.typicode.com/users', Response) then begin
            Message('API request failed.');
            exit;
        end;

        Response.Content.ReadAs(JsonText);

        // Parse JSON array
        if not UsersArray.ReadFrom(JsonText) then begin
            Message('Invalid JSON.');
            exit;
        end;

        // Loop through users
        for i := 0 to UsersArray.Count - 1 do begin
            UsersArray.Get(i, Token);
            UserObj := Token.AsObject();

            RecUser.Init();

            // id
            UserObj.Get('id', Token);
            RecUser."User Id" := Token.AsValue().AsInteger();


            // name
            UserObj.Get('name', Token);
            RecUser.Name := Token.AsValue().AsText();

            // username
            UserObj.Get('username', Token);
            RecUser.Username := Token.AsValue().AsText();

            // email
            UserObj.Get('email', Token);
            RecUser.Email := Token.AsValue().AsText();

            // address object
            if UserObj.Get('address', Token) then begin
                AddressObj := Token.AsObject();

                AddressObj.Get('street', Token);
                RecUser.Street := Token.AsValue().AsText();

                AddressObj.Get('suite', Token);
                RecUser.Suite := Token.AsValue().AsText();

                AddressObj.Get('city', Token);
                RecUser.City := Token.AsValue().AsText();

                AddressObj.Get('zipcode', Token);
                RecUser.ZipCode := Token.AsValue().AsText();

                // geo
                if AddressObj.Get('geo', Token) then begin
                    GeoObj := Token.AsObject();

                    GeoObj.Get('lat', Token);
                    RecUser.Latitude := Token.AsValue().AsText();

                    GeoObj.Get('lng', Token);
                    RecUser.Longitude := Token.AsValue().AsText();
                end;
            end;

            // phone
            UserObj.Get('phone', Token);
            RecUser.Phone := Token.AsValue().AsText();

            // website
            UserObj.Get('website', Token);
            RecUser.Website := Token.AsValue().AsText();

            // company object
            if UserObj.Get('company', Token) then begin
                CompanyObj := Token.AsObject();

                CompanyObj.Get('name', Token);
                RecUser.CompanyName := Token.AsValue().AsText();

                CompanyObj.Get('catchPhrase', Token);
                RecUser.CatchPhrase := Token.AsValue().AsText();

                CompanyObj.Get('bs', Token);
                RecUser.BS := Token.AsValue().AsText();
            end;

            RecUser.Insert(true);
        end;

        Message('Users inserted successfully.');
    end;
}
