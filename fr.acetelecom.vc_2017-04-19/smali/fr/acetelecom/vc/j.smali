.class public Lfr/acetelecom/vc/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Lfr/acetelecom/vc/j;

.field private static d:Landroid/content/Context;


# instance fields
.field private b:Lcom/android/volley/m;

.field private c:Lcom/android/volley/toolbox/h;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lfr/acetelecom/vc/j;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lfr/acetelecom/vc/j;->a()Lcom/android/volley/m;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/j;->b:Lcom/android/volley/m;

    new-instance v0, Lcom/android/volley/toolbox/h;

    iget-object v1, p0, Lfr/acetelecom/vc/j;->b:Lcom/android/volley/m;

    new-instance v2, Lfr/acetelecom/vc/j$1;

    invoke-direct {v2, p0}, Lfr/acetelecom/vc/j$1;-><init>(Lfr/acetelecom/vc/j;)V

    invoke-direct {v0, v1, v2}, Lcom/android/volley/toolbox/h;-><init>(Lcom/android/volley/m;Lcom/android/volley/toolbox/h$b;)V

    iput-object v0, p0, Lfr/acetelecom/vc/j;->c:Lcom/android/volley/toolbox/h;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lfr/acetelecom/vc/j;
    .locals 2

    const-class v1, Lfr/acetelecom/vc/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfr/acetelecom/vc/j;->a:Lfr/acetelecom/vc/j;

    if-nez v0, :cond_0

    new-instance v0, Lfr/acetelecom/vc/j;

    invoke-direct {v0, p0}, Lfr/acetelecom/vc/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lfr/acetelecom/vc/j;->a:Lfr/acetelecom/vc/j;

    :cond_0
    sget-object v0, Lfr/acetelecom/vc/j;->a:Lfr/acetelecom/vc/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lcom/android/volley/m;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/j;->b:Lcom/android/volley/m;

    if-nez v0, :cond_0

    sget-object v0, Lfr/acetelecom/vc/j;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/m;->a(Landroid/content/Context;)Lcom/android/volley/m;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/j;->b:Lcom/android/volley/m;

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/j;->b:Lcom/android/volley/m;

    return-object v0
.end method

.method public a(Lcom/android/volley/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/l",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lfr/acetelecom/vc/j;->a()Lcom/android/volley/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/volley/m;->a(Lcom/android/volley/l;)Lcom/android/volley/l;

    return-void
.end method
