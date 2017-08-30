.class public Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;
.super Ljava/lang/Object;
.source "EncryptionInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v1, Lcom/rami_bar/fun_call/utiles/MCrypt;

    invoke-direct {v1}, Lcom/rami_bar/fun_call/utiles/MCrypt;-><init>()V

    .line 31
    .local v1, "mcrypt":Lcom/rami_bar/fun_call/utiles/MCrypt;
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/rami_bar/fun_call/utiles/MCrypt;->encrypt(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/rami_bar/fun_call/utiles/MCrypt;->bytesToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 35
    :goto_0
    return-object v2

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    const-string v2, ""

    goto :goto_0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 12
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v4

    .line 17
    .local v4, "request":Lokhttp3/Request;
    invoke-virtual {v4}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v3

    .line 18
    .local v3, "oldBody":Lokhttp3/RequestBody;
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 19
    .local v1, "buffer":Lokio/Buffer;
    invoke-virtual {v3, v1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 20
    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v6

    .line 21
    .local v6, "strOldBody":Ljava/lang/String;
    const-string v7, "text/plain; charset=utf-8"

    invoke-static {v7}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    .line 22
    .local v2, "mediaType":Lokhttp3/MediaType;
    invoke-static {v6}, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 23
    .local v5, "strNewBody":Ljava/lang/String;
    invoke-static {v2, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 24
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {v4}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v7

    const-string v8, "Content-Type"

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    const-string v8, "Content-Length"

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 25
    invoke-interface {p1, v4}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v7

    return-object v7
.end method
