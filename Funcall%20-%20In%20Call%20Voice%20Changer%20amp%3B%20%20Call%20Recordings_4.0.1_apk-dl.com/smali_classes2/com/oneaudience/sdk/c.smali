.class Lcom/oneaudience/sdk/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/oneaudience/sdk/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/oneaudience/sdk/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneaudience/sdk/c;->a:Ljava/lang/String;

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/oneaudience/sdk/a/b;->a()Lcom/oneaudience/sdk/a/b;

    move-result-object v0

    sput-object v0, Lcom/oneaudience/sdk/c;->b:Lcom/oneaudience/sdk/a/b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const v0, 0x186a3

    :goto_0
    return v0

    :sswitch_0
    const v0, 0x186a0

    goto :goto_0

    :sswitch_1
    const v0, 0x186a1

    goto :goto_0

    :sswitch_2
    const v0, 0x186a4

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xca -> :sswitch_0
        0x130 -> :sswitch_1
        0x198 -> :sswitch_2
        0x1f4 -> :sswitch_2
        0x1f7 -> :sswitch_2
    .end sparse-switch
.end method

.method private static a(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Lcom/oneaudience/sdk/b/a/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/oneaudience/sdk/b/a/d;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/oneaudience/sdk/c;->a(I)I

    move-result v3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "application/json"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {p3}, Lcom/oneaudience/sdk/b/b/e;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez p3, :cond_0

    sget-object v4, Lcom/oneaudience/sdk/c;->a:Ljava/lang/String;

    const-string v5, "Can\'t decrypt response body content "

    invoke-static {v4, v5}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, ""

    :cond_0
    sget-object v4, Lcom/oneaudience/sdk/c;->a:Ljava/lang/String;

    const-string v5, "GETTING <---- %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-static {v4, v5, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/oneaudience/sdk/b/a/d;

    if-eqz v0, :cond_1

    invoke-static {p3}, Lcom/oneaudience/sdk/b/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    :cond_1
    invoke-direct {v1, v3, p1, p3}, Lcom/oneaudience/sdk/b/a/d;-><init>(ILjava/util/Map;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/oneaudience/sdk/b/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, v3, p1, v1}, Lcom/oneaudience/sdk/b/a/d;-><init>(ILjava/util/Map;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static a(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method private static a(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/oneaudience/sdk/c;->a:Ljava/lang/String;

    const-string v1, "reading..."

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [C

    :goto_0
    array-length v2, v1

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/Reader;->read([CII)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    sget-object v1, Lcom/oneaudience/sdk/c;->a:Ljava/lang/String;

    const-string v2, "reading... DONE"

    invoke-static {v1, v2}, Lcom/oneaudience/sdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/oneaudience/sdk/b/b/c;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, ","

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private static a()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/oneaudience/sdk/c$1;

    invoke-direct {v2}, Lcom/oneaudience/sdk/c$1;-><init>()V

    aput-object v2, v0, v1

    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/oneaudience/sdk/c;->a:Ljava/lang/String;

    const-string v1, "writing..."

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    sget-object v0, Lcom/oneaudience/sdk/c;->a:Ljava/lang/String;

    const-string v1, "writing... DONE"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static b(Ljava/net/HttpURLConnection;)Ljava/io/Reader;
    .locals 5

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gzip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1
    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static b(Lcom/oneaudience/sdk/b/a/c;)Ljava/net/HttpURLConnection;
    .locals 3

    iget-object v0, p0, Lcom/oneaudience/sdk/b/a/c;->b:Ljava/lang/String;

    invoke-static {}, Lcom/oneaudience/sdk/c;->a()V

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/oneaudience/sdk/b/a/c;->c:Ljava/util/Map;

    invoke-static {v1}, Lcom/oneaudience/sdk/b/b/c;->b(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneaudience/sdk/b/a/c;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/c;->a(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    :cond_0
    const-string v1, "accept-encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1b58

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v1, 0xea60

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p0}, Lcom/oneaudience/sdk/b/a/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v1, "content-type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    return-object v0
.end method

.method private static c(Lcom/oneaudience/sdk/b/a/c;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/oneaudience/sdk/b/a/c;->d:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/oneaudience/sdk/b/a/c;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/oneaudience/sdk/c;->a:Ljava/lang/String;

    const-string v2, "POSTING ----> %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/oneaudience/sdk/b/a/c;->a:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneaudience/sdk/c;->b:Lcom/oneaudience/sdk/a/b;

    invoke-virtual {v1, v0}, Lcom/oneaudience/sdk/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/oneaudience/sdk/b/a/c;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Ljava/net/HttpURLConnection;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Lcom/oneaudience/sdk/b/a/c;)Lcom/oneaudience/sdk/b/a/d;
    .locals 9

    const v5, 0x186a3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/oneaudience/sdk/b/a/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneaudience/sdk/b/b/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneaudience/sdk/c;->a:Ljava/lang/String;

    const-string v2, "invalid request %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/oneaudience/sdk/b/d;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/oneaudience/sdk/b/a/d;

    invoke-direct {v0, v5, v1, v1}, Lcom/oneaudience/sdk/b/a/d;-><init>(ILjava/util/Map;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/oneaudience/sdk/c;->a:Ljava/lang/String;

    const-string v2, "Request ----> %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/oneaudience/sdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/oneaudience/sdk/c;->b(Lcom/oneaudience/sdk/b/a/c;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    invoke-virtual {p1}, Lcom/oneaudience/sdk/b/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/oneaudience/sdk/c;->c(Lcom/oneaudience/sdk/b/a/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/oneaudience/sdk/c;->a(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    :try_start_2
    sget-object v4, Lcom/oneaudience/sdk/c;->a:Ljava/lang/String;

    const-string v5, "Sending ----> %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2, v0}, Lcom/oneaudience/sdk/c;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-object v0, Lcom/oneaudience/sdk/c;->a:Ljava/lang/String;

    const-string v4, "Sending ----> DONE"

    invoke-static {v0, v4}, Lcom/oneaudience/sdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v0, 0xc8

    if-ne v4, v0, :cond_1

    invoke-static {v3}, Lcom/oneaudience/sdk/c;->b(Ljava/net/HttpURLConnection;)Ljava/io/Reader;

    move-result-object v1

    invoke-static {v1}, Lcom/oneaudience/sdk/c;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/oneaudience/sdk/c;->a:Ljava/lang/String;

    const-string v6, "Receiving <---- %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lcom/oneaudience/sdk/c;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p1, Lcom/oneaudience/sdk/b/a/c;->a:Z

    invoke-static {v4, v5, v6, v0, v7}, Lcom/oneaudience/sdk/c;->a(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Lcom/oneaudience/sdk/b/a/d;

    move-result-object v0

    sget-object v4, Lcom/oneaudience/sdk/c;->a:Ljava/lang/String;

    const-string v5, "Receiving <---- %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/oneaudience/sdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v3}, Lcom/oneaudience/sdk/c;->c(Ljava/net/HttpURLConnection;)V

    invoke-static {v2}, Lcom/oneaudience/sdk/b/g;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/oneaudience/sdk/b/g;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_1
    :try_start_3
    sget-object v0, Lcom/oneaudience/sdk/c;->a:Ljava/lang/String;

    const-string v5, "error status code: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v5, v6}, Lcom/oneaudience/sdk/b/d;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_3
    :try_start_4
    sget-object v4, Lcom/oneaudience/sdk/c;->a:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/oneaudience/sdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/oneaudience/sdk/b/a/d;

    const v4, 0x186a4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v0, v4, v5, v6}, Lcom/oneaudience/sdk/b/a/d;-><init>(ILjava/util/Map;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v3}, Lcom/oneaudience/sdk/c;->c(Ljava/net/HttpURLConnection;)V

    invoke-static {v2}, Lcom/oneaudience/sdk/b/g;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/oneaudience/sdk/b/g;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_4
    :try_start_5
    sget-object v4, Lcom/oneaudience/sdk/c;->a:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/oneaudience/sdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/oneaudience/sdk/b/a/d;

    const v4, 0x186a2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v0, v4, v5, v6}, Lcom/oneaudience/sdk/b/a/d;-><init>(ILjava/util/Map;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {v3}, Lcom/oneaudience/sdk/c;->c(Ljava/net/HttpURLConnection;)V

    invoke-static {v2}, Lcom/oneaudience/sdk/b/g;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/oneaudience/sdk/b/g;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_5
    :try_start_6
    sget-object v4, Lcom/oneaudience/sdk/c;->a:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/oneaudience/sdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/oneaudience/sdk/b/a/d;

    const v4, 0x186a3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v0, v4, v5, v6}, Lcom/oneaudience/sdk/b/a/d;-><init>(ILjava/util/Map;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {v3}, Lcom/oneaudience/sdk/c;->c(Ljava/net/HttpURLConnection;)V

    invoke-static {v2}, Lcom/oneaudience/sdk/b/g;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/oneaudience/sdk/b/g;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_6
    invoke-static {v3}, Lcom/oneaudience/sdk/c;->c(Ljava/net/HttpURLConnection;)V

    invoke-static {v2}, Lcom/oneaudience/sdk/b/g;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/oneaudience/sdk/b/g;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_3

    :cond_2
    move-object v2, v1

    goto/16 :goto_1
.end method
