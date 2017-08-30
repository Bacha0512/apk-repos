.class Lcom/weirdvoice/ui/rates/CountryAdapter$CurrenciesTask;
.super Landroid/os/AsyncTask;
.source "CountryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/rates/CountryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CurrenciesTask"
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
.field final synthetic this$0:Lcom/weirdvoice/ui/rates/CountryAdapter;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/rates/CountryAdapter;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/weirdvoice/ui/rates/CountryAdapter$CurrenciesTask;->this$0:Lcom/weirdvoice/ui/rates/CountryAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/rates/CountryAdapter$CurrenciesTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 58
    const/4 v2, 0x0

    .line 59
    .local v2, "in":Ljava/io/BufferedReader;
    iget-object v9, p0, Lcom/weirdvoice/ui/rates/CountryAdapter$CurrenciesTask;->this$0:Lcom/weirdvoice/ui/rates/CountryAdapter;

    const-string v10, "KO"

    invoke-static {v9, v10}, Lcom/weirdvoice/ui/rates/CountryAdapter;->access$0(Lcom/weirdvoice/ui/rates/CountryAdapter;Ljava/lang/String;)V

    .line 61
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getRemoteServ()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/getcurrencies.rb?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 63
    .local v8, "url":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 64
    .local v0, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 66
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    .line 67
    .local v7, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 69
    .local v6, "statusCode":I
    const/16 v9, 0xc8

    if-ne v6, v9, :cond_0

    .line 70
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, "result":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 73
    const-string v9, "OK:"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 74
    iget-object v9, p0, Lcom/weirdvoice/ui/rates/CountryAdapter$CurrenciesTask;->this$0:Lcom/weirdvoice/ui/rates/CountryAdapter;

    const/4 v10, 0x3

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/weirdvoice/ui/rates/CountryAdapter;->access$0(Lcom/weirdvoice/ui/rates/CountryAdapter;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 78
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v5    # "result":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 80
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 84
    .end local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v1    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "statusCode":I
    .end local v7    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v8    # "url":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/weirdvoice/ui/rates/CountryAdapter$CurrenciesTask;->this$0:Lcom/weirdvoice/ui/rates/CountryAdapter;

    # getter for: Lcom/weirdvoice/ui/rates/CountryAdapter;->currencies:Ljava/lang/String;
    invoke-static {v9}, Lcom/weirdvoice/ui/rates/CountryAdapter;->access$1(Lcom/weirdvoice/ui/rates/CountryAdapter;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 76
    :catch_0
    move-exception v9

    .line 78
    :goto_2
    if-eqz v2, :cond_1

    .line 80
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 81
    :catch_1
    move-exception v9

    goto :goto_1

    .line 77
    :catchall_0
    move-exception v9

    .line 78
    :goto_3
    if-eqz v2, :cond_2

    .line 80
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 83
    :cond_2
    :goto_4
    throw v9

    .line 81
    :catch_2
    move-exception v10

    goto :goto_4

    .restart local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v1    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    .restart local v6    # "statusCode":I
    .restart local v7    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v8    # "url":Ljava/lang/String;
    :catch_3
    move-exception v9

    goto :goto_1

    .line 77
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 76
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v9

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_3
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/rates/CountryAdapter$CurrenciesTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8
    .param p1, "currencies"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string v5, "KO"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 93
    :try_start_0
    const-string v5, "CountryAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "currencies: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v5, p0, Lcom/weirdvoice/ui/rates/CountryAdapter$CurrenciesTask;->this$0:Lcom/weirdvoice/ui/rates/CountryAdapter;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, v5, Lcom/weirdvoice/ui/rates/CountryAdapter;->mapIndex:Ljava/util/HashMap;

    .line 97
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_0
    iget-object v5, p0, Lcom/weirdvoice/ui/rates/CountryAdapter$CurrenciesTask;->this$0:Lcom/weirdvoice/ui/rates/CountryAdapter;

    iget-object v5, v5, Lcom/weirdvoice/ui/rates/CountryAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_1

    .line 106
    iget-object v5, p0, Lcom/weirdvoice/ui/rates/CountryAdapter$CurrenciesTask;->this$0:Lcom/weirdvoice/ui/rates/CountryAdapter;

    iget-object v5, v5, Lcom/weirdvoice/ui/rates/CountryAdapter;->mapIndex:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 109
    .local v1, "sectionLetters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 111
    .local v2, "sectionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 113
    iget-object v5, p0, Lcom/weirdvoice/ui/rates/CountryAdapter$CurrenciesTask;->this$0:Lcom/weirdvoice/ui/rates/CountryAdapter;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, v5, Lcom/weirdvoice/ui/rates/CountryAdapter;->sections:[Ljava/lang/String;

    .line 115
    iget-object v5, p0, Lcom/weirdvoice/ui/rates/CountryAdapter$CurrenciesTask;->this$0:Lcom/weirdvoice/ui/rates/CountryAdapter;

    iget-object v5, v5, Lcom/weirdvoice/ui/rates/CountryAdapter;->sections:[Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 118
    .end local v1    # "sectionLetters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "sectionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "x":I
    :cond_0
    :goto_1
    return-void

    .line 98
    .restart local v3    # "x":I
    :cond_1
    iget-object v5, p0, Lcom/weirdvoice/ui/rates/CountryAdapter$CurrenciesTask;->this$0:Lcom/weirdvoice/ui/rates/CountryAdapter;

    iget-object v5, v5, Lcom/weirdvoice/ui/rates/CountryAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/weirdvoice/ui/rates/ZeCountry;

    invoke-virtual {v5}, Lcom/weirdvoice/ui/rates/ZeCountry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "zectry":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "ch":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v5, p0, Lcom/weirdvoice/ui/rates/CountryAdapter$CurrenciesTask;->this$0:Lcom/weirdvoice/ui/rates/CountryAdapter;

    iget-object v5, v5, Lcom/weirdvoice/ui/rates/CountryAdapter;->mapIndex:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "ch":Ljava/lang/String;
    .end local v3    # "x":I
    .end local v4    # "zectry":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method
