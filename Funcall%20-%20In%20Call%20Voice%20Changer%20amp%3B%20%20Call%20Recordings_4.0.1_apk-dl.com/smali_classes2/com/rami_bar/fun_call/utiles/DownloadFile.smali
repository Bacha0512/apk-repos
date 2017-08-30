.class public Lcom/rami_bar/fun_call/utiles/DownloadFile;
.super Landroid/os/AsyncTask;
.source "DownloadFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rami_bar/fun_call/utiles/DownloadFile$DownloadFileInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mDownloadFileInterface:Lcom/rami_bar/fun_call/utiles/DownloadFile$DownloadFileInterface;

.field private mFile:Ljava/io/File;

.field private final mProgressDialog:Landroid/app/ProgressDialog;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/rami_bar/fun_call/utiles/DownloadFile$DownloadFileInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "downloadFileInterface"    # Lcom/rami_bar/fun_call/utiles/DownloadFile$DownloadFileInterface;

    .prologue
    const/4 v5, 0x1

    .line 26
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/rami_bar/fun_call/utiles/DownloadFile;->context:Landroid/content/Context;

    .line 28
    iput-object p3, p0, Lcom/rami_bar/fun_call/utiles/DownloadFile;->mDownloadFileInterface:Lcom/rami_bar/fun_call/utiles/DownloadFile$DownloadFileInterface;

    .line 30
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/rami_bar/fun_call/utiles/DownloadFile;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 31
    iget-object v3, p0, Lcom/rami_bar/fun_call/utiles/DownloadFile;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v4, "Downloading..."

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v3, p0, Lcom/rami_bar/fun_call/utiles/DownloadFile;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 33
    iget-object v3, p0, Lcom/rami_bar/fun_call/utiles/DownloadFile;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 34
    iget-object v3, p0, Lcom/rami_bar/fun_call/utiles/DownloadFile;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 36
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "device_root":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/rami_bar/fun_call/utiles/Constants;->APPLICATION_FOLDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v2, "my_dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 39
    .local v0, "created":Z
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".mp3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/rami_bar/fun_call/utiles/DownloadFile;->mFile:Ljava/io/File;

    .line 40
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rami_bar/fun_call/utiles/DownloadFile;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p1, "sUrl"    # [Ljava/lang/String;

    .prologue
    .line 44
    const/4 v7, 0x0

    .line 45
    .local v7, "input":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 46
    .local v8, "output":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 48
    .local v2, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v12, Ljava/net/URL;

    const/4 v13, 0x0

    aget-object v13, p1, v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 49
    .local v12, "url":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 50
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 54
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    const/16 v14, 0xc8

    if-eq v13, v14, :cond_3

    .line 55
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Server returned HTTP "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 56
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 86
    if-eqz v8, :cond_0

    .line 87
    :try_start_1
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 88
    :cond_0
    if-eqz v7, :cond_1

    .line 89
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 93
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 94
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 96
    .end local v12    # "url":Ljava/net/URL;
    :cond_2
    :goto_1
    return-object v13

    .line 61
    .restart local v12    # "url":Ljava/net/URL;
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    .line 64
    .local v6, "fileLength":I
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 65
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rami_bar/fun_call/utiles/DownloadFile;->mFile:Ljava/io/File;

    invoke-direct {v9, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .end local v8    # "output":Ljava/io/OutputStream;
    .local v9, "output":Ljava/io/OutputStream;
    const/16 v13, 0x1000

    :try_start_3
    new-array v4, v13, [B

    .line 68
    .local v4, "data":[B
    const-wide/16 v10, 0x0

    .line 70
    .local v10, "total":J
    :goto_2
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "count":I
    const/4 v13, -0x1

    if-eq v3, v13, :cond_b

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/rami_bar/fun_call/utiles/DownloadFile;->isCancelled()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 73
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    const/4 v13, 0x0

    .line 86
    if-eqz v9, :cond_4

    .line 87
    :try_start_4
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 88
    :cond_4
    if-eqz v7, :cond_5

    .line 89
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 93
    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    .line 94
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    move-object v8, v9

    .line 74
    .end local v9    # "output":Ljava/io/OutputStream;
    .restart local v8    # "output":Ljava/io/OutputStream;
    goto :goto_1

    .line 76
    .end local v8    # "output":Ljava/io/OutputStream;
    .restart local v9    # "output":Ljava/io/OutputStream;
    :cond_7
    int-to-long v14, v3

    add-long/2addr v10, v14

    .line 78
    if-lez v6, :cond_8

    .line 79
    const/4 v13, 0x1

    :try_start_5
    new-array v13, v13, [Ljava/lang/Integer;

    const/4 v14, 0x0

    const-wide/16 v16, 0x64

    mul-long v16, v16, v10

    int-to-long v0, v6

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v15, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/rami_bar/fun_call/utiles/DownloadFile;->publishProgress([Ljava/lang/Object;)V

    .line 80
    :cond_8
    const/4 v13, 0x0

    invoke-virtual {v9, v4, v13, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 82
    .end local v3    # "count":I
    .end local v4    # "data":[B
    .end local v10    # "total":J
    :catch_0
    move-exception v5

    move-object v8, v9

    .line 83
    .end local v6    # "fileLength":I
    .end local v9    # "output":Ljava/io/OutputStream;
    .end local v12    # "url":Ljava/net/URL;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v8    # "output":Ljava/io/OutputStream;
    :goto_4
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v13

    .line 86
    if-eqz v8, :cond_9

    .line 87
    :try_start_7
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 88
    :cond_9
    if-eqz v7, :cond_a

    .line 89
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 93
    :cond_a
    :goto_5
    if-eqz v2, :cond_2

    .line 94
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 86
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "output":Ljava/io/OutputStream;
    .restart local v3    # "count":I
    .restart local v4    # "data":[B
    .restart local v6    # "fileLength":I
    .restart local v9    # "output":Ljava/io/OutputStream;
    .restart local v10    # "total":J
    .restart local v12    # "url":Ljava/net/URL;
    :cond_b
    if-eqz v9, :cond_c

    .line 87
    :try_start_8
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 88
    :cond_c
    if-eqz v7, :cond_d

    .line 89
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 93
    :cond_d
    :goto_6
    if-eqz v2, :cond_e

    .line 94
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 96
    :cond_e
    const/4 v13, 0x0

    move-object v8, v9

    .end local v9    # "output":Ljava/io/OutputStream;
    .restart local v8    # "output":Ljava/io/OutputStream;
    goto/16 :goto_1

    .line 85
    .end local v3    # "count":I
    .end local v4    # "data":[B
    .end local v6    # "fileLength":I
    .end local v10    # "total":J
    .end local v12    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v13

    .line 86
    :goto_7
    if-eqz v8, :cond_f

    .line 87
    :try_start_9
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 88
    :cond_f
    if-eqz v7, :cond_10

    .line 89
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 93
    :cond_10
    :goto_8
    if-eqz v2, :cond_11

    .line 94
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    throw v13

    .line 90
    :catch_1
    move-exception v14

    goto :goto_8

    .line 85
    .end local v8    # "output":Ljava/io/OutputStream;
    .restart local v6    # "fileLength":I
    .restart local v9    # "output":Ljava/io/OutputStream;
    .restart local v12    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v13

    move-object v8, v9

    .end local v9    # "output":Ljava/io/OutputStream;
    .restart local v8    # "output":Ljava/io/OutputStream;
    goto :goto_7

    .line 90
    .end local v6    # "fileLength":I
    .end local v12    # "url":Ljava/net/URL;
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v14

    goto :goto_5

    .line 82
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    goto :goto_4

    .line 90
    .end local v8    # "output":Ljava/io/OutputStream;
    .restart local v3    # "count":I
    .restart local v4    # "data":[B
    .restart local v6    # "fileLength":I
    .restart local v9    # "output":Ljava/io/OutputStream;
    .restart local v10    # "total":J
    .restart local v12    # "url":Ljava/net/URL;
    :catch_4
    move-exception v13

    goto :goto_6

    :catch_5
    move-exception v14

    goto :goto_3

    .end local v3    # "count":I
    .end local v4    # "data":[B
    .end local v6    # "fileLength":I
    .end local v9    # "output":Ljava/io/OutputStream;
    .end local v10    # "total":J
    .restart local v8    # "output":Ljava/io/OutputStream;
    :catch_6
    move-exception v14

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rami_bar/fun_call/utiles/DownloadFile;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/DownloadFile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 123
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/DownloadFile;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 124
    if-eqz p1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/DownloadFile;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/DownloadFile;->context:Landroid/content/Context;

    const-string v1, "File downloaded"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 128
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/DownloadFile;->mDownloadFileInterface:Lcom/rami_bar/fun_call/utiles/DownloadFile$DownloadFileInterface;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/DownloadFile;->mDownloadFileInterface:Lcom/rami_bar/fun_call/utiles/DownloadFile$DownloadFileInterface;

    iget-object v1, p0, Lcom/rami_bar/fun_call/utiles/DownloadFile;->mFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/rami_bar/fun_call/utiles/DownloadFile$DownloadFileInterface;->onFileDownloaded(Ljava/io/File;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 101
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 104
    iget-object v1, p0, Lcom/rami_bar/fun_call/utiles/DownloadFile;->context:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 105
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/rami_bar/fun_call/utiles/DownloadFile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 107
    iget-object v1, p0, Lcom/rami_bar/fun_call/utiles/DownloadFile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 108
    iget-object v1, p0, Lcom/rami_bar/fun_call/utiles/DownloadFile;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 109
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/DownloadFile;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 116
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/DownloadFile;->mProgressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 117
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/DownloadFile;->mProgressDialog:Landroid/app/ProgressDialog;

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 118
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/rami_bar/fun_call/utiles/DownloadFile;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
