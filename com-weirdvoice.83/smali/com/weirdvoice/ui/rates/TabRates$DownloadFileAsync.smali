.class Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;
.super Landroid/os/AsyncTask;
.source "TabRates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/rates/TabRates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadFileAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/rates/TabRates;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/rates/TabRates;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;->this$0:Lcom/weirdvoice/ui/rates/TabRates;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p1, "aurl"    # [Ljava/lang/String;

    .prologue
    .line 132
    :try_start_0
    new-instance v9, Ljava/net/URL;

    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-direct {v9, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 133
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 134
    .local v2, "conexion":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 136
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7

    .line 137
    .local v7, "lenghtOfFile":I
    const-string v12, "ANDRO_ASYNC"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Lenght of file: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v9}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 140
    .local v6, "input":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 141
    .local v8, "output":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;->this$0:Lcom/weirdvoice/ui/rates/TabRates;

    const-string v13, "rates"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/weirdvoice/ui/rates/TabRates;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 143
    const/16 v12, 0x400

    new-array v4, v12, [B

    .line 145
    .local v4, "data":[B
    const-wide/16 v10, 0x0

    .line 147
    .local v10, "total":J
    :goto_0
    invoke-virtual {v6, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "count":I
    const/4 v12, -0x1

    if-ne v3, v12, :cond_0

    .line 153
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 154
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 155
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 159
    .end local v2    # "conexion":Ljava/net/URLConnection;
    .end local v3    # "count":I
    .end local v4    # "data":[B
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v7    # "lenghtOfFile":I
    .end local v8    # "output":Ljava/io/OutputStream;
    .end local v9    # "url":Ljava/net/URL;
    .end local v10    # "total":J
    :goto_1
    const/4 v12, 0x0

    return-object v12

    .line 148
    .restart local v2    # "conexion":Ljava/net/URLConnection;
    .restart local v3    # "count":I
    .restart local v4    # "data":[B
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v7    # "lenghtOfFile":I
    .restart local v8    # "output":Ljava/io/OutputStream;
    .restart local v9    # "url":Ljava/net/URL;
    .restart local v10    # "total":J
    :cond_0
    int-to-long v12, v3

    add-long/2addr v10, v12

    .line 149
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v16, 0x64

    mul-long v16, v16, v10

    int-to-long v0, v7

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;->publishProgress([Ljava/lang/Object;)V

    .line 150
    const/4 v12, 0x0

    invoke-virtual {v8, v4, v12, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    .end local v2    # "conexion":Ljava/net/URLConnection;
    .end local v3    # "count":I
    .end local v4    # "data":[B
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v7    # "lenghtOfFile":I
    .end local v8    # "output":Ljava/io/OutputStream;
    .end local v9    # "url":Ljava/net/URL;
    .end local v10    # "total":J
    :catch_0
    move-exception v5

    .line 157
    .local v5, "e":Ljava/lang/Exception;
    const-string v12, "Rates"

    const-string v13, "can\'t update rates"

    invoke-static {v12, v13}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 19
    .param p1, "unused"    # Ljava/lang/String;

    .prologue
    .line 170
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;->this$0:Lcom/weirdvoice/ui/rates/TabRates;

    invoke-virtual {v14}, Lcom/weirdvoice/ui/rates/TabRates;->getBaseContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 171
    .local v9, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 172
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 173
    .local v12, "when":J
    const-string v14, "lastrateupdate"

    invoke-interface {v5, v14, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;->this$0:Lcom/weirdvoice/ui/rates/TabRates;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/weirdvoice/ui/rates/TabRates;->dismissDialog(I)V

    .line 177
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 179
    .local v10, "ratesOK":Ljava/lang/Boolean;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;->this$0:Lcom/weirdvoice/ui/rates/TabRates;

    const-string v15, "rates"

    invoke-virtual {v14, v15}, Lcom/weirdvoice/ui/rates/TabRates;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v7

    .line 181
    .local v7, "instream":Ljava/io/InputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 182
    .local v6, "inputreader":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 184
    .local v2, "buffreader":Ljava/io/BufferedReader;
    const-string v11, ""

    .line 185
    .local v11, "tmp":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "line":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 192
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v2    # "buffreader":Ljava/io/BufferedReader;
    .end local v6    # "inputreader":Ljava/io/InputStreamReader;
    .end local v7    # "instream":Ljava/io/InputStream;
    .end local v8    # "line":Ljava/lang/String;
    .end local v11    # "tmp":Ljava/lang/String;
    :goto_1
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 200
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;->this$0:Lcom/weirdvoice/ui/rates/TabRates;

    new-instance v15, Lcom/weirdvoice/ui/rates/CountryAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;->this$0:Lcom/weirdvoice/ui/rates/TabRates;

    move-object/from16 v16, v0

    const v17, 0x7f03002d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;->this$0:Lcom/weirdvoice/ui/rates/TabRates;

    move-object/from16 v18, v0

    # getter for: Lcom/weirdvoice/ui/rates/TabRates;->countryArray:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/weirdvoice/ui/rates/TabRates;->access$6(Lcom/weirdvoice/ui/rates/TabRates;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-direct/range {v15 .. v18}, Lcom/weirdvoice/ui/rates/CountryAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-static {v14, v15}, Lcom/weirdvoice/ui/rates/TabRates;->access$7(Lcom/weirdvoice/ui/rates/TabRates;Lcom/weirdvoice/ui/rates/CountryAdapter;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;->this$0:Lcom/weirdvoice/ui/rates/TabRates;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;->this$0:Lcom/weirdvoice/ui/rates/TabRates;

    const v16, 0x7f0b0128

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/weirdvoice/ui/rates/TabRates;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ListView;

    invoke-static {v15, v14}, Lcom/weirdvoice/ui/rates/TabRates;->access$8(Lcom/weirdvoice/ui/rates/TabRates;Landroid/widget/ListView;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;->this$0:Lcom/weirdvoice/ui/rates/TabRates;

    # getter for: Lcom/weirdvoice/ui/rates/TabRates;->countryList:Landroid/widget/ListView;
    invoke-static {v14}, Lcom/weirdvoice/ui/rates/TabRates;->access$9(Lcom/weirdvoice/ui/rates/TabRates;)Landroid/widget/ListView;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;->this$0:Lcom/weirdvoice/ui/rates/TabRates;

    # getter for: Lcom/weirdvoice/ui/rates/TabRates;->countryAdapter:Lcom/weirdvoice/ui/rates/CountryAdapter;
    invoke-static {v15}, Lcom/weirdvoice/ui/rates/TabRates;->access$10(Lcom/weirdvoice/ui/rates/TabRates;)Lcom/weirdvoice/ui/rates/CountryAdapter;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    :cond_0
    return-void

    .line 186
    .restart local v2    # "buffreader":Ljava/io/BufferedReader;
    .restart local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v7    # "instream":Ljava/io/InputStream;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v11    # "tmp":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v14, "\\t"

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v3, v14, v15

    .line 187
    .local v3, "country":Ljava/lang/String;
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 188
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;->this$0:Lcom/weirdvoice/ui/rates/TabRates;

    # getter for: Lcom/weirdvoice/ui/rates/TabRates;->countryArray:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/weirdvoice/ui/rates/TabRates;->access$6(Lcom/weirdvoice/ui/rates/TabRates;)Ljava/util/ArrayList;

    move-result-object v14

    new-instance v15, Lcom/weirdvoice/ui/rates/ZeCountry;

    const-string v16, "\\t"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x3

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    invoke-direct {v15, v3, v0}, Lcom/weirdvoice/ui/rates/ZeCountry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    :cond_2
    move-object v11, v3

    goto/16 :goto_0

    .line 194
    .end local v2    # "buffreader":Ljava/io/BufferedReader;
    .end local v3    # "country":Ljava/lang/String;
    .end local v6    # "inputreader":Ljava/io/InputStreamReader;
    .end local v7    # "instream":Ljava/io/InputStream;
    .end local v8    # "line":Ljava/lang/String;
    .end local v11    # "tmp":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 195
    .local v4, "e":Ljava/lang/Exception;
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 196
    const-string v14, "Rates"

    const-string v15, "error reading rates: "

    invoke-static {v14, v15}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 124
    iget-object v0, p0, Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;->this$0:Lcom/weirdvoice/ui/rates/TabRates;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/rates/TabRates;->showDialog(I)V

    .line 125
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 3
    .param p1, "progress"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 164
    const-string v0, "ANDRO_ASYNC"

    aget-object v1, p1, v2

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;->this$0:Lcom/weirdvoice/ui/rates/TabRates;

    # getter for: Lcom/weirdvoice/ui/rates/TabRates;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/weirdvoice/ui/rates/TabRates;->access$5(Lcom/weirdvoice/ui/rates/TabRates;)Landroid/app/ProgressDialog;

    move-result-object v0

    aget-object v1, p1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 166
    return-void
.end method
