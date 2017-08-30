.class public Lcom/twitter/sdk/android/core/internal/scribe/a;
.super Lcom/twitter/sdk/android/core/internal/scribe/d;


# static fields
.field private static volatile b:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final c:La/a/a/a/i;

.field private final d:Lcom/twitter/sdk/android/core/k;
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

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(La/a/a/a/i;Ljava/lang/String;Lcom/google/a/f;Lcom/twitter/sdk/android/core/k;Lcom/twitter/sdk/android/core/e;La/a/a/a/a/b/m;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/i;",
            "Ljava/lang/String;",
            "Lcom/google/a/f;",
            "Lcom/twitter/sdk/android/core/k",
            "<+",
            "Lcom/twitter/sdk/android/core/j",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;>;",
            "Lcom/twitter/sdk/android/core/e;",
            "La/a/a/a/a/b/m;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/twitter/sdk/android/core/internal/scribe/a;->d()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {}, La/a/a/a/a/g/q;->a()La/a/a/a/a/g/q;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/a/g/q;->b()La/a/a/a/a/g/t;

    move-result-object v0

    invoke-static {p2, p1}, Lcom/twitter/sdk/android/core/internal/scribe/a;->a(Ljava/lang/String;La/a/a/a/i;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/a;->a(La/a/a/a/a/g/t;Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/e;

    move-result-object v3

    new-instance v4, Lcom/twitter/sdk/android/core/internal/scribe/f$a;

    invoke-direct {v4, p3}, Lcom/twitter/sdk/android/core/internal/scribe/f$a;-><init>(Lcom/google/a/f;)V

    invoke-static {}, Lcom/twitter/sdk/android/core/o;->a()Lcom/twitter/sdk/android/core/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/o;->b()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v5

    invoke-static {}, Lcom/twitter/sdk/android/core/o;->a()Lcom/twitter/sdk/android/core/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/o;->c()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/twitter/sdk/android/core/internal/scribe/d;-><init>(La/a/a/a/i;Ljava/util/concurrent/ScheduledExecutorService;Lcom/twitter/sdk/android/core/internal/scribe/e;Lcom/twitter/sdk/android/core/internal/scribe/f$a;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/k;Lcom/twitter/sdk/android/core/e;Ljavax/net/ssl/SSLSocketFactory;La/a/a/a/a/b/m;)V

    iput-object p4, p0, Lcom/twitter/sdk/android/core/internal/scribe/a;->d:Lcom/twitter/sdk/android/core/k;

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/a;->c:La/a/a/a/i;

    invoke-virtual/range {p6 .. p6}, La/a/a/a/a/b/m;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(La/a/a/a/i;Ljava/lang/String;Lcom/twitter/sdk/android/core/k;Lcom/twitter/sdk/android/core/e;La/a/a/a/a/b/m;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/i;",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/k",
            "<+",
            "Lcom/twitter/sdk/android/core/j",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;>;",
            "Lcom/twitter/sdk/android/core/e;",
            "La/a/a/a/a/b/m;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/twitter/sdk/android/core/internal/scribe/a;->c()Lcom/google/a/f;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/scribe/a;-><init>(La/a/a/a/i;Ljava/lang/String;Lcom/google/a/f;Lcom/twitter/sdk/android/core/k;Lcom/twitter/sdk/android/core/e;La/a/a/a/a/b/m;)V

    return-void
.end method

.method static a(La/a/a/a/a/g/t;Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/e;
    .locals 9

    if-eqz p0, :cond_0

    iget-object v0, p0, La/a/a/a/a/g/t;->e:La/a/a/a/a/g/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/g/t;->e:La/a/a/a/a/g/b;

    iget v7, v0, La/a/a/a/a/g/b;->e:I

    iget-object v0, p0, La/a/a/a/a/g/t;->e:La/a/a/a/a/g/b;

    iget v8, v0, La/a/a/a/a/g/b;->b:I

    :goto_0
    const-string v0, "https://syndication.twitter.com"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/e;

    invoke-static {}, Lcom/twitter/sdk/android/core/internal/scribe/a;->e()Z

    move-result v1

    const-string v3, "i"

    const-string v4, "sdk"

    const-string v5, ""

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/twitter/sdk/android/core/internal/scribe/e;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0

    :cond_0
    const/16 v7, 0x64

    const/16 v8, 0x258

    goto :goto_0
.end method

.method static a(Ljava/lang/String;La/a/a/a/i;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fabric/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, La/a/a/a/i;->x()La/a/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/a/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, La/a/a/a/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/a;->c:La/a/a/a/i;

    invoke-virtual {v0}, La/a/a/a/i;->w()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/a;->c:La/a/a/a/i;

    invoke-virtual {v0}, La/a/a/a/i;->w()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static c()Lcom/google/a/f;
    .locals 2

    new-instance v0, Lcom/google/a/g;

    invoke-direct {v0}, Lcom/google/a/g;-><init>()V

    sget-object v1, Lcom/google/a/d;->d:Lcom/google/a/d;

    invoke-virtual {v0, v1}, Lcom/google/a/g;->a(Lcom/google/a/d;)Lcom/google/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/g;->a()Lcom/google/a/f;

    move-result-object v0

    return-object v0
.end method

.method private static d()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    const-class v1, Lcom/twitter/sdk/android/core/internal/scribe/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    const-string v0, "scribe"

    invoke-static {v0}, La/a/a/a/a/b/l;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/twitter/sdk/android/core/internal/scribe/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static e()Z
    .locals 2

    const-string v0, "release"

    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/twitter/sdk/android/core/j;)J
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/j;->e()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method a()Lcom/twitter/sdk/android/core/j;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/a;->d:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->c()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/sdk/android/core/internal/scribe/c;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/scribe/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lcom/twitter/sdk/android/core/internal/scribe/a;->e:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/scribe/g;->a(Lcom/twitter/sdk/android/core/internal/scribe/c;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/scribe/a;->a(Lcom/twitter/sdk/android/core/internal/scribe/f;)V

    return-void
.end method

.method public a(Lcom/twitter/sdk/android/core/internal/scribe/c;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/internal/scribe/c;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/scribe/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, ""

    iget-object v5, p0, Lcom/twitter/sdk/android/core/internal/scribe/a;->e:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/scribe/g;->a(Lcom/twitter/sdk/android/core/internal/scribe/c;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/scribe/a;->a(Lcom/twitter/sdk/android/core/internal/scribe/f;)V

    return-void
.end method

.method public a(Lcom/twitter/sdk/android/core/internal/scribe/f;)V
    .locals 2

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/a;->a()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/scribe/a;->a(Lcom/twitter/sdk/android/core/j;)J

    move-result-wide v0

    invoke-super {p0, p1, v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/d;->a(Lcom/twitter/sdk/android/core/internal/scribe/f;J)Z

    return-void
.end method

.method public varargs a([Lcom/twitter/sdk/android/core/internal/scribe/c;)V
    .locals 4

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/twitter/sdk/android/core/internal/scribe/a;->a(Lcom/twitter/sdk/android/core/internal/scribe/c;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
