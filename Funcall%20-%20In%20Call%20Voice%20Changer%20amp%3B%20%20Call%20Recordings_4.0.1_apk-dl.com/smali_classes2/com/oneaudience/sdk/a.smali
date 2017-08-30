.class Lcom/oneaudience/sdk/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Lcom/oneaudience/sdk/a;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/oneaudience/sdk/b/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneaudience/sdk/b/a/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneaudience/sdk/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneaudience/sdk/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/oneaudience/sdk/a;->c:Lcom/oneaudience/sdk/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneaudience/sdk/a;->d:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneaudience/sdk/b/a/a;

    const-string v1, "registry"

    invoke-static {p1, v1}, Lcom/oneaudience/sdk/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/oneaudience/sdk/a$1;

    invoke-direct {v2, p0}, Lcom/oneaudience/sdk/a$1;-><init>(Lcom/oneaudience/sdk/a;)V

    invoke-direct {v0, v1, v2}, Lcom/oneaudience/sdk/b/a/a;-><init>(Ljava/io/File;Lcom/oneaudience/sdk/b/a/b;)V

    iput-object v0, p0, Lcom/oneaudience/sdk/a;->b:Lcom/oneaudience/sdk/b/a/a;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/oneaudience/sdk/a;
    .locals 2

    const-class v1, Lcom/oneaudience/sdk/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oneaudience/sdk/a;->c:Lcom/oneaudience/sdk/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneaudience/sdk/a;

    invoke-direct {v0, p0}, Lcom/oneaudience/sdk/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneaudience/sdk/a;->c:Lcom/oneaudience/sdk/a;

    :cond_0
    sget-object v0, Lcom/oneaudience/sdk/a;->c:Lcom/oneaudience/sdk/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneaudience/sdk/a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/Object;)Lcom/oneaudience/sdk/a;
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/oneaudience/sdk/a;->b:Lcom/oneaudience/sdk/b/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/oneaudience/sdk/b/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/oneaudience/sdk/a;->b:Lcom/oneaudience/sdk/b/a/a;

    invoke-virtual {v0, p1}, Lcom/oneaudience/sdk/b/a/a;->a(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method a()Z
    .locals 1

    iget-object v0, p0, Lcom/oneaudience/sdk/a;->b:Lcom/oneaudience/sdk/b/a/a;

    invoke-virtual {v0}, Lcom/oneaudience/sdk/b/a/a;->b()Z

    move-result v0

    return v0
.end method

.method a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneaudience/sdk/a;->b:Lcom/oneaudience/sdk/b/a/a;

    invoke-virtual {v0, p1}, Lcom/oneaudience/sdk/b/a/a;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneaudience/sdk/a;->b:Lcom/oneaudience/sdk/b/a/a;

    invoke-virtual {v0}, Lcom/oneaudience/sdk/b/a/a;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/oneaudience/sdk/a;->b:Lcom/oneaudience/sdk/b/a/a;

    invoke-virtual {v1, p1}, Lcom/oneaudience/sdk/b/a/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
