.class Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/a/a/d/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$a;,
        Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;
    }
.end annotation


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/twitter/sdk/android/core/internal/scribe/e;

.field private final f:J

.field private final g:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private final h:Lcom/twitter/sdk/android/core/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/k",
            "<+",
            "Lcom/twitter/sdk/android/core/j",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/twitter/sdk/android/core/e;

.field private final j:Ljavax/net/ssl/SSLSocketFactory;

.field private final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/concurrent/ExecutorService;

.field private final m:La/a/a/a/a/b/m;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    const/16 v1, 0x5b

    aput-byte v1, v0, v2

    sput-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->a:[B

    new-array v0, v3, [B

    const/16 v1, 0x2c

    aput-byte v1, v0, v2

    sput-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->b:[B

    new-array v0, v3, [B

    const/16 v1, 0x5d

    aput-byte v1, v0, v2

    sput-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->c:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/internal/scribe/e;JLcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/k;Lcom/twitter/sdk/android/core/e;Ljavax/net/ssl/SSLSocketFactory;Ljava/util/concurrent/ExecutorService;La/a/a/a/a/b/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/core/internal/scribe/e;",
            "J",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Lcom/twitter/sdk/android/core/k",
            "<+",
            "Lcom/twitter/sdk/android/core/j",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;>;",
            "Lcom/twitter/sdk/android/core/e;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljava/util/concurrent/ExecutorService;",
            "La/a/a/a/a/b/m;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->e:Lcom/twitter/sdk/android/core/internal/scribe/e;

    iput-wide p3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->f:J

    iput-object p5, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->g:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iput-object p6, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->h:Lcom/twitter/sdk/android/core/k;

    iput-object p7, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->i:Lcom/twitter/sdk/android/core/e;

    iput-object p8, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->j:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p9, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->l:Ljava/util/concurrent/ExecutorService;

    iput-object p10, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->m:La/a/a/a/a/b/m;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->k:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private a(J)Lcom/twitter/sdk/android/core/j;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->h:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0, p1, p2}, Lcom/twitter/sdk/android/core/k;->c(J)Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/sdk/android/core/j;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/j;->d()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()[B
    .locals 1

    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->b:[B

    return-object v0
.end method

.method private c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->a()Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized a()Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->f:J

    invoke-direct {p0, v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->a(J)Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->a(Lcom/twitter/sdk/android/core/j;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lb/w$a;

    invoke-direct {v1}, Lb/w$a;-><init>()V

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->j:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, v2}, Lb/w$a;->a(Ljavax/net/ssl/SSLSocketFactory;)Lb/w$a;

    move-result-object v1

    new-instance v2, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$a;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->e:Lcom/twitter/sdk/android/core/internal/scribe/e;

    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->m:La/a/a/a/a/b/m;

    invoke-direct {v2, v3, v4}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$a;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/e;La/a/a/a/a/b/m;)V

    invoke-virtual {v1, v2}, Lb/w$a;->a(Lb/t;)Lb/w$a;

    move-result-object v1

    new-instance v2, Lcom/twitter/sdk/android/core/internal/a/d;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->g:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-direct {v2, v0, v3}, Lcom/twitter/sdk/android/core/internal/a/d;-><init>(Lcom/twitter/sdk/android/core/j;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V

    invoke-virtual {v1, v2}, Lb/w$a;->a(Lb/t;)Lb/w$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/w$a;->a()Lb/w;

    move-result-object v0

    :goto_0
    new-instance v1, Ld/m$a;

    invoke-direct {v1}, Ld/m$a;-><init>()V

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->e:Lcom/twitter/sdk/android/core/internal/scribe/e;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/internal/scribe/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ld/m$a;->a(Ljava/lang/String;)Ld/m$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Ld/m$a;->a(Lb/w;)Ld/m$a;

    move-result-object v0

    invoke-virtual {v0}, Ld/m$a;->a()Ld/m;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->k:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    const-class v3, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;

    invoke-virtual {v0, v3}, Ld/m;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Lb/w$a;

    invoke-direct {v0}, Lb/w$a;-><init>()V

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->j:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Lb/w$a;->a(Ljavax/net/ssl/SSLSocketFactory;)Lb/w$a;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$a;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->e:Lcom/twitter/sdk/android/core/internal/scribe/e;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->m:La/a/a/a/a/b/m;

    invoke-direct {v1, v2, v3}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$a;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/e;La/a/a/a/a/b/m;)V

    invoke-virtual {v0, v1}, Lb/w$a;->a(Lb/t;)Lb/w$a;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/internal/a/a;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->i:Lcom/twitter/sdk/android/core/e;

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/internal/a/a;-><init>(Lcom/twitter/sdk/android/core/e;)V

    invoke-virtual {v0, v1}, Lb/w$a;->a(Lb/t;)Lb/w$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/w$a;->a()Lb/w;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ljava/lang/String;)Ld/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ld/l",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->a()Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->e:Lcom/twitter/sdk/android/core/internal/scribe/e;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/internal/scribe/e;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->e:Lcom/twitter/sdk/android/core/internal/scribe/e;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/internal/scribe/e;->e:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;->uploadSequence(Ljava/lang/String;Ljava/lang/String;)Ld/b;

    move-result-object v0

    invoke-interface {v0}, Ld/b;->a()Ld/l;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->e:Lcom/twitter/sdk/android/core/internal/scribe/e;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/internal/scribe/e;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->e:Lcom/twitter/sdk/android/core/internal/scribe/e;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/internal/scribe/e;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ld/b;

    move-result-object v0

    invoke-interface {v0}, Ld/b;->a()Ld/l;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->d:Landroid/content/Context;

    invoke-static {v2, v1}, La/a/a/a/a/b/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->a(Ljava/lang/String;)Ld/l;

    move-result-object v1

    invoke-virtual {v1}, Ld/l;->a()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->d:Landroid/content/Context;

    const-string v3, "Failed sending files"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, La/a/a/a/a/b/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ld/l;->a()I

    move-result v2

    const/16 v3, 0x1f4

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ld/l;->a()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v2, 0x190

    if-eq v1, v2, :cond_0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->d:Landroid/content/Context;

    const-string v2, "Failed sending files"

    invoke-static {v1, v2, v0}, La/a/a/a/a/b/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->d:Landroid/content/Context;

    const-string v1, "Cannot attempt upload at this time"

    invoke-static {v0, v1}, La/a/a/a/a/b/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method b(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x400

    invoke-direct {v3, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v0, 0x1

    new-array v4, v0, [Z

    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->a:[B

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, La/a/a/a/a/b/o;

    invoke-direct {v1, v0}, La/a/a/a/a/b/o;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$1;

    invoke-direct {v0, p0, v4, v3}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$1;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;[ZLjava/io/ByteArrayOutputStream;)V

    invoke-virtual {v1, v0}, La/a/a/a/a/b/o;->a(La/a/a/a/a/b/o$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, La/a/a/a/a/b/i;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v1}, La/a/a/a/a/b/i;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->c:[B

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v0, "UTF-8"

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method
