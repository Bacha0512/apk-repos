.class Lcom/weirdvoice/splash/Splash$1$GetBalTask;
.super Landroid/os/AsyncTask;
.source "Splash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/splash/Splash$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetBalTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/weirdvoice/splash/Splash$1;


# direct methods
.method constructor <init>(Lcom/weirdvoice/splash/Splash$1;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/weirdvoice/splash/Splash$1$GetBalTask;->this$1:Lcom/weirdvoice/splash/Splash$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/weirdvoice/splash/Splash$1$GetBalTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 203
    const-string v2, "??.??"

    .line 204
    .local v2, "balance":Ljava/lang/String;
    const/4 v13, 0x0

    .line 206
    .local v13, "version":I
    const/4 v5, 0x0

    .line 209
    .local v5, "in":Ljava/io/BufferedReader;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/splash/Splash$1$GetBalTask;->this$1:Lcom/weirdvoice/splash/Splash$1;

    # getter for: Lcom/weirdvoice/splash/Splash$1;->this$0:Lcom/weirdvoice/splash/Splash;
    invoke-static {v14}, Lcom/weirdvoice/splash/Splash$1;->access$0(Lcom/weirdvoice/splash/Splash$1;)Lcom/weirdvoice/splash/Splash;

    move-result-object v14

    # getter for: Lcom/weirdvoice/splash/Splash;->thiscontext:Landroid/content/Context;
    invoke-static {v14}, Lcom/weirdvoice/splash/Splash;->access$0(Lcom/weirdvoice/splash/Splash;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/splash/Splash$1$GetBalTask;->this$1:Lcom/weirdvoice/splash/Splash$1;

    # getter for: Lcom/weirdvoice/splash/Splash$1;->this$0:Lcom/weirdvoice/splash/Splash;
    invoke-static {v15}, Lcom/weirdvoice/splash/Splash$1;->access$0(Lcom/weirdvoice/splash/Splash$1;)Lcom/weirdvoice/splash/Splash;

    move-result-object v15

    # getter for: Lcom/weirdvoice/splash/Splash;->thiscontext:Landroid/content/Context;
    invoke-static {v15}, Lcom/weirdvoice/splash/Splash;->access$0(Lcom/weirdvoice/splash/Splash;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x80

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 210
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v13, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 211
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getRemoteServ()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "/getbalance.rb?authkey="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getproductkey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&username="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, p1, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&version="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 213
    .local v12, "url":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 214
    .local v3, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v12}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 215
    .local v4, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 216
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    .line 217
    .local v11, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 219
    .local v10, "statusCode":I
    const/16 v14, 0xc8

    if-ne v10, v14, :cond_0

    .line 220
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .end local v5    # "in":Ljava/io/BufferedReader;
    .local v6, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 223
    .local v9, "result":Ljava/lang/String;
    const-string v14, "OK:"

    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 224
    const-string v14, ":"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-static {v14}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 225
    .local v1, "a":Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v14

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 226
    const-string v14, "%05.2f"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v1, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    move-object v5, v6

    .line 236
    .end local v1    # "a":Ljava/lang/Float;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .end local v9    # "result":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :cond_0
    if-eqz v5, :cond_1

    .line 238
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .end local v3    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v4    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "statusCode":I
    .end local v11    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v12    # "url":Ljava/lang/String;
    :cond_1
    :goto_0
    move-object v14, v2

    .line 242
    :goto_1
    return-object v14

    .line 228
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v4    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    .restart local v9    # "result":Ljava/lang/String;
    .restart local v10    # "statusCode":I
    .restart local v11    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v12    # "url":Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v14, "KO:2:UNK USER"

    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "KO:1:UNK PRODUCT"

    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "ACCOUNT BLOCKED"

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v14

    if-eqz v14, :cond_5

    .line 236
    :cond_3
    if-eqz v6, :cond_4

    .line 238
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 229
    :cond_4
    :goto_2
    const-string v14, "noreg"

    move-object v5, v6

    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    goto :goto_1

    .line 236
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    :cond_5
    if-eqz v6, :cond_6

    .line 238
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 231
    :cond_6
    :goto_3
    const-string v14, "??.??"

    move-object v5, v6

    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    goto :goto_1

    .line 234
    .end local v3    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v4    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "result":Ljava/lang/String;
    .end local v10    # "statusCode":I
    .end local v11    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v12    # "url":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 236
    :goto_4
    if-eqz v5, :cond_1

    .line 238
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 239
    :catch_1
    move-exception v14

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v14

    .line 236
    :goto_5
    if-eqz v5, :cond_7

    .line 238
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 241
    :cond_7
    :goto_6
    throw v14

    .line 239
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v4    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    .restart local v9    # "result":Ljava/lang/String;
    .restart local v10    # "statusCode":I
    .restart local v11    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v12    # "url":Ljava/lang/String;
    :catch_2
    move-exception v14

    goto :goto_2

    :catch_3
    move-exception v14

    goto :goto_3

    .end local v3    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v4    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "result":Ljava/lang/String;
    .end local v10    # "statusCode":I
    .end local v11    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v12    # "url":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v15

    goto :goto_6

    .restart local v3    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v4    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "statusCode":I
    .restart local v11    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v12    # "url":Ljava/lang/String;
    :catch_5
    move-exception v14

    goto :goto_0

    .line 235
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v14

    move-object v5, v6

    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    goto :goto_5

    .line 234
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    :catch_6
    move-exception v14

    move-object v5, v6

    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/weirdvoice/splash/Splash$1$GetBalTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "balance"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v3, p0, Lcom/weirdvoice/splash/Splash$1$GetBalTask;->this$1:Lcom/weirdvoice/splash/Splash$1;

    # getter for: Lcom/weirdvoice/splash/Splash$1;->this$0:Lcom/weirdvoice/splash/Splash;
    invoke-static {v3}, Lcom/weirdvoice/splash/Splash$1;->access$0(Lcom/weirdvoice/splash/Splash$1;)Lcom/weirdvoice/splash/Splash;

    move-result-object v3

    # getter for: Lcom/weirdvoice/splash/Splash;->thiscontext:Landroid/content/Context;
    invoke-static {v3}, Lcom/weirdvoice/splash/Splash;->access$0(Lcom/weirdvoice/splash/Splash;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 249
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 250
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "noreg"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    const-string v3, "accregistered"

    const-string v4, "noreg"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 252
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 253
    iget-object v3, p0, Lcom/weirdvoice/splash/Splash$1$GetBalTask;->this$1:Lcom/weirdvoice/splash/Splash$1;

    # getter for: Lcom/weirdvoice/splash/Splash$1;->this$0:Lcom/weirdvoice/splash/Splash;
    invoke-static {v3}, Lcom/weirdvoice/splash/Splash$1;->access$0(Lcom/weirdvoice/splash/Splash$1;)Lcom/weirdvoice/splash/Splash;

    move-result-object v3

    # getter for: Lcom/weirdvoice/splash/Splash;->thiscontext:Landroid/content/Context;
    invoke-static {v3}, Lcom/weirdvoice/splash/Splash;->access$0(Lcom/weirdvoice/splash/Splash;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c000f

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 254
    iget-object v3, p0, Lcom/weirdvoice/splash/Splash$1$GetBalTask;->this$1:Lcom/weirdvoice/splash/Splash$1;

    # getter for: Lcom/weirdvoice/splash/Splash$1;->this$0:Lcom/weirdvoice/splash/Splash;
    invoke-static {v3}, Lcom/weirdvoice/splash/Splash$1;->access$0(Lcom/weirdvoice/splash/Splash$1;)Lcom/weirdvoice/splash/Splash;

    move-result-object v3

    invoke-virtual {v3}, Lcom/weirdvoice/splash/Splash;->finish()V

    .line 267
    :goto_0
    return-void

    .line 256
    :cond_0
    const-string v3, "??.??"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 257
    const-string v3, "lastbal"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 258
    const-string v3, "accregistered"

    const-string v4, "reg"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 259
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 262
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/weirdvoice/splash/Splash$1$GetBalTask;->this$1:Lcom/weirdvoice/splash/Splash$1;

    # getter for: Lcom/weirdvoice/splash/Splash$1;->this$0:Lcom/weirdvoice/splash/Splash;
    invoke-static {v3}, Lcom/weirdvoice/splash/Splash$1;->access$0(Lcom/weirdvoice/splash/Splash$1;)Lcom/weirdvoice/splash/Splash;

    move-result-object v3

    # getter for: Lcom/weirdvoice/splash/Splash;->thiscontext:Landroid/content/Context;
    invoke-static {v3}, Lcom/weirdvoice/splash/Splash;->access$0(Lcom/weirdvoice/splash/Splash;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/weirdvoice/ui/SipHome;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .local v1, "intent_gonext":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 264
    iget-object v3, p0, Lcom/weirdvoice/splash/Splash$1$GetBalTask;->this$1:Lcom/weirdvoice/splash/Splash$1;

    # getter for: Lcom/weirdvoice/splash/Splash$1;->this$0:Lcom/weirdvoice/splash/Splash;
    invoke-static {v3}, Lcom/weirdvoice/splash/Splash$1;->access$0(Lcom/weirdvoice/splash/Splash$1;)Lcom/weirdvoice/splash/Splash;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/weirdvoice/splash/Splash;->startActivity(Landroid/content/Intent;)V

    .line 265
    iget-object v3, p0, Lcom/weirdvoice/splash/Splash$1$GetBalTask;->this$1:Lcom/weirdvoice/splash/Splash$1;

    # getter for: Lcom/weirdvoice/splash/Splash$1;->this$0:Lcom/weirdvoice/splash/Splash;
    invoke-static {v3}, Lcom/weirdvoice/splash/Splash$1;->access$0(Lcom/weirdvoice/splash/Splash$1;)Lcom/weirdvoice/splash/Splash;

    move-result-object v3

    invoke-virtual {v3}, Lcom/weirdvoice/splash/Splash;->finish()V

    goto :goto_0
.end method
