.class public Lnet/pubnative/URLDriller;
.super Ljava/lang/Object;
.source "URLDriller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/URLDriller$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDrillSize:I

.field protected mHandler:Landroid/os/Handler;

.field protected mListener:Lnet/pubnative/URLDriller$Listener;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lnet/pubnative/URLDriller;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/URLDriller;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/pubnative/URLDriller;->mUserAgent:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lnet/pubnative/URLDriller;->mDrillSize:I

    return-void
.end method


# virtual methods
.method protected doDrill(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/pubnative/URLDriller;->doDrill(Ljava/lang/String;I)V

    .line 123
    return-void
.end method

.method protected doDrill(Ljava/lang/String;I)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "counter"    # I

    .prologue
    .line 134
    sget-object v8, Lnet/pubnative/URLDriller;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doDrill: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 137
    .local v7, "urlObj":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 138
    .local v0, "conn":Ljava/net/HttpURLConnection;
    iget-object v8, p0, Lnet/pubnative/URLDriller;->mUserAgent:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 139
    const-string v8, "User-Agent"

    iget-object v9, p0, Lnet/pubnative/URLDriller;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 142
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 143
    const/16 v8, 0x1388

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 144
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 145
    .local v5, "status":I
    sget-object v8, Lnet/pubnative/URLDriller;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " - Status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sparse-switch v5, :sswitch_data_0

    .line 174
    new-instance v6, Ljava/lang/Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Drilling error: Invalid URL, Status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 175
    .local v6, "statusException":Ljava/lang/Exception;
    sget-object v8, Lnet/pubnative/URLDriller;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0, p1, v6}, Lnet/pubnative/URLDriller;->invokeFail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 184
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "status":I
    .end local v6    # "statusException":Ljava/lang/Exception;
    .end local v7    # "urlObj":Ljava/net/URL;
    :goto_0
    return-void

    .line 148
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "status":I
    .restart local v7    # "urlObj":Ljava/net/URL;
    :sswitch_0
    sget-object v8, Lnet/pubnative/URLDriller;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " - Done: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0, p1}, Lnet/pubnative/URLDriller;->invokeFinish(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "status":I
    .end local v7    # "urlObj":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 181
    .local v1, "exception":Ljava/lang/Exception;
    sget-object v8, Lnet/pubnative/URLDriller;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Drilling error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0, p1, v1}, Lnet/pubnative/URLDriller;->invokeFail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 155
    .end local v1    # "exception":Ljava/lang/Exception;
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "status":I
    .restart local v7    # "urlObj":Ljava/net/URL;
    :sswitch_1
    :try_start_1
    const-string v8, "Location"

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "newUrl":Ljava/lang/String;
    sget-object v8, Lnet/pubnative/URLDriller;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " - Redirecting: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 158
    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "protocol":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "host":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .end local v2    # "host":Ljava/lang/String;
    .end local v4    # "protocol":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v3}, Lnet/pubnative/URLDriller;->invokeRedirect(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 164
    iget v8, p0, Lnet/pubnative/URLDriller;->mDrillSize:I

    if-nez v8, :cond_2

    .line 165
    invoke-virtual {p0, v3}, Lnet/pubnative/URLDriller;->doDrill(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 166
    :cond_2
    iget v8, p0, Lnet/pubnative/URLDriller;->mDrillSize:I

    if-lez v8, :cond_3

    iget v8, p0, Lnet/pubnative/URLDriller;->mDrillSize:I

    if-ge p2, v8, :cond_3

    .line 167
    add-int/lit8 v8, p2, 0x1

    invoke-virtual {p0, v3, v8}, Lnet/pubnative/URLDriller;->doDrill(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 169
    :cond_3
    invoke-virtual {p0, p1}, Lnet/pubnative/URLDriller;->invokeFinish(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12d -> :sswitch_1
        0x12e -> :sswitch_1
        0x12f -> :sswitch_1
    .end sparse-switch
.end method

.method public drill(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URLDrill error: url is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lnet/pubnative/URLDriller;->invokeFail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 109
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/pubnative/URLDriller;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/pubnative/URLDriller$1;

    invoke-direct {v1, p0, p1}, Lnet/pubnative/URLDriller$1;-><init>(Lnet/pubnative/URLDriller;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 107
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected invokeFail(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 239
    sget-object v0, Lnet/pubnative/URLDriller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lnet/pubnative/URLDriller;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/URLDriller$5;

    invoke-direct {v1, p0, p1, p2}, Lnet/pubnative/URLDriller$5;-><init>(Lnet/pubnative/URLDriller;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    return-void
.end method

.method protected invokeFinish(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 223
    sget-object v0, Lnet/pubnative/URLDriller;->TAG:Ljava/lang/String;

    const-string v1, "invokeFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lnet/pubnative/URLDriller;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/URLDriller$4;

    invoke-direct {v1, p0, p1}, Lnet/pubnative/URLDriller$4;-><init>(Lnet/pubnative/URLDriller;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    return-void
.end method

.method protected invokeRedirect(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 208
    sget-object v0, Lnet/pubnative/URLDriller;->TAG:Ljava/lang/String;

    const-string v1, "invokeRedirect"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lnet/pubnative/URLDriller;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/URLDriller$3;

    invoke-direct {v1, p0, p1}, Lnet/pubnative/URLDriller$3;-><init>(Lnet/pubnative/URLDriller;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    return-void
.end method

.method protected invokeStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 193
    sget-object v0, Lnet/pubnative/URLDriller;->TAG:Ljava/lang/String;

    const-string v1, "invokeStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lnet/pubnative/URLDriller;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/URLDriller$2;

    invoke-direct {v1, p0, p1}, Lnet/pubnative/URLDriller$2;-><init>(Lnet/pubnative/URLDriller;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method

.method public setDrillSize(I)V
    .locals 0
    .param p1, "drillSize"    # I

    .prologue
    .line 85
    iput p1, p0, Lnet/pubnative/URLDriller;->mDrillSize:I

    .line 86
    return-void
.end method

.method public setListener(Lnet/pubnative/URLDriller$Listener;)V
    .locals 0
    .param p1, "listener"    # Lnet/pubnative/URLDriller$Listener;

    .prologue
    .line 66
    iput-object p1, p0, Lnet/pubnative/URLDriller;->mListener:Lnet/pubnative/URLDriller$Listener;

    .line 67
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lnet/pubnative/URLDriller;->mUserAgent:Ljava/lang/String;

    .line 77
    return-void
.end method
