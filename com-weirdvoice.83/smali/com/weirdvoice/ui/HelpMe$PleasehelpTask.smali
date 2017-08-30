.class Lcom/weirdvoice/ui/HelpMe$PleasehelpTask;
.super Landroid/os/AsyncTask;
.source "HelpMe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/HelpMe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PleasehelpTask"
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
.field final synthetic this$0:Lcom/weirdvoice/ui/HelpMe;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/HelpMe;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/weirdvoice/ui/HelpMe$PleasehelpTask;->this$0:Lcom/weirdvoice/ui/HelpMe;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/HelpMe$PleasehelpTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 98
    const-string v4, ""

    .line 100
    .local v4, "rep":Ljava/lang/String;
    const/4 v2, 0x0

    .line 103
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getRemoteServ()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/pleaseh.rb?authkey="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getproductkey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&username="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/weirdvoice/ui/HelpMe$PleasehelpTask;->this$0:Lcom/weirdvoice/ui/HelpMe;

    # getter for: Lcom/weirdvoice/ui/HelpMe;->username:Ljava/lang/String;
    invoke-static {v11}, Lcom/weirdvoice/ui/HelpMe;->access$1(Lcom/weirdvoice/ui/HelpMe;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&pleaseh="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 105
    .local v9, "url":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 106
    .local v0, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 108
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    .line 109
    .local v8, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 111
    .local v7, "statusCode":I
    const/16 v10, 0xc8

    if-ne v7, v10, :cond_1

    .line 112
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, "result":Ljava/lang/String;
    const-string v10, "OK"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "Duplicate entry"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 116
    :cond_0
    iget-object v10, p0, Lcom/weirdvoice/ui/HelpMe$PleasehelpTask;->this$0:Lcom/weirdvoice/ui/HelpMe;

    # getter for: Lcom/weirdvoice/ui/HelpMe;->LOGTAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/weirdvoice/ui/HelpMe;->access$2(Lcom/weirdvoice/ui/HelpMe;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "reg OK"

    invoke-static {v10, v11}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v4, "OK"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 124
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v6    # "result":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 126
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 131
    .end local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v1    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "statusCode":I
    .end local v8    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v9    # "url":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v4

    .line 118
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v1    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    .restart local v6    # "result":Ljava/lang/String;
    .restart local v7    # "statusCode":I
    .restart local v8    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v9    # "url":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v10, "KO"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 119
    const-string v4, "KO"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v3

    .line 122
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_0

    .end local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v1    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "statusCode":I
    .end local v8    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v9    # "url":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 124
    :goto_2
    if-eqz v2, :cond_2

    .line 126
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 127
    :catch_1
    move-exception v10

    goto :goto_1

    .line 123
    :catchall_0
    move-exception v10

    .line 124
    :goto_3
    if-eqz v2, :cond_4

    .line 126
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 129
    :cond_4
    :goto_4
    throw v10

    .line 127
    :catch_2
    move-exception v11

    goto :goto_4

    .restart local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v1    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "statusCode":I
    .restart local v8    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v9    # "url":Ljava/lang/String;
    :catch_3
    move-exception v10

    goto :goto_1

    .line 123
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 122
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v10

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "result":Ljava/lang/String;
    :cond_5
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_0
.end method
