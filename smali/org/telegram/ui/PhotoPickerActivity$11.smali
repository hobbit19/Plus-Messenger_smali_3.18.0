.class Lorg/telegram/ui/PhotoPickerActivity$11;
.super Landroid/os/AsyncTask;
.source "PhotoPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity;->searchBingImages(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private canRetry:Z

.field final synthetic this$0:Lorg/telegram/ui/PhotoPickerActivity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    iput-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->canRetry:Z

    return-void
.end method

.method private downloadUrlContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .local v3, "canRetry":Z
    const/4 v11, 0x0

    .local v11, "httpConnectionStream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .local v7, "done":Z
    const/4 v15, 0x0

    .local v15, "result":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .local v10, "httpConnection":Ljava/net/URLConnection;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v8, "downloadUrl":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    const-string/jumbo v18, "Ocp-Apim-Subscription-Key"

    sget-object v19, Lorg/telegram/messenger/BuildVars;->BING_SEARCH_KEY:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v18, "User-Agent"

    const-string/jumbo v19, "Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/20150101 Firefox/47.0 (Chrome)"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v18, "Accept-Language"

    const-string/jumbo v19, "en-us,en;q=0.5"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v18, "Accept"

    const-string/jumbo v19, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v18, "Accept-Charset"

    const-string/jumbo v19, "ISO-8859-1,utf-8;q=0.7,*;q=0.7"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x1388

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v18, 0x1388

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    instance-of v0, v10, Ljava/net/HttpURLConnection;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v12, v0

    .local v12, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    .local v17, "status":I
    const/16 v18, 0x12e

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    const/16 v18, 0x12d

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    const/16 v18, 0x12f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    :cond_0
    const-string/jumbo v18, "Location"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "newUrl":Ljava/lang/String;
    const-string/jumbo v18, "Set-Cookie"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "cookies":Ljava/lang/String;
    new-instance v8, Ljava/net/URL;

    .end local v8    # "downloadUrl":Ljava/net/URL;
    invoke-direct {v8, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .restart local v8    # "downloadUrl":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    const-string/jumbo v18, "Cookie"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v18, "Ocp-Apim-Subscription-Key"

    sget-object v19, Lorg/telegram/messenger/BuildVars;->BING_SEARCH_KEY:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v18, "User-Agent"

    const-string/jumbo v19, "Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/20150101 Firefox/47.0 (Chrome)"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v18, "Accept-Language"

    const-string/jumbo v19, "en-us,en;q=0.5"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v18, "Accept"

    const-string/jumbo v19, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v18, "Accept-Charset"

    const-string/jumbo v19, "ISO-8859-1,utf-8;q=0.7,*;q=0.7"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .end local v5    # "cookies":Ljava/lang/String;
    .end local v12    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v13    # "newUrl":Ljava/lang/String;
    .end local v17    # "status":I
    :cond_1
    invoke-virtual {v10}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .end local v8    # "downloadUrl":Ljava/net/URL;
    :goto_0
    if-eqz v3, :cond_4

    if-eqz v10, :cond_2

    :try_start_1
    instance-of v0, v10, Ljava/net/HttpURLConnection;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    check-cast v10, Ljava/net/HttpURLConnection;

    .end local v10    # "httpConnection":Ljava/net/URLConnection;
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .local v4, "code":I
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-eq v4, v0, :cond_2

    const/16 v18, 0xca

    move/from16 v0, v18

    if-eq v4, v0, :cond_2

    const/16 v18, 0x130

    move/from16 v0, v18

    if-eq v4, v0, :cond_2

    .end local v4    # "code":I
    :cond_2
    :goto_1
    if-eqz v11, :cond_3

    const v18, 0x8000

    :try_start_2
    move/from16 v0, v18

    new-array v6, v0, [B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .local v6, "data":[B
    move-object/from16 v16, v15

    .end local v15    # "result":Ljava/lang/StringBuilder;
    .local v16, "result":Ljava/lang/StringBuilder;
    :goto_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/PhotoPickerActivity$11;->isCancelled()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v15, v16

    .end local v6    # "data":[B
    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v15    # "result":Ljava/lang/StringBuilder;
    :cond_3
    :goto_3
    if-eqz v11, :cond_4

    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_4
    if-eqz v7, :cond_c

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_5
    return-object v18

    .restart local v10    # "httpConnection":Ljava/net/URLConnection;
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Throwable;
    instance-of v0, v9, Ljava/net/SocketTimeoutException;

    move/from16 v18, v0

    if-eqz v18, :cond_6


    move-result v18

    if-eqz v18, :cond_5

    const/4 v3, 0x0

    :cond_5
    :goto_6
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    instance-of v0, v9, Ljava/net/UnknownHostException;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    const/4 v3, 0x0

    goto :goto_6

    :cond_7
    instance-of v0, v9, Ljava/net/SocketException;

    move/from16 v18, v0

    if-eqz v18, :cond_8

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_5

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "ECONNRESET"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    const/4 v3, 0x0

    goto :goto_6

    :cond_8
    instance-of v0, v9, Ljava/io/FileNotFoundException;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    const/4 v3, 0x0

    goto :goto_6

    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v10    # "httpConnection":Ljava/net/URLConnection;
    :catch_1
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v9    # "e":Ljava/lang/Exception;
    .end local v15    # "result":Ljava/lang/StringBuilder;
    .restart local v6    # "data":[B
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    :cond_9
    :try_start_5
    invoke-virtual {v11, v6}, Ljava/io/InputStream;->read([B)I

    move-result v14

    .local v14, "read":I
    if-lez v14, :cond_a

    if-nez v16, :cond_d

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v15    # "result":Ljava/lang/StringBuilder;
    :goto_7
    :try_start_6
    new-instance v18, Ljava/lang/String;

    const/16 v19, 0x0

    const-string/jumbo v20, "UTF-8"

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v6, v1, v14, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    move-object/from16 v16, v15

    .end local v15    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    goto :goto_2

    :cond_a
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_b

    const/4 v7, 0x1

    move-object/from16 v15, v16

    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v15    # "result":Ljava/lang/StringBuilder;
    goto :goto_3

    .end local v15    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    :cond_b
    move-object/from16 v15, v16

    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v15    # "result":Ljava/lang/StringBuilder;
    goto :goto_3

    .end local v14    # "read":I
    .end local v15    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v9

    move-object/from16 v15, v16

    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v9    # "e":Ljava/lang/Exception;
    .restart local v15    # "result":Ljava/lang/StringBuilder;
    :goto_8
    :try_start_7
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_3

    .end local v6    # "data":[B
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    .local v9, "e":Ljava/lang/Throwable;
    :goto_9
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .end local v9    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Throwable;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_5

    .end local v15    # "result":Ljava/lang/StringBuilder;
    .restart local v6    # "data":[B
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    :catch_5
    move-exception v9

    move-object/from16 v15, v16

    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v15    # "result":Ljava/lang/StringBuilder;
    goto :goto_9

    .restart local v14    # "read":I
    :catch_6
    move-exception v9

    goto :goto_8

    .end local v15    # "result":Ljava/lang/StringBuilder;
    .restart local v16    # "result":Ljava/lang/StringBuilder;
    :cond_d
    move-object/from16 v15, v16

    .end local v16    # "result":Ljava/lang/StringBuilder;
    .restart local v15    # "result":Ljava/lang/StringBuilder;
    goto :goto_7
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity$11;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->val$url:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/telegram/ui/PhotoPickerActivity$11;->downloadUrlContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "code":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoPickerActivity$11;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity$11;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .local v2, "addedCount":I
    if-eqz p1, :cond_6

    :try_start_0
    const-string/jumbo v10, "value"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .local v7, "result":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "added":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-ge v0, v10, :cond_4

    :try_start_1
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .local v6, "object":Lorg/json/JSONObject;
    const-string/jumbo v10, "contentUrl"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "id":Ljava/lang/String;
    iget-object v10, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v10}, Lorg/telegram/ui/PhotoPickerActivity;->access$100(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "object":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v5    # "id":Ljava/lang/String;
    .restart local v6    # "object":Lorg/json/JSONObject;
    :cond_0
    new-instance v3, Lorg/telegram/messenger/MediaController$SearchImage;

    invoke-direct {v3}, Lorg/telegram/messenger/MediaController$SearchImage;-><init>()V

    .local v3, "bingImage":Lorg/telegram/messenger/MediaController$SearchImage;
    iput-object v5, v3, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    const-string/jumbo v10, "width"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v3, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    const-string/jumbo v10, "height"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v3, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    const-string/jumbo v10, "contentSize"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v3, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    const-string/jumbo v10, "contentUrl"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string/jumbo v10, "thumbnailUrl"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    iget-object v10, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v10}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v10}, Lorg/telegram/ui/PhotoPickerActivity;->access$100(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x1

    goto :goto_1

    .end local v3    # "bingImage":Lorg/telegram/messenger/MediaController$SearchImage;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .end local v0    # "a":I
    .end local v1    # "added":Z
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "result":Lorg/json/JSONArray;
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v8, v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$502(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    :goto_3
    if-eqz v2, :cond_7

    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$2200(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9, v2}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->notifyItemRangeInserted(II)V

    :cond_1
    :goto_4
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$500(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$2600(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$200(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8

    :cond_3
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$900(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    :goto_5
    return-void

    .restart local v0    # "a":I
    .restart local v1    # "added":Z
    .restart local v7    # "result":Lorg/json/JSONArray;
    :cond_4
    :try_start_3
    iget-object v10, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    if-nez v1, :cond_5

    :goto_6
    invoke-static {v10, v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$302(Lorg/telegram/ui/PhotoPickerActivity;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :cond_5
    move v8, v9

    goto :goto_6

    .end local v0    # "a":I
    .end local v1    # "added":Z
    .end local v7    # "result":Lorg/json/JSONArray;
    :cond_6
    iget-object v10, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v10, v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$302(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v8, v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$502(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    goto :goto_3

    :cond_7
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$400(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$2200(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v9}, Lorg/telegram/ui/PhotoPickerActivity;->access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->notifyItemRemoved(I)V

    goto :goto_4

    :cond_8
    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v8}, Lorg/telegram/ui/PhotoPickerActivity;->access$900(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto :goto_5
.end method
