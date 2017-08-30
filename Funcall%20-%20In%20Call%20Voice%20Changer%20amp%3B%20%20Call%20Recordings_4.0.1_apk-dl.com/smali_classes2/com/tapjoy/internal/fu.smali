.class public final Lcom/tapjoy/internal/fu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final q:Lcom/tapjoy/internal/fu;

.field private static r:Lcom/tapjoy/internal/fu;

.field private static w:Landroid/os/Handler;

.field private static x:Ljava/io/File;


# instance fields
.field public final a:Lcom/tapjoy/internal/gc;

.field public b:Lcom/tapjoy/internal/gd;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Landroid/content/Context;

.field public f:Lcom/tapjoy/internal/fx;

.field public g:Lcom/tapjoy/internal/ft;

.field public h:Lcom/tapjoy/internal/gh;

.field public i:Lcom/tapjoy/internal/fs;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Z

.field public o:Ljava/lang/String;

.field public p:Lcom/tapjoy/internal/fv;

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/tapjoy/internal/fu;

    invoke-direct {v0}, Lcom/tapjoy/internal/fu;-><init>()V

    .line 59
    sput-object v0, Lcom/tapjoy/internal/fu;->q:Lcom/tapjoy/internal/fu;

    sput-object v0, Lcom/tapjoy/internal/fu;->r:Lcom/tapjoy/internal/fu;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-boolean v0, p0, Lcom/tapjoy/internal/fu;->c:Z

    .line 96
    iput-boolean v0, p0, Lcom/tapjoy/internal/fu;->s:Z

    .line 101
    iput-object v1, p0, Lcom/tapjoy/internal/fu;->d:Ljava/lang/String;

    .line 102
    iput-boolean v0, p0, Lcom/tapjoy/internal/fu;->t:Z

    .line 117
    iput-boolean v0, p0, Lcom/tapjoy/internal/fu;->n:Z

    .line 903
    invoke-static {v1}, Lcom/tapjoy/internal/fv;->a(Lcom/tapjoy/internal/fj;)Lcom/tapjoy/internal/fv;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fu;->p:Lcom/tapjoy/internal/fv;

    .line 120
    new-instance v0, Lcom/tapjoy/internal/gc;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/gc;-><init>(Lcom/tapjoy/internal/fu;)V

    iput-object v0, p0, Lcom/tapjoy/internal/fu;->a:Lcom/tapjoy/internal/gc;

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/fu;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->e:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lcom/tapjoy/internal/fu;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/tapjoy/internal/fu;->r:Lcom/tapjoy/internal/fu;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/tapjoy/internal/fu;
    .locals 1

    .prologue
    .line 18062
    sget-object v0, Lcom/tapjoy/internal/fu;->r:Lcom/tapjoy/internal/fu;

    .line 67
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/fu;->b(Landroid/content/Context;)V

    .line 68
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 937
    invoke-static {p1}, Lcom/tapjoy/internal/f;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 938
    if-eqz v0, :cond_1

    .line 34062
    sget-object v1, Lcom/tapjoy/internal/fu;->r:Lcom/tapjoy/internal/fu;

    .line 940
    invoke-virtual {v1, p0}, Lcom/tapjoy/internal/fu;->b(Landroid/content/Context;)V

    .line 941
    iget-object v2, v1, Lcom/tapjoy/internal/fu;->f:Lcom/tapjoy/internal/fx;

    invoke-virtual {v2}, Lcom/tapjoy/internal/fx;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fiverocks:force"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 943
    :cond_0
    iget-object v2, v1, Lcom/tapjoy/internal/fu;->f:Lcom/tapjoy/internal/fx;

    .line 34406
    monitor-enter v2

    .line 34407
    :try_start_0
    iget-object v3, v2, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    iget-object v3, v3, Lcom/tapjoy/internal/ge;->d:Lcom/tapjoy/internal/q;

    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 34408
    iget-object v3, v2, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/gl$z$a;

    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/gl$z$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$z$a;

    .line 34409
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 945
    iget-object v1, v1, Lcom/tapjoy/internal/fu;->g:Lcom/tapjoy/internal/ft;

    .line 35082
    sget-object v2, Lcom/tapjoy/internal/gl$i;->a:Lcom/tapjoy/internal/gl$i;

    const-string v3, "referrer"

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v2

    .line 35083
    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/gl$c$a;)V

    .line 949
    :cond_1
    return-object v0

    .line 34409
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

    .prologue
    .line 336
    const-string v0, "setGLSurfaceView: The given GLSurfaceView was null"

    invoke-static {p0, v0}, Lcom/tapjoy/internal/fr;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-static {p0}, Lcom/tapjoy/internal/fm;->a(Landroid/opengl/GLSurfaceView;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 916
    const-class v1, Lcom/tapjoy/internal/fu;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tapjoy/internal/fu;->w:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 917
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tapjoy/internal/fu;->w:Landroid/os/Handler;

    .line 919
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/fu;->w:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    monitor-exit v1

    return-void

    .line 916
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized c(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 926
    const-class v1, Lcom/tapjoy/internal/fu;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tapjoy/internal/fu;->x:Ljava/io/File;

    if-nez v0, :cond_0

    .line 927
    const-string v0, "fiverocks"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fu;->x:Ljava/io/File;

    .line 929
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/fu;->x:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 926
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static d(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 933
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/tapjoy/internal/fu;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "install"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Z)Lcom/tapjoy/internal/gl$n;
    .locals 1

    .prologue
    .line 199
    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->f:Lcom/tapjoy/internal/fx;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fx;->a()V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->f:Lcom/tapjoy/internal/fx;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fx;->b()Lcom/tapjoy/internal/gl$n;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 433
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/tapjoy/internal/fu;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 492
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 446
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/fu;->b(Landroid/content/Context;)V

    .line 448
    iget-object v2, p0, Lcom/tapjoy/internal/fu;->e:Landroid/content/Context;

    if-eqz v2, :cond_4

    move v2, v0

    :goto_1
    const-string v3, "The given context was null"

    invoke-static {v2, v3}, Lcom/tapjoy/internal/fr;->a(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23115
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

    .line 451
    :goto_2
    if-eqz v2, :cond_0

    .line 23125
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

    .line 454
    :goto_3
    if-eqz v2, :cond_0

    .line 457
    iput-object p2, p0, Lcom/tapjoy/internal/fu;->l:Ljava/lang/String;

    .line 458
    iput-object p3, p0, Lcom/tapjoy/internal/fu;->m:Ljava/lang/String;

    .line 459
    iput-object p5, p0, Lcom/tapjoy/internal/fu;->u:Ljava/lang/String;

    .line 460
    iput-object p6, p0, Lcom/tapjoy/internal/fu;->v:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    :try_start_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 469
    :try_start_3
    const-string v3, "TapjoySDK"

    .line 24109
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

    .line 471
    new-instance v4, Lcom/tapjoy/internal/ci;

    invoke-direct {v4, v3, v2}, Lcom/tapjoy/internal/ci;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    .line 25104
    sput-object v4, Lcom/tapjoy/internal/ce;->b:Lcom/tapjoy/internal/ch;

    .line 474
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 26094
    sput-object v2, Lcom/tapjoy/internal/ce;->a:Ljava/util/concurrent/ExecutorService;

    .line 475
    iget-object v2, p0, Lcom/tapjoy/internal/fu;->i:Lcom/tapjoy/internal/fs;

    .line 26190
    iput-object v4, v2, Lcom/tapjoy/internal/fs;->b:Lcom/tapjoy/internal/ch;

    .line 26191
    invoke-virtual {v2}, Lcom/tapjoy/internal/fs;->a()V

    .line 476
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    .line 478
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tapjoy/internal/fu;->k:Z

    .line 26511
    new-instance v2, Lcom/tapjoy/internal/fy;

    iget-object v3, p0, Lcom/tapjoy/internal/fu;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/tapjoy/internal/fu;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/fy;-><init>(Ljava/io/File;)V

    .line 27019
    invoke-virtual {v2}, Lcom/tapjoy/internal/fy;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 26512
    :goto_4
    if-nez v0, :cond_2

    invoke-virtual {v2}, Lcom/tapjoy/internal/fy;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26513
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->g:Lcom/tapjoy/internal/ft;

    .line 27077
    sget-object v1, Lcom/tapjoy/internal/gl$i;->a:Lcom/tapjoy/internal/gl$i;

    const-string v2, "install"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v1

    .line 27078
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/gl$c$a;)V

    .line 489
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->f:Lcom/tapjoy/internal/fx;

    .line 27787
    invoke-static {p5}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 27790
    iget-object v1, v0, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    iget-object v1, v1, Lcom/tapjoy/internal/ge;->D:Lcom/tapjoy/internal/q;

    invoke-virtual {v1}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v1

    .line 27792
    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 27793
    iget-object v1, v0, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    iget-object v1, v1, Lcom/tapjoy/internal/ge;->D:Lcom/tapjoy/internal/q;

    invoke-virtual {v1, p5}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 27794
    iget-object v0, v0, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ge;->a(Z)V

    .line 491
    :cond_3
    invoke-virtual {p0}, Lcom/tapjoy/internal/fu;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v2, v1

    .line 448
    goto/16 :goto_1

    .line 23118
    :cond_5
    :try_start_4
    const-string v2, "Invalid App ID: {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p5, v3, v4

    invoke-static {v2, v3}, Lcom/tapjoy/internal/fr;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    .line 23119
    goto/16 :goto_2

    .line 23128
    :cond_6
    const-string v2, "Invalid App Key: {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p6, v3, v4

    invoke-static {v2, v3}, Lcom/tapjoy/internal/fr;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    .line 23129
    goto/16 :goto_3

    .line 466
    :catch_0
    move-exception v0

    .line 467
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    move v0, v1

    .line 27019
    goto :goto_4
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/fu;->k:Z

    if-eqz v0, :cond_2

    .line 229
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fu;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 230
    iget-object p1, p0, Lcom/tapjoy/internal/fu;->o:Ljava/lang/String;

    .line 232
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/fu;->o:Ljava/lang/String;

    .line 233
    if-eqz p1, :cond_1

    .line 19242
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->f:Lcom/tapjoy/internal/fx;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fx;->b()Lcom/tapjoy/internal/gl$n;

    move-result-object v0

    .line 19243
    const-string v1, "GCM registration id of device {} updated for sender {}: {}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 19385
    iget-object v4, v0, Lcom/tapjoy/internal/gl$n;->c:Lcom/tapjoy/internal/gl$l;

    .line 19243
    invoke-virtual {v4}, Lcom/tapjoy/internal/gl$l;->h()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tapjoy/internal/fu;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/tapjoy/internal/fr;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19245
    new-instance v1, Lcom/tapjoy/internal/hb;

    invoke-direct {v1, v0, p1}, Lcom/tapjoy/internal/hb;-><init>(Lcom/tapjoy/internal/gl$n;Ljava/lang/String;)V

    new-instance v0, Lcom/tapjoy/internal/fu$1;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/fu$1;-><init>(Lcom/tapjoy/internal/fu;Ljava/lang/String;)V

    .line 20081
    sget-object v2, Lcom/tapjoy/internal/ce;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v0, v2}, Lcom/tapjoy/internal/ce;->a(Lcom/tapjoy/internal/cj;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 236
    :cond_2
    if-eqz p1, :cond_1

    .line 237
    :try_start_1
    iput-object p1, p0, Lcom/tapjoy/internal/fu;->o:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 838
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->g:Lcom/tapjoy/internal/ft;

    .line 33259
    sget-object v1, Lcom/tapjoy/internal/gl$i;->b:Lcom/tapjoy/internal/gl$i;

    const-string v2, "impression"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v1

    .line 33260
    if-eqz p1, :cond_0

    .line 33261
    invoke-static {p1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gl$c$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    .line 33263
    :cond_0
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/gl$c$a;)V

    .line 839
    return-void
.end method

.method final a(Ljava/util/Map;J)V
    .locals 4

    .prologue
    .line 842
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->g:Lcom/tapjoy/internal/ft;

    .line 33267
    sget-object v1, Lcom/tapjoy/internal/gl$i;->b:Lcom/tapjoy/internal/gl$i;

    const-string v2, "view"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/tapjoy/internal/gl$c$a;->d(J)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v1

    .line 33269
    if-eqz p1, :cond_0

    .line 33270
    invoke-static {p1}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gl$c$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    .line 33272
    :cond_0
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/gl$c$a;)V

    .line 843
    return-void
.end method

.method final a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 846
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->g:Lcom/tapjoy/internal/ft;

    .line 33276
    sget-object v1, Lcom/tapjoy/internal/gl$i;->b:Lcom/tapjoy/internal/gl$i;

    const-string v2, "click"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v1

    .line 33277
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 33278
    const-string v3, "region"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33279
    invoke-static {v2}, Lcom/tapjoy/internal/bl;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/gl$c$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    .line 33280
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/gl$c$a;)V

    .line 847
    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 5

    .prologue
    const/16 v4, 0xc8

    .line 405
    const-string v0, "setUserTags"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/fu;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20712
    :goto_0
    return-void

    .line 408
    :cond_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 409
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 410
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 411
    if-eqz v0, :cond_1

    .line 412
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v4, :cond_1

    .line 414
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    if-lt v0, v4, :cond_1

    :cond_2
    move-object p1, v1

    .line 423
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/fu;->f:Lcom/tapjoy/internal/fx;

    .line 20701
    monitor-enter v1

    .line 20702
    if-eqz p1, :cond_5

    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 20703
    invoke-static {}, Lcom/tapjoy/internal/gl$x;->e()Lcom/tapjoy/internal/gl$x$a;

    move-result-object v0

    .line 21179
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->e()V

    .line 21180
    iget-object v2, v0, Lcom/tapjoy/internal/gl$x$a;->b:Lcom/tapjoy/internal/ds;

    invoke-static {p1, v2}, Lcom/tapjoy/internal/dh$a;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 22057
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x$a;->d()Lcom/tapjoy/internal/gl$x;

    move-result-object v0

    .line 22058
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x;->c()Z

    move-result v2

    if-nez v2, :cond_4

    .line 22316
    new-instance v0, Lcom/tapjoy/internal/dz;

    invoke-direct {v0}, Lcom/tapjoy/internal/dz;-><init>()V

    .line 22059
    throw v0

    .line 20712
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 20703
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$x;->a()[B

    move-result-object v0

    .line 20704
    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 20705
    iget-object v2, v1, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    iget-object v2, v2, Lcom/tapjoy/internal/ge;->z:Lcom/tapjoy/internal/q;

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 20706
    iget-object v0, v1, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/gl$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$z$a;->y()Lcom/tapjoy/internal/gl$z$a;

    .line 20707
    iget-object v0, v1, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/gl$z$a;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/gl$z$a;->a(Ljava/lang/Iterable;)Lcom/tapjoy/internal/gl$z$a;

    .line 20712
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 20709
    :cond_5
    iget-object v0, v1, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    iget-object v0, v0, Lcom/tapjoy/internal/ge;->z:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->c()V

    .line 20710
    iget-object v0, v1, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/gl$z$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$z$a;->y()Lcom/tapjoy/internal/gl$z$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/fu;->k:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/fw;->b(Landroid/content/Context;)Lcom/tapjoy/internal/fw;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fu;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fw;->e(Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/fu;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :cond_0
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->e:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 161
    iput-object v0, p0, Lcom/tapjoy/internal/fu;->e:Landroid/content/Context;

    .line 162
    invoke-static {}, Lcom/tapjoy/internal/eu;->a()Lcom/tapjoy/internal/eu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/eu;->a(Landroid/content/Context;)V

    .line 164
    invoke-static {v0}, Lcom/tapjoy/internal/fx;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fx;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/fu;->f:Lcom/tapjoy/internal/fx;

    .line 18954
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Lcom/tapjoy/internal/fu;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "events2"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/tapjoy/internal/fu;->i:Lcom/tapjoy/internal/fs;

    if-nez v2, :cond_0

    .line 168
    new-instance v2, Lcom/tapjoy/internal/fs;

    invoke-direct {v2, v1}, Lcom/tapjoy/internal/fs;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/tapjoy/internal/fu;->i:Lcom/tapjoy/internal/fs;

    .line 171
    :cond_0
    new-instance v1, Lcom/tapjoy/internal/ft;

    iget-object v2, p0, Lcom/tapjoy/internal/fu;->f:Lcom/tapjoy/internal/fx;

    iget-object v3, p0, Lcom/tapjoy/internal/fu;->i:Lcom/tapjoy/internal/fs;

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/internal/ft;-><init>(Lcom/tapjoy/internal/fx;Lcom/tapjoy/internal/fs;)V

    iput-object v1, p0, Lcom/tapjoy/internal/fu;->g:Lcom/tapjoy/internal/ft;

    .line 172
    new-instance v1, Lcom/tapjoy/internal/gh;

    iget-object v2, p0, Lcom/tapjoy/internal/fu;->g:Lcom/tapjoy/internal/ft;

    invoke-direct {v1, v2}, Lcom/tapjoy/internal/gh;-><init>(Lcom/tapjoy/internal/ft;)V

    iput-object v1, p0, Lcom/tapjoy/internal/fu;->h:Lcom/tapjoy/internal/gh;

    .line 173
    new-instance v1, Lcom/tapjoy/internal/gd;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/gd;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tapjoy/internal/fu;->b:Lcom/tapjoy/internal/gd;

    .line 175
    new-instance v1, Lcom/tapjoy/internal/fc;

    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Lcom/tapjoy/internal/fu;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const-string v4, "usages"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/internal/fu;->g:Lcom/tapjoy/internal/ft;

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/internal/fc;-><init>(Ljava/io/File;Lcom/tapjoy/internal/ft;)V

    invoke-static {v1}, Lcom/tapjoy/internal/fa;->a(Lcom/tapjoy/internal/fc;)V

    .line 178
    sget-object v1, Lcom/tapjoy/internal/gp;->a:Lcom/tapjoy/internal/gp;

    .line 19065
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/internal/gp;->b:Landroid/content/Context;

    .line 19066
    const-string v2, "tapjoyCacheDataMMF2E"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/internal/gp;->c:Landroid/content/SharedPreferences;

    .line 19067
    const-string v2, "tapjoyCacheDataMMF2U"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/tapjoy/internal/gp;->d:Landroid/content/SharedPreferences;

    .line 19068
    invoke-virtual {v1}, Lcom/tapjoy/internal/gp;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_1
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/tapjoy/internal/fu;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fu;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->e:Landroid/content/Context;

    if-nez v0, :cond_3

    .line 28166
    :cond_1
    sget-boolean v0, Lcom/tapjoy/internal/fr;->a:Z

    if-eqz v0, :cond_2

    .line 28167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Should be called after initializing the SDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/fr;->b(Ljava/lang/String;)V

    .line 497
    :cond_2
    const/4 v0, 0x0

    .line 499
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()Ljava/util/Set;
    .locals 1

    .prologue
    .line 398
    const-string v0, "getUserTags"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/fu;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 401
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->f:Lcom/tapjoy/internal/fx;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fx;->e()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->e:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 29154
    sget-boolean v0, Lcom/tapjoy/internal/fr;->a:Z

    if-eqz v0, :cond_0

    .line 29155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Should be called after initializing the SDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/fr;->b(Ljava/lang/String;)V

    .line 505
    :cond_0
    const/4 v0, 0x0

    .line 507
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/tapjoy/internal/fu;->h:Lcom/tapjoy/internal/gh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fu;->h:Lcom/tapjoy/internal/gh;

    .line 30038
    iget-object v0, v0, Lcom/tapjoy/internal/gh;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 555
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

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 568
    iget-object v2, p0, Lcom/tapjoy/internal/fu;->h:Lcom/tapjoy/internal/gh;

    .line 30092
    iget-object v3, v2, Lcom/tapjoy/internal/gh;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v3, :cond_0

    .line 30093
    iget-object v3, v2, Lcom/tapjoy/internal/gh;->c:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 30094
    iput-object v4, v2, Lcom/tapjoy/internal/gh;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 30046
    :cond_0
    iget-object v3, v2, Lcom/tapjoy/internal/gh;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 30047
    const-string v3, "New session started"

    invoke-static {v3}, Lcom/tapjoy/internal/fr;->a(Ljava/lang/String;)V

    .line 30048
    iget-object v2, v2, Lcom/tapjoy/internal/gh;->a:Lcom/tapjoy/internal/ft;

    .line 31087
    iget-object v3, v2, Lcom/tapjoy/internal/ft;->a:Lcom/tapjoy/internal/fx;

    invoke-virtual {v3}, Lcom/tapjoy/internal/fx;->d()Lcom/tapjoy/internal/gl$p;

    move-result-object v3

    .line 31088
    iget-object v4, v2, Lcom/tapjoy/internal/ft;->a:Lcom/tapjoy/internal/fx;

    .line 31469
    monitor-enter v4

    .line 31470
    :try_start_0
    iget-object v5, v4, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    iget-object v5, v5, Lcom/tapjoy/internal/ge;->h:Lcom/tapjoy/internal/m;

    invoke-virtual {v5}, Lcom/tapjoy/internal/m;->b()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 31471
    iget-object v6, v4, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    iget-object v6, v6, Lcom/tapjoy/internal/ge;->h:Lcom/tapjoy/internal/m;

    invoke-virtual {v6, v5}, Lcom/tapjoy/internal/m;->a(I)V

    .line 31472
    iget-object v6, v4, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/gl$z$a;

    invoke-virtual {v6, v5}, Lcom/tapjoy/internal/gl$z$a;->d(I)Lcom/tapjoy/internal/gl$z$a;

    .line 31473
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31089
    sget-object v4, Lcom/tapjoy/internal/gl$i;->a:Lcom/tapjoy/internal/gl$i;

    const-string v5, "bootup"

    invoke-virtual {v2, v4, v5}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v4

    .line 31090
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/tapjoy/internal/ft;->c:J

    .line 31091
    if-eqz v3, :cond_2

    .line 32296
    if-nez v3, :cond_1

    .line 32297
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31473
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 32299
    :cond_1
    iput-object v3, v4, Lcom/tapjoy/internal/gl$c$a;->l:Lcom/tapjoy/internal/gl$p;

    .line 32301
    iget v3, v4, Lcom/tapjoy/internal/gl$c$a;->b:I

    const/high16 v5, 0x10000

    or-int/2addr v3, v5

    iput v3, v4, Lcom/tapjoy/internal/gl$c$a;->b:I

    .line 31094
    :cond_2
    invoke-virtual {v2, v4}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/gl$c$a;)V

    .line 30050
    sget-object v2, Lcom/tapjoy/internal/eo;->c:Lcom/tapjoy/internal/eo$a;

    invoke-virtual {v2}, Lcom/tapjoy/internal/eo$a;->notifyObservers()V

    move v2, v0

    .line 568
    :goto_0
    if-eqz v2, :cond_4

    .line 569
    iget-object v1, p0, Lcom/tapjoy/internal/fu;->a:Lcom/tapjoy/internal/gc;

    .line 33052
    monitor-enter v1

    .line 33053
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, v1, Lcom/tapjoy/internal/gc;->b:Ljava/util/Set;

    .line 33054
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 570
    sget-object v1, Lcom/tapjoy/internal/gp;->a:Lcom/tapjoy/internal/gp;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gp;->a()V

    .line 573
    :goto_1
    return v0

    :cond_3
    move v2, v1

    .line 30053
    goto :goto_0

    .line 33054
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_4
    move v0, v1

    .line 573
    goto :goto_1
.end method
