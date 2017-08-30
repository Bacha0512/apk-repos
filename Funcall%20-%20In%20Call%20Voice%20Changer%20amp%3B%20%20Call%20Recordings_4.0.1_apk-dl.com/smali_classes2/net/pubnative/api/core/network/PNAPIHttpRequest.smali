.class public Lnet/pubnative/api/core/network/PNAPIHttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/api/core/network/PNAPIHttpRequest$Listener;
    }
.end annotation


# static fields
.field public static final HTTP_INVALID_REQUEST:I = 0x1a6

.field public static final HTTP_OK:I = 0xc8

.field private static final TAG:Ljava/lang/String;

.field protected static sConnectionTimeout:I


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field protected mListener:Lnet/pubnative/api/core/network/PNAPIHttpRequest$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lnet/pubnative/api/core/network/PNAPIHttpRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->TAG:Ljava/lang/String;

    .line 50
    const/16 v0, 0xfa0

    sput v0, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->sConnectionTimeout:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/api/core/network/PNAPIHttpRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->initiateRequest(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initiateRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/pubnative/api/core/network/PNAPIHttpRequest$2;

    invoke-direct {v1, p0, p1, p2}, Lnet/pubnative/api/core/network/PNAPIHttpRequest$2;-><init>(Lnet/pubnative/api/core/network/PNAPIHttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 139
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 140
    return-void
.end method

.method public static setConnectionTimeout(I)V
    .locals 0

    .prologue
    .line 88
    sput p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->sConnectionTimeout:I

    .line 89
    return-void
.end method


# virtual methods
.method protected doRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 145
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 147
    const-string v1, "User-Agent"

    invoke-virtual {v0, v1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 150
    sget v1, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->sConnectionTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 151
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 153
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 155
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 156
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->getString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p0, v0, v1}, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->invokeFinish(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {p0, v0}, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->invokeFail(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected getString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 166
    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 175
    :catch_0
    move-exception v2

    .line 179
    :goto_1
    if-eqz v1, :cond_3

    .line 181
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v0

    .line 186
    :goto_2
    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_0
    return-object v0

    .line 179
    :cond_1
    if-eqz v1, :cond_4

    .line 181
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v2

    .line 183
    goto :goto_2

    .line 182
    :catch_1
    move-exception v1

    move-object v1, v2

    .line 183
    goto :goto_2

    .line 182
    :catch_2
    move-exception v1

    move-object v1, v0

    .line 183
    goto :goto_2

    .line 179
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3
    if-eqz v1, :cond_2

    .line 181
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 183
    :cond_2
    :goto_4
    throw v0

    .line 182
    :catch_3
    move-exception v1

    goto :goto_4

    .line 179
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 175
    :catch_4
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v1, v2

    goto :goto_2
.end method

.method protected invokeFail(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/api/core/network/PNAPIHttpRequest$4;

    invoke-direct {v1, p0, p1}, Lnet/pubnative/api/core/network/PNAPIHttpRequest$4;-><init>(Lnet/pubnative/api/core/network/PNAPIHttpRequest;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    return-void
.end method

.method protected invokeFinish(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/api/core/network/PNAPIHttpRequest$3;

    invoke-direct {v1, p0, p1, p2}, Lnet/pubnative/api/core/network/PNAPIHttpRequest$3;-><init>(Lnet/pubnative/api/core/network/PNAPIHttpRequest;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method

.method public start(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/api/core/network/PNAPIHttpRequest$Listener;)V
    .locals 2

    .prologue
    .line 99
    iput-object p3, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->mListener:Lnet/pubnative/api/core/network/PNAPIHttpRequest$Listener;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->mHandler:Landroid/os/Handler;

    .line 101
    iget-object v0, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->mListener:Lnet/pubnative/api/core/network/PNAPIHttpRequest$Listener;

    if-nez v0, :cond_0

    .line 102
    sget-object v0, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->TAG:Ljava/lang/String;

    const-string v1, "Warning: null listener specified"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PNAPIHttpRequest - Error: null or empty url, dropping call"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->invokeFail(Ljava/lang/Exception;)V

    .line 125
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-static {p1}, Lnet/pubnative/sdk/core/utils/PNDeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/api/core/network/PNAPIHttpRequest$1;

    invoke-direct {v1, p0, p2}, Lnet/pubnative/api/core/network/PNAPIHttpRequest$1;-><init>(Lnet/pubnative/api/core/network/PNAPIHttpRequest;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 122
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "PNAPIHttpRequest - Error: internet connection not detected, dropping call"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->invokeFail(Ljava/lang/Exception;)V

    goto :goto_0
.end method
