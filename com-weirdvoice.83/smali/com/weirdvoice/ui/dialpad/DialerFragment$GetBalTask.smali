.class Lcom/weirdvoice/ui/dialpad/DialerFragment$GetBalTask;
.super Landroid/os/AsyncTask;
.source "DialerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/dialpad/DialerFragment;
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
.field final synthetic this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/dialpad/DialerFragment;)V
    .locals 0

    .prologue
    .line 1499
    iput-object p1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$GetBalTask;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private displayBalance(Ljava/lang/String;)V
    .locals 5
    .param p1, "balance"    # Ljava/lang/String;

    .prologue
    .line 1568
    :try_start_0
    const-string v2, "??.??"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "noreg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1569
    :cond_0
    iget-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$GetBalTask;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    invoke-virtual {v2}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1570
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "lastbal"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1571
    .local v0, "lastBal":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 1573
    :try_start_1
    const-string v2, "DialerFragment"

    const-string v3, "last bal"

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1574
    move-object p1, v0

    .line 1579
    .end local v0    # "lastBal":Ljava/lang/String;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$GetBalTask;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    # getter for: Lcom/weirdvoice/ui/dialpad/DialerFragment;->wallet:Landroid/widget/Button;
    invoke-static {v2}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->access$3(Lcom/weirdvoice/ui/dialpad/DialerFragment;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "$"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n USD"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1583
    :goto_1
    return-void

    .line 1581
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1575
    .restart local v0    # "lastBal":Ljava/lang/String;
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/dialpad/DialerFragment$GetBalTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 1503
    const-string v2, "??.??"

    .line 1504
    .local v2, "balance":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1506
    .local v13, "version":I
    const/4 v5, 0x0

    .line 1509
    .local v5, "in":Ljava/io/BufferedReader;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment$GetBalTask;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    invoke-virtual {v14}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment$GetBalTask;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    invoke-virtual {v15}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x80

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 1510
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v13, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1511
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

    .line 1513
    .local v12, "url":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1514
    .local v3, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v12}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1515
    .local v4, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 1516
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    .line 1517
    .local v11, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 1519
    .local v10, "statusCode":I
    const/16 v14, 0xc8

    if-ne v10, v14, :cond_0

    .line 1520
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

    .line 1521
    .end local v5    # "in":Ljava/io/BufferedReader;
    .local v6, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 1523
    .local v9, "result":Ljava/lang/String;
    const-string v14, "OK:"

    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1524
    const-string v14, ":"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-static {v14}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 1525
    .local v1, "a":Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v14

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 1526
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

    .line 1536
    .end local v1    # "a":Ljava/lang/Float;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .end local v9    # "result":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :cond_0
    if-eqz v5, :cond_1

    .line 1538
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

    .line 1542
    :goto_1
    return-object v14

    .line 1528
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

    .line 1536
    :cond_3
    if-eqz v6, :cond_4

    .line 1538
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1529
    :cond_4
    :goto_2
    const-string v14, "noreg"

    move-object v5, v6

    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    goto :goto_1

    .line 1536
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    :cond_5
    if-eqz v6, :cond_6

    .line 1538
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1531
    :cond_6
    :goto_3
    const-string v14, "??.??"

    move-object v5, v6

    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    goto :goto_1

    .line 1534
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

    .line 1536
    :goto_4
    if-eqz v5, :cond_1

    .line 1538
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 1539
    :catch_1
    move-exception v14

    goto :goto_0

    .line 1535
    :catchall_0
    move-exception v14

    .line 1536
    :goto_5
    if-eqz v5, :cond_7

    .line 1538
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1541
    :cond_7
    :goto_6
    throw v14

    .line 1539
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

    .line 1535
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v14

    move-object v5, v6

    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    goto :goto_5

    .line 1534
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

    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/dialpad/DialerFragment$GetBalTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .param p1, "balance"    # Ljava/lang/String;

    .prologue
    .line 1549
    :try_start_0
    iget-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$GetBalTask;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    invoke-virtual {v2}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1550
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1551
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "noreg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1552
    const-string v2, "accregistered"

    const-string v3, "noreg"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1553
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1554
    iget-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$GetBalTask;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    invoke-virtual {v2}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c000f

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1562
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/dialpad/DialerFragment$GetBalTask;->displayBalance(Ljava/lang/String;)V

    .line 1564
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .line 1556
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    const-string v2, "??.??"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1557
    const-string v2, "lastbal"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1558
    const-string v2, "accregistered"

    const-string v3, "reg"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1559
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1563
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    goto :goto_1
.end method
