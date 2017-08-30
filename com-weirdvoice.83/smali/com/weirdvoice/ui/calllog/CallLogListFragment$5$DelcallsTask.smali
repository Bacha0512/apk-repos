.class Lcom/weirdvoice/ui/calllog/CallLogListFragment$5$DelcallsTask;
.super Landroid/os/AsyncTask;
.source "CallLogListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/calllog/CallLogListFragment$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DelcallsTask"
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
.field final synthetic this$1:Lcom/weirdvoice/ui/calllog/CallLogListFragment$5;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/calllog/CallLogListFragment$5;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/weirdvoice/ui/calllog/CallLogListFragment$5$DelcallsTask;->this$1:Lcom/weirdvoice/ui/calllog/CallLogListFragment$5;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/calllog/CallLogListFragment$5$DelcallsTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 253
    const-string v6, ""

    .line 255
    .local v6, "rep":Ljava/lang/String;
    const/4 v3, 0x0

    .line 258
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_0
    iget-object v13, p0, Lcom/weirdvoice/ui/calllog/CallLogListFragment$5$DelcallsTask;->this$1:Lcom/weirdvoice/ui/calllog/CallLogListFragment$5;

    # getter for: Lcom/weirdvoice/ui/calllog/CallLogListFragment$5;->this$0:Lcom/weirdvoice/ui/calllog/CallLogListFragment;
    invoke-static {v13}, Lcom/weirdvoice/ui/calllog/CallLogListFragment$5;->access$0(Lcom/weirdvoice/ui/calllog/CallLogListFragment$5;)Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/weirdvoice/ui/calllog/CallLogListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 259
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v13, "username"

    const-string v14, ""

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 261
    .local v12, "username":Ljava/lang/String;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 262
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v13, "lastdialed"

    invoke-interface {v1, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 263
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 265
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getRemoteServ()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    const-string v14, "/delcalls.rb?authkey="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getproductkey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&username="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 265
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 268
    .local v11, "url":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 269
    .local v0, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 270
    .local v2, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 271
    .local v7, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    .line 272
    .local v10, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 274
    .local v9, "statusCode":I
    const/16 v13, 0xc8

    if-ne v9, v13, :cond_1

    .line 275
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 278
    .local v8, "result":Ljava/lang/String;
    const-string v13, "OK"

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "Duplicate entry"

    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 279
    :cond_0
    const-string v13, "CallLogFragment"

    const-string v14, "reg OK"

    invoke-static {v13, v14}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v6, "OK"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 287
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v8    # "result":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 289
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 294
    .end local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "statusCode":I
    .end local v10    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v11    # "url":Ljava/lang/String;
    .end local v12    # "username":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v6

    .line 281
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "prefs":Landroid/content/SharedPreferences;
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    .restart local v8    # "result":Ljava/lang/String;
    .restart local v9    # "statusCode":I
    .restart local v10    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v11    # "url":Ljava/lang/String;
    .restart local v12    # "username":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v13, "KO"

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 282
    const-string v6, "KO"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v3, v4

    .line 285
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_0

    .end local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "result":Ljava/lang/String;
    .end local v9    # "statusCode":I
    .end local v10    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v11    # "url":Ljava/lang/String;
    .end local v12    # "username":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 287
    :goto_2
    if-eqz v3, :cond_2

    .line 289
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 290
    :catch_1
    move-exception v13

    goto :goto_1

    .line 286
    :catchall_0
    move-exception v13

    .line 287
    :goto_3
    if-eqz v3, :cond_4

    .line 289
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 292
    :cond_4
    :goto_4
    throw v13

    .line 290
    :catch_2
    move-exception v14

    goto :goto_4

    .restart local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "prefs":Landroid/content/SharedPreferences;
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    .restart local v9    # "statusCode":I
    .restart local v10    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v11    # "url":Ljava/lang/String;
    .restart local v12    # "username":Ljava/lang/String;
    :catch_3
    move-exception v13

    goto :goto_1

    .line 286
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v13

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 285
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v13

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "result":Ljava/lang/String;
    :cond_5
    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_0
.end method
