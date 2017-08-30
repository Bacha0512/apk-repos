.class public abstract Lcom/twilio/client/impl/net/HttpHelper;
.super Ljava/lang/Object;


# static fields
.field private static final CONN_TIMEOUT:I = 0x7530

.field private static final SO_TIMEOUT:I = 0xafc8

.field private static volatile defaultHttpClient:Lorg/apache/http/client/HttpClient;

.field private static volatile httpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 6

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v0, 0x7530

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const v0, 0xafc8

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    new-instance v4, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v4}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    const/16 v5, 0x50

    invoke-direct {v0, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    :try_start_0
    invoke-static {}, Lcom/twilio/client/impl/Constants;->getRegisterCommonNames()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v0, Lcom/twilio/client/impl/net/TwilioSSLSocketFactory;

    invoke-direct {v0, v3}, Lcom/twilio/client/impl/net/TwilioSSLSocketFactory;-><init>([Ljava/lang/String;)V

    :goto_0
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v0, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v2

    :cond_0
    :try_start_1
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getDefaultHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 2

    sget-object v0, Lcom/twilio/client/impl/net/HttpHelper;->defaultHttpClient:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_1

    const-class v1, Lcom/twilio/client/impl/net/HttpHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twilio/client/impl/net/HttpHelper;->defaultHttpClient:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    sput-object v0, Lcom/twilio/client/impl/net/HttpHelper;->defaultHttpClient:Lorg/apache/http/client/HttpClient;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/twilio/client/impl/net/HttpHelper;->defaultHttpClient:Lorg/apache/http/client/HttpClient;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 2

    sget-object v0, Lcom/twilio/client/impl/net/HttpHelper;->httpClient:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_1

    const-class v1, Lcom/twilio/client/impl/net/HttpHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twilio/client/impl/net/HttpHelper;->httpClient:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/twilio/client/impl/net/HttpHelper;->createHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/net/HttpHelper;->httpClient:Lorg/apache/http/client/HttpClient;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/twilio/client/impl/net/HttpHelper;->httpClient:Lorg/apache/http/client/HttpClient;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static shutdown()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/twilio/client/impl/net/HttpHelper;->httpClient:Lorg/apache/http/client/HttpClient;

    sput-object v0, Lcom/twilio/client/impl/net/HttpHelper;->defaultHttpClient:Lorg/apache/http/client/HttpClient;

    return-void
.end method
