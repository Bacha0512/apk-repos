.class Lcom/weirdvoice/ui/Myaccount$CurrTask;
.super Landroid/os/AsyncTask;
.source "Myaccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/Myaccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CurrTask"
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
.field final synthetic this$0:Lcom/weirdvoice/ui/Myaccount;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/Myaccount;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/weirdvoice/ui/Myaccount$CurrTask;->this$0:Lcom/weirdvoice/ui/Myaccount;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/Myaccount$CurrTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 495
    const/4 v2, 0x0

    .line 496
    .local v2, "in":Ljava/io/BufferedReader;
    iget-object v9, p0, Lcom/weirdvoice/ui/Myaccount$CurrTask;->this$0:Lcom/weirdvoice/ui/Myaccount;

    const-string v10, "KO"

    invoke-static {v9, v10}, Lcom/weirdvoice/ui/Myaccount;->access$14(Lcom/weirdvoice/ui/Myaccount;Ljava/lang/String;)V

    .line 498
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

    .line 500
    .local v8, "url":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 501
    .local v0, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 502
    .local v1, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 503
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    .line 504
    .local v7, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 506
    .local v6, "statusCode":I
    const/16 v9, 0xc8

    if-ne v6, v9, :cond_0

    .line 507
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

    .line 508
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 509
    .local v5, "result":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 510
    const-string v9, "OK:"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 511
    iget-object v9, p0, Lcom/weirdvoice/ui/Myaccount$CurrTask;->this$0:Lcom/weirdvoice/ui/Myaccount;

    const/4 v10, 0x3

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/weirdvoice/ui/Myaccount;->access$14(Lcom/weirdvoice/ui/Myaccount;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 515
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v5    # "result":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 517
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 521
    .end local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v1    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "statusCode":I
    .end local v7    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v8    # "url":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/weirdvoice/ui/Myaccount$CurrTask;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->currencies:Ljava/lang/String;
    invoke-static {v9}, Lcom/weirdvoice/ui/Myaccount;->access$15(Lcom/weirdvoice/ui/Myaccount;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 513
    :catch_0
    move-exception v9

    .line 515
    :goto_2
    if-eqz v2, :cond_1

    .line 517
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 518
    :catch_1
    move-exception v9

    goto :goto_1

    .line 514
    :catchall_0
    move-exception v9

    .line 515
    :goto_3
    if-eqz v2, :cond_2

    .line 517
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 520
    :cond_2
    :goto_4
    throw v9

    .line 518
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

    .line 514
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 513
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

    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/Myaccount$CurrTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8
    .param p1, "currencies"    # Ljava/lang/String;

    .prologue
    .line 527
    const-string v5, "KO"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 532
    :try_start_0
    iget-object v5, p0, Lcom/weirdvoice/ui/Myaccount$CurrTask;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->spinner:Landroid/widget/Spinner;
    invoke-static {v5}, Lcom/weirdvoice/ui/Myaccount;->access$16(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/Spinner;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 534
    .local v3, "selcurrency":Ljava/lang/String;
    iget-object v5, p0, Lcom/weirdvoice/ui/Myaccount$CurrTask;->this$0:Lcom/weirdvoice/ui/Myaccount;

    iget-object v6, p0, Lcom/weirdvoice/ui/Myaccount$CurrTask;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->thisContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/weirdvoice/ui/Myaccount;->access$5(Lcom/weirdvoice/ui/Myaccount;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/ui/Myaccount;->access$6(Lcom/weirdvoice/ui/Myaccount;Landroid/content/SharedPreferences;)V

    .line 535
    iget-object v5, p0, Lcom/weirdvoice/ui/Myaccount$CurrTask;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->spinner:Landroid/widget/Spinner;
    invoke-static {v5}, Lcom/weirdvoice/ui/Myaccount;->access$16(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/Spinner;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ArrayAdapter;

    .line 537
    .local v4, "zeAdap":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    iget-object v5, p0, Lcom/weirdvoice/ui/Myaccount$CurrTask;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->zprefs:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/weirdvoice/ui/Myaccount;->access$7(Lcom/weirdvoice/ui/Myaccount;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "zecurrency"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, "selcurr":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 539
    iget-object v5, p0, Lcom/weirdvoice/ui/Myaccount$CurrTask;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->spinner:Landroid/widget/Spinner;
    invoke-static {v5}, Lcom/weirdvoice/ui/Myaccount;->access$16(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/Spinner;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    .end local v2    # "selcurr":Ljava/lang/String;
    .end local v3    # "selcurrency":Ljava/lang/String;
    .end local v4    # "zeAdap":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/weirdvoice/ui/Myaccount$CurrTask;->this$0:Lcom/weirdvoice/ui/Myaccount;

    iget-object v6, p0, Lcom/weirdvoice/ui/Myaccount$CurrTask;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->thisContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/weirdvoice/ui/Myaccount;->access$5(Lcom/weirdvoice/ui/Myaccount;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/ui/Myaccount;->access$6(Lcom/weirdvoice/ui/Myaccount;Landroid/content/SharedPreferences;)V

    .line 552
    iget-object v5, p0, Lcom/weirdvoice/ui/Myaccount$CurrTask;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->zprefs:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/weirdvoice/ui/Myaccount;->access$7(Lcom/weirdvoice/ui/Myaccount;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "lastbal"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "lastBal":Ljava/lang/String;
    iget-object v5, p0, Lcom/weirdvoice/ui/Myaccount$CurrTask;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # invokes: Lcom/weirdvoice/ui/Myaccount;->formatBalance(Ljava/lang/String;)V
    invoke-static {v5, v1}, Lcom/weirdvoice/ui/Myaccount;->access$17(Lcom/weirdvoice/ui/Myaccount;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 563
    .end local v1    # "lastBal":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 541
    .restart local v2    # "selcurr":Ljava/lang/String;
    .restart local v3    # "selcurrency":Ljava/lang/String;
    .restart local v4    # "zeAdap":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_2
    :try_start_2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 542
    iget-object v5, p0, Lcom/weirdvoice/ui/Myaccount$CurrTask;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->spinner:Landroid/widget/Spinner;
    invoke-static {v5}, Lcom/weirdvoice/ui/Myaccount;->access$16(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/Spinner;

    move-result-object v5

    invoke-virtual {v4, v2}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 545
    .end local v2    # "selcurr":Ljava/lang/String;
    .end local v3    # "selcurrency":Ljava/lang/String;
    .end local v4    # "zeAdap":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v5, p0, Lcom/weirdvoice/ui/Myaccount$CurrTask;->this$0:Lcom/weirdvoice/ui/Myaccount;

    # getter for: Lcom/weirdvoice/ui/Myaccount;->spinner:Landroid/widget/Spinner;
    invoke-static {v5}, Lcom/weirdvoice/ui/Myaccount;->access$16(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/Spinner;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 547
    const-string v5, "MyAccount"

    const-string v6, "Can\'t set curr"

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :catch_1
    move-exception v5

    goto :goto_1

    .line 555
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 556
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "MyAccount"

    const-string v6, "Can\'t show balance"

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method
