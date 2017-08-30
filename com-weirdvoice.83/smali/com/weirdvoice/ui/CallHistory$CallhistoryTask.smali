.class Lcom/weirdvoice/ui/CallHistory$CallhistoryTask;
.super Landroid/os/AsyncTask;
.source "CallHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/CallHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallhistoryTask"
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
.field final synthetic this$0:Lcom/weirdvoice/ui/CallHistory;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/CallHistory;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/weirdvoice/ui/CallHistory$CallhistoryTask;->this$0:Lcom/weirdvoice/ui/CallHistory;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/CallHistory$CallhistoryTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 47
    iget-object v12, p0, Lcom/weirdvoice/ui/CallHistory$CallhistoryTask;->this$0:Lcom/weirdvoice/ui/CallHistory;

    iget-object v12, v12, Lcom/weirdvoice/ui/CallHistory;->context:Landroid/content/Context;

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 48
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v12, "username"

    const-string v13, ""

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 50
    .local v11, "username":Ljava/lang/String;
    const-string v2, ""

    .line 52
    .local v2, "hist":Ljava/lang/String;
    const/4 v4, 0x0

    .line 55
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getRemoteServ()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v13, "/getcallhistory.rb?authkey="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getproductkey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&username="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 55
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 58
    .local v10, "url":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 59
    .local v1, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 60
    .local v3, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 61
    .local v7, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    .line 62
    .local v9, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 64
    .local v8, "statusCode":I
    const/16 v12, 0xc8

    if-ne v8, v12, :cond_0

    .line 65
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v5, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "callResult":Ljava/lang/String;
    const-string v12, "OK"

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v12

    if-eqz v12, :cond_2

    .line 69
    move-object v2, v0

    move-object v4, v5

    .line 77
    .end local v0    # "callResult":Ljava/lang/String;
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 79
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 83
    .end local v1    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "statusCode":I
    .end local v9    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v10    # "url":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v2

    .line 70
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "callResult":Ljava/lang/String;
    .restart local v1    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v3    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    .restart local v8    # "statusCode":I
    .restart local v9    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v10    # "url":Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v12, "KO"

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 71
    const-string v2, "KO"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v4, v5

    .line 75
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_0

    .end local v0    # "callResult":Ljava/lang/String;
    .end local v1    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "statusCode":I
    .end local v9    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v10    # "url":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 77
    :goto_2
    if-eqz v4, :cond_1

    .line 79
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 80
    :catch_1
    move-exception v12

    goto :goto_1

    .line 76
    :catchall_0
    move-exception v12

    .line 77
    :goto_3
    if-eqz v4, :cond_3

    .line 79
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 82
    :cond_3
    :goto_4
    throw v12

    .line 80
    :catch_2
    move-exception v13

    goto :goto_4

    .restart local v1    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v3    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    .restart local v8    # "statusCode":I
    .restart local v9    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v10    # "url":Ljava/lang/String;
    :catch_3
    move-exception v12

    goto :goto_1

    .line 76
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v12

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 75
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v12

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "callResult":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :cond_4
    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/CallHistory$CallhistoryTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 26
    .param p1, "history"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v4, 0x0

    .line 91
    .local v4, "whe":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 92
    .local v3, "dst":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 93
    .local v5, "dur":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 94
    .local v6, "cos":[Ljava/lang/String;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v22, "list_whe":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v20, "list_dst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v21, "list_dur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v19, "list_cos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "KO"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/weirdvoice/ui/CallHistory$CallhistoryTask;->this$0:Lcom/weirdvoice/ui/CallHistory;

    iget-object v1, v1, Lcom/weirdvoice/ui/CallHistory;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v1, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v1, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v1, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :goto_0
    return-void

    .line 105
    :cond_0
    const-string v1, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 107
    :try_start_0
    const-string v1, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/weirdvoice/ui/CallHistory$CallhistoryTask;->this$0:Lcom/weirdvoice/ui/CallHistory;

    iget-object v1, v1, Lcom/weirdvoice/ui/CallHistory;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v1, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    const-string v1, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v1, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_1
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    .line 148
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 149
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v4, v1, [Ljava/lang/String;

    .line 150
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 151
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    .line 152
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 153
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v6, v1, [Ljava/lang/String;

    .line 154
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/CallHistory$CallhistoryTask;->this$0:Lcom/weirdvoice/ui/CallHistory;

    move-object/from16 v25, v0

    new-instance v1, Lcom/weirdvoice/ui/CallList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/weirdvoice/ui/CallHistory$CallhistoryTask;->this$0:Lcom/weirdvoice/ui/CallHistory;

    invoke-direct/range {v1 .. v6}, Lcom/weirdvoice/ui/CallList;-><init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, v25

    iput-object v1, v0, Lcom/weirdvoice/ui/CallHistory;->adapter:Lcom/weirdvoice/ui/CallList;

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/weirdvoice/ui/CallHistory$CallhistoryTask;->this$0:Lcom/weirdvoice/ui/CallHistory;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/weirdvoice/ui/CallHistory$CallhistoryTask;->this$0:Lcom/weirdvoice/ui/CallHistory;

    iget-object v2, v2, Lcom/weirdvoice/ui/CallHistory;->adapter:Lcom/weirdvoice/ui/CallList;

    invoke-virtual {v1, v2}, Lcom/weirdvoice/ui/CallHistory;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 159
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 115
    :cond_2
    new-instance v23, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    move-object/from16 v0, v23

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 116
    .local v23, "sdfm":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v25, "GMT"

    move-object/from16 v0, v25

    invoke-direct {v1, v2, v0}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    .line 117
    .local v8, "cal":Ljava/util/Calendar;
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 119
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 120
    .local v10, "calendar_cell":Ljava/util/Calendar;
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v24

    .line 121
    .local v24, "tz":Ljava/util/TimeZone;
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    .line 123
    .local v12, "cellTZ":Ljava/lang/String;
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, "allcalls":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 126
    .local v11, "calls":[Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    array-length v1, v11

    move/from16 v0, v17

    if-ge v0, v1, :cond_1

    .line 127
    aget-object v1, v11, v17

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 128
    .local v18, "items":[Ljava/lang/String;
    const/4 v1, 0x3

    aget-object v13, v18, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .local v13, "date":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v16

    .line 132
    .local v16, "gmtDate":Ljava/util/Date;
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd k:mm"

    invoke-direct {v15, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 133
    .local v15, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v12}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v9

    .line 134
    .local v9, "calendar":Ljava/util/Calendar;
    invoke-virtual {v15, v9}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 135
    const-string v1, "MM-dd k:mm"

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 140
    .end local v9    # "calendar":Ljava/util/Calendar;
    .end local v15    # "format":Ljava/text/SimpleDateFormat;
    .end local v16    # "gmtDate":Ljava/util/Date;
    :goto_2
    const/4 v1, 0x2

    :try_start_2
    aget-object v1, v18, v1

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    const/4 v1, 0x4

    aget-object v1, v18, v1

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const/4 v1, 0x5

    aget-object v1, v18, v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 136
    :catch_1
    move-exception v14

    .line 137
    .local v14, "e":Ljava/lang/Exception;
    const/4 v1, 0x3

    aget-object v1, v18, v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v13

    goto :goto_2

    .line 161
    .end local v7    # "allcalls":Ljava/lang/String;
    .end local v8    # "cal":Ljava/util/Calendar;
    .end local v10    # "calendar_cell":Ljava/util/Calendar;
    .end local v11    # "calls":[Ljava/lang/String;
    .end local v12    # "cellTZ":Ljava/lang/String;
    .end local v13    # "date":Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v17    # "i":I
    .end local v18    # "items":[Ljava/lang/String;
    .end local v23    # "sdfm":Ljava/text/SimpleDateFormat;
    .end local v24    # "tz":Ljava/util/TimeZone;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/weirdvoice/ui/CallHistory$CallhistoryTask;->this$0:Lcom/weirdvoice/ui/CallHistory;

    iget-object v1, v1, Lcom/weirdvoice/ui/CallHistory;->context:Landroid/content/Context;

    const v2, 0x7f0c025e

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
