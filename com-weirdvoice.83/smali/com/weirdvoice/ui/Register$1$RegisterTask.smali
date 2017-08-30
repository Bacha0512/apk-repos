.class Lcom/weirdvoice/ui/Register$1$RegisterTask;
.super Landroid/os/AsyncTask;
.source "Register.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/Register$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RegisterTask"
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
.field final synthetic this$1:Lcom/weirdvoice/ui/Register$1;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/Register$1;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/weirdvoice/ui/Register$1$RegisterTask;->this$1:Lcom/weirdvoice/ui/Register$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/Register$1$RegisterTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 120
    const-string v11, ""

    .line 121
    .local v11, "username":Ljava/lang/String;
    const-string v0, ""

    .line 123
    .local v0, "clid":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->isWeirdApp()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 124
    # getter for: Lcom/weirdvoice/ui/Register;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/weirdvoice/ui/Register;->access$0()Ljava/lang/String;

    move-result-object v12

    const-string v13, "noclid"

    invoke-static {v12, v13}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    const/4 v3, 0x0

    .line 135
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getRemoteServ()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/register.rb?authkey="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getproductkey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&username="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, p1, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&clid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 137
    .local v10, "url":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 138
    .local v1, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 139
    .local v2, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 140
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    .line 141
    .local v8, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 143
    .local v7, "statusCode":I
    const/16 v12, 0xc8

    if-ne v7, v12, :cond_1

    .line 144
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "regResult":Ljava/lang/String;
    const-string v12, "OK"

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "Duplicate entry"

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 148
    :cond_0
    # getter for: Lcom/weirdvoice/ui/Register;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/weirdvoice/ui/Register;->access$0()Ljava/lang/String;

    move-result-object v12

    const-string v13, "reg OK"

    invoke-static {v12, v13}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v12, 0x0

    aget-object v11, p1, v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v4

    .line 157
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v5    # "regResult":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 159
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 163
    .end local v1    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "statusCode":I
    .end local v8    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v10    # "url":Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v11

    .line 126
    .end local v3    # "in":Ljava/io/BufferedReader;
    :cond_3
    :try_start_4
    iget-object v12, p0, Lcom/weirdvoice/ui/Register$1$RegisterTask;->this$1:Lcom/weirdvoice/ui/Register$1;

    # getter for: Lcom/weirdvoice/ui/Register$1;->this$0:Lcom/weirdvoice/ui/Register;
    invoke-static {v12}, Lcom/weirdvoice/ui/Register$1;->access$0(Lcom/weirdvoice/ui/Register$1;)Lcom/weirdvoice/ui/Register;

    move-result-object v12

    const-string v13, "phone"

    invoke-virtual {v12, v13}, Lcom/weirdvoice/ui/Register;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 127
    .local v9, "tMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 128
    # getter for: Lcom/weirdvoice/ui/Register;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/weirdvoice/ui/Register;->access$0()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "clid: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 130
    .end local v9    # "tMgr":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v12

    goto/16 :goto_0

    .line 150
    .restart local v1    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "regResult":Ljava/lang/String;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "statusCode":I
    .restart local v8    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v10    # "url":Ljava/lang/String;
    :cond_4
    :try_start_5
    const-string v12, "KO"

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 151
    const-string v11, "KO"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v3, v4

    .line 155
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v1    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "regResult":Ljava/lang/String;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "statusCode":I
    .end local v8    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v10    # "url":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 157
    :goto_3
    if-eqz v3, :cond_2

    .line 159
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 160
    :catch_2
    move-exception v12

    goto :goto_2

    .line 156
    :catchall_0
    move-exception v12

    .line 157
    :goto_4
    if-eqz v3, :cond_5

    .line 159
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 162
    :cond_5
    :goto_5
    throw v12

    .line 160
    :catch_3
    move-exception v13

    goto :goto_5

    .restart local v1    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "statusCode":I
    .restart local v8    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v10    # "url":Ljava/lang/String;
    :catch_4
    move-exception v12

    goto :goto_2

    .line 156
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v12

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 155
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v12

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "regResult":Ljava/lang/String;
    :cond_6
    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/Register$1$RegisterTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 169
    iget-object v4, p0, Lcom/weirdvoice/ui/Register$1$RegisterTask;->this$1:Lcom/weirdvoice/ui/Register$1;

    # getter for: Lcom/weirdvoice/ui/Register$1;->this$0:Lcom/weirdvoice/ui/Register;
    invoke-static {v4}, Lcom/weirdvoice/ui/Register$1;->access$0(Lcom/weirdvoice/ui/Register$1;)Lcom/weirdvoice/ui/Register;

    move-result-object v4

    # getter for: Lcom/weirdvoice/ui/Register;->progDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/weirdvoice/ui/Register;->access$1(Lcom/weirdvoice/ui/Register;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 170
    const-string v4, "KO"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    iget-object v4, p0, Lcom/weirdvoice/ui/Register$1$RegisterTask;->this$1:Lcom/weirdvoice/ui/Register$1;

    # getter for: Lcom/weirdvoice/ui/Register$1;->this$0:Lcom/weirdvoice/ui/Register;
    invoke-static {v4}, Lcom/weirdvoice/ui/Register$1;->access$0(Lcom/weirdvoice/ui/Register$1;)Lcom/weirdvoice/ui/Register;

    move-result-object v4

    # getter for: Lcom/weirdvoice/ui/Register;->thiscontext:Landroid/content/Context;
    invoke-static {v4}, Lcom/weirdvoice/ui/Register;->access$2(Lcom/weirdvoice/ui/Register;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c000f

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 172
    iget-object v4, p0, Lcom/weirdvoice/ui/Register$1$RegisterTask;->this$1:Lcom/weirdvoice/ui/Register$1;

    # getter for: Lcom/weirdvoice/ui/Register$1;->this$0:Lcom/weirdvoice/ui/Register;
    invoke-static {v4}, Lcom/weirdvoice/ui/Register$1;->access$0(Lcom/weirdvoice/ui/Register$1;)Lcom/weirdvoice/ui/Register;

    move-result-object v4

    invoke-virtual {v4}, Lcom/weirdvoice/ui/Register;->finish()V

    .line 194
    :goto_0
    return-void

    .line 173
    :cond_0
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 175
    :try_start_0
    iget-object v4, p0, Lcom/weirdvoice/ui/Register$1$RegisterTask;->this$1:Lcom/weirdvoice/ui/Register$1;

    # getter for: Lcom/weirdvoice/ui/Register$1;->this$0:Lcom/weirdvoice/ui/Register;
    invoke-static {v4}, Lcom/weirdvoice/ui/Register$1;->access$0(Lcom/weirdvoice/ui/Register$1;)Lcom/weirdvoice/ui/Register;

    move-result-object v4

    # getter for: Lcom/weirdvoice/ui/Register;->thiscontext:Landroid/content/Context;
    invoke-static {v4}, Lcom/weirdvoice/ui/Register;->access$2(Lcom/weirdvoice/ui/Register;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 176
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 177
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "username"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    const-string v4, "deviceid"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    const-string v4, "isoctry"

    iget-object v5, p0, Lcom/weirdvoice/ui/Register$1$RegisterTask;->this$1:Lcom/weirdvoice/ui/Register$1;

    # getter for: Lcom/weirdvoice/ui/Register$1;->this$0:Lcom/weirdvoice/ui/Register;
    invoke-static {v5}, Lcom/weirdvoice/ui/Register$1;->access$0(Lcom/weirdvoice/ui/Register$1;)Lcom/weirdvoice/ui/Register;

    move-result-object v5

    # getter for: Lcom/weirdvoice/ui/Register;->regCtryIso:Ljava/lang/String;
    invoke-static {v5}, Lcom/weirdvoice/ui/Register;->access$3(Lcom/weirdvoice/ui/Register;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    const-string v4, "info_just_changed"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    new-instance v0, Lcom/weirdvoice/toolbox/Credentials;

    invoke-direct {v0}, Lcom/weirdvoice/toolbox/Credentials;-><init>()V

    .line 184
    .local v0, "cr":Lcom/weirdvoice/toolbox/Credentials;
    const-string v4, ""

    iget-object v5, p0, Lcom/weirdvoice/ui/Register$1$RegisterTask;->this$1:Lcom/weirdvoice/ui/Register$1;

    # getter for: Lcom/weirdvoice/ui/Register$1;->this$0:Lcom/weirdvoice/ui/Register;
    invoke-static {v5}, Lcom/weirdvoice/ui/Register$1;->access$0(Lcom/weirdvoice/ui/Register$1;)Lcom/weirdvoice/ui/Register;

    move-result-object v5

    # getter for: Lcom/weirdvoice/ui/Register;->thiscontext:Landroid/content/Context;
    invoke-static {v5}, Lcom/weirdvoice/ui/Register;->access$2(Lcom/weirdvoice/ui/Register;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, p1, v4, v5}, Lcom/weirdvoice/toolbox/Credentials;->saveCredentials(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 186
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/weirdvoice/ui/Register$1$RegisterTask;->this$1:Lcom/weirdvoice/ui/Register$1;

    # getter for: Lcom/weirdvoice/ui/Register$1;->this$0:Lcom/weirdvoice/ui/Register;
    invoke-static {v4}, Lcom/weirdvoice/ui/Register$1;->access$0(Lcom/weirdvoice/ui/Register$1;)Lcom/weirdvoice/ui/Register;

    move-result-object v4

    # getter for: Lcom/weirdvoice/ui/Register;->thiscontext:Landroid/content/Context;
    invoke-static {v4}, Lcom/weirdvoice/ui/Register;->access$2(Lcom/weirdvoice/ui/Register;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/weirdvoice/ui/SipHome;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    .local v2, "intent_gonext":Landroid/content/Intent;
    const/high16 v4, 0x4000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 188
    iget-object v4, p0, Lcom/weirdvoice/ui/Register$1$RegisterTask;->this$1:Lcom/weirdvoice/ui/Register$1;

    # getter for: Lcom/weirdvoice/ui/Register$1;->this$0:Lcom/weirdvoice/ui/Register;
    invoke-static {v4}, Lcom/weirdvoice/ui/Register$1;->access$0(Lcom/weirdvoice/ui/Register$1;)Lcom/weirdvoice/ui/Register;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/weirdvoice/ui/Register;->startActivity(Landroid/content/Intent;)V

    .line 189
    iget-object v4, p0, Lcom/weirdvoice/ui/Register$1$RegisterTask;->this$1:Lcom/weirdvoice/ui/Register$1;

    # getter for: Lcom/weirdvoice/ui/Register$1;->this$0:Lcom/weirdvoice/ui/Register;
    invoke-static {v4}, Lcom/weirdvoice/ui/Register$1;->access$0(Lcom/weirdvoice/ui/Register$1;)Lcom/weirdvoice/ui/Register;

    move-result-object v4

    invoke-virtual {v4}, Lcom/weirdvoice/ui/Register;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    .end local v0    # "cr":Lcom/weirdvoice/toolbox/Credentials;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "intent_gonext":Landroid/content/Intent;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 192
    :cond_1
    iget-object v4, p0, Lcom/weirdvoice/ui/Register$1$RegisterTask;->this$1:Lcom/weirdvoice/ui/Register$1;

    # getter for: Lcom/weirdvoice/ui/Register$1;->this$0:Lcom/weirdvoice/ui/Register;
    invoke-static {v4}, Lcom/weirdvoice/ui/Register$1;->access$0(Lcom/weirdvoice/ui/Register$1;)Lcom/weirdvoice/ui/Register;

    move-result-object v4

    # getter for: Lcom/weirdvoice/ui/Register;->thiscontext:Landroid/content/Context;
    invoke-static {v4}, Lcom/weirdvoice/ui/Register;->access$2(Lcom/weirdvoice/ui/Register;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c025e

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
