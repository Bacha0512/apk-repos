.class public final Lcom/tapjoy/internal/fm;
.super Ljava/lang/Object;


# static fields
.field private static final q:Lcom/tapjoy/internal/fm;

.field private static r:Lcom/tapjoy/internal/fm;

.field private static w:Landroid/os/Handler;

.field private static x:Ljava/io/File;


# instance fields
.field public final a:Lcom/tapjoy/internal/fu;

.field public b:Lcom/tapjoy/internal/fv;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Landroid/content/Context;

.field public f:Lcom/tapjoy/internal/fp;

.field public g:Lcom/tapjoy/internal/fl;

.field public h:Lcom/tapjoy/internal/fz;

.field public i:Lcom/tapjoy/internal/fk;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Z

.field public o:Ljava/lang/String;

.field public p:Lcom/tapjoy/internal/fn;

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/fm;

    invoke-direct {v0}, Lcom/tapjoy/internal/fm;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/fm;->q:Lcom/tapjoy/internal/fm;

    sput-object v0, Lcom/tapjoy/internal/fm;->r:Lcom/tapjoy/internal/fm;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/tapjoy/internal/fm;->c:Z

    iput-boolean v0, p0, Lcom/tapjoy/internal/fm;->s:Z

    iput-object v1, p0, Lcom/tapjoy/internal/fm;->d:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/tapjoy/internal/fm;->t:Z

    iput-boolean v0, p0, Lcom/tapjoy/internal/fm;->n:Z

    invoke-static {v1}, Lcom/tapjoy/internal/fn;->a(Lcom/tapjoy/internal/fb;)Lcom/tapjoy/internal/fn;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fm;->p:Lcom/tapjoy/internal/fn;

    new-instance v0, Lcom/tapjoy/internal/fu;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/fu;-><init>(Lcom/tapjoy/internal/fm;)V

    iput-object v0, p0, Lcom/tapjoy/internal/fm;->a:Lcom/tapjoy/internal/fu;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/fm;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/fm;->e:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lcom/tapjoy/internal/fm;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/fm;->r:Lcom/tapjoy/internal/fm;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/tapjoy/internal/fm;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/fm;->r:Lcom/tapjoy/internal/fm;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/fm;->b(Landroid/content/Context;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lcom/tapjoy/internal/f;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/tapjoy/internal/fm;->r:Lcom/tapjoy/internal/fm;

    invoke-virtual {v1, p0}, Lcom/tapjoy/internal/fm;->b(Landroid/content/Context;)V

    iget-object v2, v1, Lcom/tapjoy/internal/fm;->f:Lcom/tapjoy/internal/fp;

    invoke-virtual {v2}, Lcom/tapjoy/internal/fp;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fiverocks:force"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, v1, Lcom/tapjoy/internal/fm;->f:Lcom/tapjoy/internal/fp;

    monitor-enter v2

    :try_start_0
    iget-object v3, v2, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v3, v3, Lcom/tapjoy/internal/fw;->d:Lcom/tapjoy/internal/q;

    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/gd$z$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v1, v1, Lcom/tapjoy/internal/fm;->g:Lcom/tapjoy/internal/fl;

    sget-object v2, Lcom/tapjoy/internal/gd$i;->a:Lcom/tapjoy/internal/gd$i;

    const-string v3, "referrer"

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$i;Ljava/lang/String;)Lcom/tapjoy/internal/gd$c$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$c$a;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/opengl/GLSurfaceView;)V
    .locals 1

    const-string v0, "setGLSurfaceView: The given GLSurfaceView was null"

    invoke-static {p0, v0}, Lcom/tapjoy/internal/fj;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/tapjoy/internal/fe;->a(Landroid/opengl/GLSurfaceView;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 3

    const-class v1, Lcom/tapjoy/internal/fm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tapjoy/internal/fm;->w:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tapjoy/internal/fm;->w:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/tapjoy/internal/fm;->w:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized c(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const-class v1, Lcom/tapjoy/internal/fm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tapjoy/internal/fm;->x:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "fiverocks"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fm;->x:Ljava/io/File;

    :cond_0
    sget-object v0, Lcom/tapjoy/internal/fm;->x:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static d(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/tapjoy/internal/fm;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "install"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Z)Lcom/tapjoy/internal/gd$n;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fm;->f:Lcom/tapjoy/internal/fp;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fp;->a()V

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fm;->f:Lcom/tapjoy/internal/fp;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fp;->b()Lcom/tapjoy/internal/gd$n;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/tapjoy/internal/fm;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/fm;->b(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/tapjoy/internal/fm;->e:Landroid/content/Context;

    if-eqz v2, :cond_4

    move v2, v0

    :goto_1
    const-string v3, "The given context was null"

    invoke-static {v2, v3}, Lcom/tapjoy/internal/fj;->a(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_5

    const-string v2, "[0-9a-f]{24}"

    invoke-virtual {p5, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    :goto_2
    if-eqz v2, :cond_0

    if-eqz p6, :cond_6

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_6

    const-string v2, "[0-9A-Za-z\\-_]{20}"

    invoke-virtual {p6, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    :goto_3
    if-eqz v2, :cond_0

    iput-object p2, p0, Lcom/tapjoy/internal/fm;->l:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/internal/fm;->m:Ljava/lang/String;

    iput-object p5, p0, Lcom/tapjoy/internal/fm;->u:Ljava/lang/String;

    iput-object p6, p0, Lcom/tapjoy/internal/fm;->v:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v3, "TapjoySDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; Android "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/tapjoy/internal/ci;

    invoke-direct {v4, v3, v2}, Lcom/tapjoy/internal/ci;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    sput-object v4, Lcom/tapjoy/internal/ce;->b:Lcom/tapjoy/internal/ch;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    sput-object v2, Lcom/tapjoy/internal/ce;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/tapjoy/internal/fm;->i:Lcom/tapjoy/internal/fk;

    iput-object v4, v2, Lcom/tapjoy/internal/fk;->b:Lcom/tapjoy/internal/ch;

    invoke-virtual {v2}, Lcom/tapjoy/internal/fk;->a()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tapjoy/internal/fm;->k:Z

    new-instance v2, Lcom/tapjoy/internal/fq;

    iget-object v3, p0, Lcom/tapjoy/internal/fm;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/tapjoy/internal/fm;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/fq;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Lcom/tapjoy/internal/fq;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    :goto_4
    if-nez v0, :cond_2

    invoke-virtual {v2}, Lcom/tapjoy/internal/fq;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/fm;->g:Lcom/tapjoy/internal/fl;

    sget-object v1, Lcom/tapjoy/internal/gd$i;->a:Lcom/tapjoy/internal/gd$i;

    const-string v2, "install"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$i;Ljava/lang/String;)Lcom/tapjoy/internal/gd$c$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$c$a;)V

    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/fm;->f:Lcom/tapjoy/internal/fp;

    invoke-static {p5}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v1, v1, Lcom/tapjoy/internal/fw;->D:Lcom/tapjoy/internal/q;

    invoke-virtual {v1}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v1, v1, Lcom/tapjoy/internal/fw;->D:Lcom/tapjoy/internal/q;

    invoke-virtual {v1, p5}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fw;->a(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/fm;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v2, v1

    goto/16 :goto_1

    :cond_5
    :try_start_4
    const-string v2, "Invalid App ID: {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p5, v3, v4

    invoke-static {v2, v3}, Lcom/tapjoy/internal/fj;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    goto/16 :goto_2

    :cond_6
    const-string v2, "Invalid App Key: {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p6, v3, v4

    invoke-static {v2, v3}, Lcom/tapjoy/internal/fj;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    goto/16 :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    move v0, v1

    goto :goto_4
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/fm;->k:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fm;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/tapjoy/internal/fm;->o:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/fm;->o:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/fm;->f:Lcom/tapjoy/internal/fp;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fp;->b()Lcom/tapjoy/internal/gd$n;

    move-result-object v0

    const-string v1, "GCM registration id of device {} updated for sender {}: {}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/tapjoy/internal/gd$n;->c:Lcom/tapjoy/internal/gd$l;

    invoke-virtual {v4}, Lcom/tapjoy/internal/gd$l;->h()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tapjoy/internal/fm;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/tapjoy/internal/fj;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tapjoy/internal/gs;

    invoke-direct {v1, v0, p1}, Lcom/tapjoy/internal/gs;-><init>(Lcom/tapjoy/internal/gd$n;Ljava/lang/String;)V

    new-instance v0, Lcom/tapjoy/internal/fm$1;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/fm$1;-><init>(Lcom/tapjoy/internal/fm;Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/internal/ce;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v0, v2}, Lcom/tapjoy/internal/ce;->a(Lcom/tapjoy/internal/cj;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    if-eqz p1, :cond_1

    :try_start_1
    iput-object p1, p0, Lcom/tapjoy/internal/fm;->o:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/internal/fm;->g:Lcom/tapjoy/internal/fl;

    sget-object v1, Lcom/tapjoy/internal/gd$i;->b:Lcom/tapjoy/internal/gd$i;

    const-string v2, "impression"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$i;Ljava/lang/String;)Lcom/tapjoy/internal/gd$c$a;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gd$c$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gd$c$a;

    :cond_0
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$c$a;)V

    return-void
.end method

.method final a(Ljava/util/Map;J)V
    .locals 4

    iget-object v0, p0, Lcom/tapjoy/internal/fm;->g:Lcom/tapjoy/internal/fl;

    sget-object v1, Lcom/tapjoy/internal/gd$i;->b:Lcom/tapjoy/internal/gd$i;

    const-string v2, "view"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$i;Ljava/lang/String;)Lcom/tapjoy/internal/gd$c$a;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/tapjoy/internal/gd$c$a;->d(J)Lcom/tapjoy/internal/gd$c$a;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gd$c$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gd$c$a;

    :cond_0
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$c$a;)V

    return-void
.end method

.method final a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/tapjoy/internal/fm;->g:Lcom/tapjoy/internal/fl;

    sget-object v1, Lcom/tapjoy/internal/gd$i;->b:Lcom/tapjoy/internal/gd$i;

    const-string v2, "click"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$i;Ljava/lang/String;)Lcom/tapjoy/internal/gd$c$a;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const-string v3, "region"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gd$c$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gd$c$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$c$a;)V

    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 5

    const/16 v4, 0xc8

    const-string v0, "setUserTags"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/fm;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    if-lt v0, v4, :cond_1

    :cond_2
    move-object p1, v1

    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/fm;->f:Lcom/tapjoy/internal/fp;

    monitor-enter v1

    if-eqz p1, :cond_5

    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/tapjoy/internal/gd$x;->e()Lcom/tapjoy/internal/gd$x$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$x$a;->e()V

    iget-object v2, v0, Lcom/tapjoy/internal/gd$x$a;->b:Lcom/tapjoy/internal/ds;

    invoke-static {p1, v2}, Lcom/tapjoy/internal/dh$a;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$x$a;->d()Lcom/tapjoy/internal/gd$x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$x;->c()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$x;->a()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v2, v2, Lcom/tapjoy/internal/fw;->z:Lcom/tapjoy/internal/q;

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->y()Lcom/tapjoy/internal/gd$z$a;

    iget-object v0, v1, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/gd$z$a;->a(Ljava/lang/Iterable;)Lcom/tapjoy/internal/gd$z$a;

    :goto_1
    monitor-exit v1

    goto :goto_0

    :cond_5
    iget-object v0, v1, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->z:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->c()V

    iget-object v0, v1, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->y()Lcom/tapjoy/internal/gd$z$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/fm;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fm;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/fo;->b(Landroid/content/Context;)Lcom/tapjoy/internal/fo;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fm;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fo;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/fm;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fm;->e:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fm;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/fp;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fp;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/fm;->f:Lcom/tapjoy/internal/fp;

    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Lcom/tapjoy/internal/fm;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "events2"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/fm;->i:Lcom/tapjoy/internal/fk;

    if-nez v2, :cond_0

    new-instance v2, Lcom/tapjoy/internal/fk;

    invoke-direct {v2, v1}, Lcom/tapjoy/internal/fk;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/tapjoy/internal/fm;->i:Lcom/tapjoy/internal/fk;

    :cond_0
    new-instance v1, Lcom/tapjoy/internal/fl;

    iget-object v2, p0, Lcom/tapjoy/internal/fm;->f:Lcom/tapjoy/internal/fp;

    iget-object v3, p0, Lcom/tapjoy/internal/fm;->i:Lcom/tapjoy/internal/fk;

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/internal/fl;-><init>(Lcom/tapjoy/internal/fp;Lcom/tapjoy/internal/fk;)V

    iput-object v1, p0, Lcom/tapjoy/internal/fm;->g:Lcom/tapjoy/internal/fl;

    new-instance v1, Lcom/tapjoy/internal/fz;

    iget-object v2, p0, Lcom/tapjoy/internal/fm;->g:Lcom/tapjoy/internal/fl;

    invoke-direct {v1, v2}, Lcom/tapjoy/internal/fz;-><init>(Lcom/tapjoy/internal/fl;)V

    iput-object v1, p0, Lcom/tapjoy/internal/fm;->h:Lcom/tapjoy/internal/fz;

    new-instance v1, Lcom/tapjoy/internal/fv;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/fv;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tapjoy/internal/fm;->b:Lcom/tapjoy/internal/fv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/tapjoy/internal/fm;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fm;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fm;->e:Landroid/content/Context;

    if-nez v0, :cond_3

    :cond_1
    sget-boolean v0, Lcom/tapjoy/internal/fj;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Should be called after initializing the SDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/fj;->b(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()Ljava/util/Set;
    .locals 1

    const-string v0, "getUserTags"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/fm;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fm;->f:Lcom/tapjoy/internal/fp;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fp;->e()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/fm;->e:Landroid/content/Context;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/tapjoy/internal/fj;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Should be called after initializing the SDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/fj;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/fm;->h:Lcom/tapjoy/internal/fz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fm;->h:Lcom/tapjoy/internal/fz;

    iget-object v0, v0, Lcom/tapjoy/internal/fz;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 8

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tapjoy/internal/fm;->h:Lcom/tapjoy/internal/fz;

    iget-object v3, v2, Lcom/tapjoy/internal/fz;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/tapjoy/internal/fz;->c:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v4, v2, Lcom/tapjoy/internal/fz;->c:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object v3, v2, Lcom/tapjoy/internal/fz;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "New session started"

    invoke-static {v3}, Lcom/tapjoy/internal/fj;->a(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/tapjoy/internal/fz;->a:Lcom/tapjoy/internal/fl;

    iget-object v3, v2, Lcom/tapjoy/internal/fl;->a:Lcom/tapjoy/internal/fp;

    invoke-virtual {v3}, Lcom/tapjoy/internal/fp;->d()Lcom/tapjoy/internal/gd$p;

    move-result-object v3

    iget-object v4, v2, Lcom/tapjoy/internal/fl;->a:Lcom/tapjoy/internal/fp;

    monitor-enter v4

    :try_start_0
    iget-object v5, v4, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v5, v5, Lcom/tapjoy/internal/fw;->h:Lcom/tapjoy/internal/m;

    invoke-virtual {v5}, Lcom/tapjoy/internal/m;->b()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, v4, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v6, v6, Lcom/tapjoy/internal/fw;->h:Lcom/tapjoy/internal/m;

    invoke-virtual {v6, v5}, Lcom/tapjoy/internal/m;->a(I)V

    iget-object v6, v4, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v6, v5}, Lcom/tapjoy/internal/gd$z$a;->d(I)Lcom/tapjoy/internal/gd$z$a;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lcom/tapjoy/internal/gd$i;->a:Lcom/tapjoy/internal/gd$i;

    const-string v5, "bootup"

    invoke-virtual {v2, v4, v5}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$i;Ljava/lang/String;)Lcom/tapjoy/internal/gd$c$a;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/tapjoy/internal/fl;->c:J

    if-eqz v3, :cond_2

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iput-object v3, v4, Lcom/tapjoy/internal/gd$c$a;->l:Lcom/tapjoy/internal/gd$p;

    iget v3, v4, Lcom/tapjoy/internal/gd$c$a;->b:I

    const/high16 v5, 0x10000

    or-int/2addr v3, v5

    iput v3, v4, Lcom/tapjoy/internal/gd$c$a;->b:I

    :cond_2
    invoke-virtual {v2, v4}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$c$a;)V

    sget-object v2, Lcom/tapjoy/internal/eo;->c:Lcom/tapjoy/internal/eo$a;

    invoke-virtual {v2}, Lcom/tapjoy/internal/eo$a;->notifyObservers()V

    move v2, v0

    :goto_0
    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/tapjoy/internal/fm;->a:Lcom/tapjoy/internal/fu;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_2
    iput-object v2, v1, Lcom/tapjoy/internal/fu;->b:Ljava/util/Set;

    monitor-exit v1

    :goto_1
    return v0

    :cond_3
    move v2, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_4
    move v0, v1

    goto :goto_1
.end method
