.class Lb/a/g$a;
.super Lb/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lb/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/f",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lb/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/f",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lb/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/f",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lb/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/f",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lb/a/f;Lb/a/f;Lb/a/f;Lb/a/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lb/a/f",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lb/a/f",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lb/a/f",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lb/a/f",
            "<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lb/a/g;-><init>()V

    iput-object p1, p0, Lb/a/g$a;->a:Ljava/lang/Class;

    iput-object p2, p0, Lb/a/g$a;->b:Lb/a/f;

    iput-object p3, p0, Lb/a/g$a;->c:Lb/a/f;

    iput-object p4, p0, Lb/a/g$a;->d:Lb/a/f;

    iput-object p5, p0, Lb/a/g$a;->e:Lb/a/f;

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/X509TrustManager;)Lb/a/d/f;
    .locals 1

    invoke-static {p1}, Lb/a/d/a;->a(Ljavax/net/ssl/X509TrustManager;)Lb/a/d/f;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lb/a/g;->a(Ljavax/net/ssl/X509TrustManager;)Lb/a/d/f;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 3

    iget-object v0, p0, Lb/a/g$a;->a:Ljava/lang/Class;

    const-string v1, "sslParameters"

    invoke-static {p1, v0, v1}, Lb/a/g$a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "com.google.android.gms.org.conscrypt.SSLParametersImpl"

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sslParameters"

    invoke-static {p1, v0, v1}, Lb/a/g$a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    const-class v0, Ljavax/net/ssl/X509TrustManager;

    const-string v2, "x509TrustManager"

    invoke-static {v1, v0, v2}, Lb/a/g$a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-super {p0, p1}, Lb/a/g;->a(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-class v0, Ljavax/net/ssl/X509TrustManager;

    const-string v2, "trustManager"

    invoke-static {v1, v0, v2}, Lb/a/g$a;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lb/a/i;->a(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exception in connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lb/x;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lb/a/g$a;->b:Lb/a/f;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Lb/a/f;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lb/a/g$a;->c:Lb/a/f;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {v0, p1, v1}, Lb/a/f;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lb/a/g$a;->e:Lb/a/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/g$a;->e:Lb/a/f;

    invoke-virtual {v0, p1}, Lb/a/f;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p3}, Lb/a/g$a;->a(Ljava/util/List;)[B

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lb/a/g$a;->e:Lb/a/f;

    invoke-virtual {v1, p1, v0}, Lb/a/f;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lb/a/g$a;->d:Lb/a/f;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lb/a/g$a;->d:Lb/a/f;

    invoke-virtual {v0, p1}, Lb/a/f;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/g$a;->d:Lb/a/f;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lb/a/f;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lb/a/i;->c:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
