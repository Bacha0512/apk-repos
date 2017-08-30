.class public Lnet/pubnative/sdk/core/network/PNHttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/sdk/core/network/PNHttpRequest$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field protected mListener:Lnet/pubnative/sdk/core/network/PNHttpRequest$Listener;

.field protected mPOSTString:Ljava/lang/String;

.field protected mTimeoutInMillis:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lnet/pubnative/sdk/core/network/PNHttpRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/network/PNHttpRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/16 v0, 0xfa0

    iput v0, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest;->mTimeoutInMillis:I

    .line 55
    iput-object v1, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest;->mPOSTString:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest;->mListener:Lnet/pubnative/sdk/core/network/PNHttpRequest$Listener;

    .line 58
    iput-object v1, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected disableConnectionReuseIfNecessary()V
    .locals 2

    .prologue
    .line 136
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 137
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    :cond_0
    return-void
.end method

.method protected doRequest(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 142
    const/4 v1, 0x0

    .line 145
    iget-object v2, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest;->mPOSTString:Ljava/lang/String;

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/network/PNHttpRequest;->disableConnectionReuseIfNecessary()V

    .line 149
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 152
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 153
    iget v1, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest;->mTimeoutInMillis:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 154
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 169
    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 170
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 171
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 172
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 174
    :try_start_2
    invoke-virtual {p0, v1}, Lnet/pubnative/sdk/core/network/PNHttpRequest;->stringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/pubnative/sdk/core/network/PNHttpRequest;->invokeFinish(Ljava/lang/String;)V
    :try_end_2
    .catch Lnet/pubnative/sdk/core/exceptions/PNException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    :goto_1
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 197
    :cond_0
    :goto_2
    return-void

    .line 157
    :cond_1
    :try_start_3
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 158
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 159
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 160
    const-string v1, "Content-Length"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "Content-MD5"

    invoke-static {v2}, Lnet/pubnative/api/core/utils/PNAPICrypto;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 163
    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v3, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 166
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 189
    :goto_3
    :try_start_4
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Not enough memory for making request!"

    invoke-direct {v2, v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lnet/pubnative/sdk/core/network/PNHttpRequest;->invokeFail(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 193
    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 175
    :catch_1
    move-exception v1

    .line 176
    :try_start_5
    invoke-virtual {p0, v1}, Lnet/pubnative/sdk/core/network/PNHttpRequest;->invokeFail(Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 190
    :catch_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 191
    :goto_4
    :try_start_6
    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/network/PNHttpRequest;->invokeFail(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 193
    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 179
    :cond_2
    :try_start_7
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 180
    const-string v3, "statusCode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 182
    :try_start_8
    const-string v1, "errorString"

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/pubnative/sdk/core/network/PNHttpRequest;->stringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Lnet/pubnative/sdk/core/exceptions/PNException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 186
    :goto_5
    :try_start_9
    invoke-static {v2}, Lnet/pubnative/sdk/core/exceptions/PNException;->extraException(Ljava/util/Map;)Lnet/pubnative/sdk/core/exceptions/PNException;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/pubnative/sdk/core/network/PNHttpRequest;->invokeFail(Ljava/lang/Exception;)V
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 193
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_6
    if-eqz v1, :cond_3

    .line 194
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0

    .line 183
    :catch_3
    move-exception v1

    .line 184
    :try_start_a
    const-string v3, "parsingException"

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/exceptions/PNException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 193
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 190
    :catch_4
    move-exception v0

    goto :goto_4

    .line 188
    :catch_5
    move-exception v0

    goto :goto_3
.end method

.method protected invokeFail(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/sdk/core/network/PNHttpRequest$3;

    invoke-direct {v1, p0, p1}, Lnet/pubnative/sdk/core/network/PNHttpRequest$3;-><init>(Lnet/pubnative/sdk/core/network/PNHttpRequest;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    return-void
.end method

.method protected invokeFinish(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/sdk/core/network/PNHttpRequest$2;

    invoke-direct {v1, p0, p1}, Lnet/pubnative/sdk/core/network/PNHttpRequest$2;-><init>(Lnet/pubnative/sdk/core/network/PNHttpRequest;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    return-void
.end method

.method public setPOSTString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest;->mPOSTString:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest;->mTimeoutInMillis:I

    .line 94
    return-void
.end method

.method public start(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/sdk/core/network/PNHttpRequest$Listener;)V
    .locals 2

    .prologue
    .line 108
    iput-object p3, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest;->mListener:Lnet/pubnative/sdk/core/network/PNHttpRequest$Listener;

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest;->mHandler:Landroid/os/Handler;

    .line 110
    iget-object v0, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest;->mListener:Lnet/pubnative/sdk/core/network/PNHttpRequest$Listener;

    if-nez v0, :cond_0

    .line 111
    sget-object v0, Lnet/pubnative/sdk/core/network/PNHttpRequest;->TAG:Ljava/lang/String;

    const-string v1, "Warning: null listener specified, performing request without callbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    if-nez p1, :cond_1

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PNAPIHttpRequest - Error: null context provided, dropping call"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/network/PNHttpRequest;->invokeFail(Ljava/lang/Exception;)V

    .line 128
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PNAPIHttpRequest - Error: null or empty url, dropping call"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/network/PNHttpRequest;->invokeFail(Ljava/lang/Exception;)V

    goto :goto_0

    .line 117
    :cond_2
    invoke-static {p1}, Lnet/pubnative/sdk/core/utils/PNDeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/pubnative/sdk/core/network/PNHttpRequest$1;

    invoke-direct {v1, p0, p2}, Lnet/pubnative/sdk/core/network/PNHttpRequest$1;-><init>(Lnet/pubnative/sdk/core/network/PNHttpRequest;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 124
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 126
    :cond_3
    sget-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->REQUEST_NO_INTERNET:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/network/PNHttpRequest;->invokeFail(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected stringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 200
    const/4 v1, 0x0

    .line 201
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 204
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 205
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 206
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 212
    :goto_1
    sget-object v3, Lnet/pubnative/sdk/core/network/PNHttpRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stringFromInputStream - Error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 215
    if-nez v0, :cond_0

    .line 216
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    :cond_0
    const-string v2, "serverResponse"

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v0, "IOException"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {v3}, Lnet/pubnative/sdk/core/exceptions/PNException;->extraException(Ljava/util/Map;)Lnet/pubnative/sdk/core/exceptions/PNException;

    move-result-object v0

    throw v0

    .line 208
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 209
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 210
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 222
    return-object v1

    .line 211
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1
.end method
