.class public Lcom/tapjoy/internal/fn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/fb;


# static fields
.field private static final a:Lcom/tapjoy/internal/fn;


# instance fields
.field private final b:Lcom/tapjoy/internal/fb;

.field private final c:Lcom/tapjoy/internal/be;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/fn$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/fn$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/fn;->a:Lcom/tapjoy/internal/fn;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/fn;->b:Lcom/tapjoy/internal/fb;

    iput-object v0, p0, Lcom/tapjoy/internal/fn;->c:Lcom/tapjoy/internal/be;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/tapjoy/internal/fn;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/fb;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/fn;->b:Lcom/tapjoy/internal/fb;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/tapjoy/internal/cq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/tapjoy/internal/x;->a()Landroid/os/Handler;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/tapjoy/internal/x;->a(Landroid/os/Handler;)Lcom/tapjoy/internal/be;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/fn;->c:Lcom/tapjoy/internal/be;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    aput-object v0, v1, v2

    :goto_1
    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/internal/fe;->b()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/tapjoy/internal/fe;->a:Lcom/tapjoy/internal/be;

    iput-object v0, p0, Lcom/tapjoy/internal/fn;->c:Lcom/tapjoy/internal/be;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/tapjoy/internal/x;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/x;->a(Landroid/os/Handler;)Lcom/tapjoy/internal/be;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fn;->c:Lcom/tapjoy/internal/be;

    goto :goto_1
.end method

.method static synthetic a(Lcom/tapjoy/internal/fn;)Lcom/tapjoy/internal/fb;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/fn;->b:Lcom/tapjoy/internal/fb;

    return-object v0
.end method

.method public static a(Lcom/tapjoy/internal/fb;)Lcom/tapjoy/internal/fn;
    .locals 1

    instance-of v0, p0, Lcom/tapjoy/internal/fn;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Lcom/tapjoy/internal/fn;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/fn;-><init>(Lcom/tapjoy/internal/fb;)V

    :goto_1
    return-object v0

    :cond_2
    sget-object v0, Lcom/tapjoy/internal/fn;->a:Lcom/tapjoy/internal/fn;

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/fn;->c:Lcom/tapjoy/internal/be;

    new-instance v1, Lcom/tapjoy/internal/fn$2;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/fn$2;-><init>(Lcom/tapjoy/internal/fn;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/be;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tapjoy/internal/ey;)V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/fn;->c:Lcom/tapjoy/internal/be;

    new-instance v1, Lcom/tapjoy/internal/fn$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/tapjoy/internal/fn$6;-><init>(Lcom/tapjoy/internal/fn;Ljava/lang/String;Lcom/tapjoy/internal/ey;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/be;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/fn;->c:Lcom/tapjoy/internal/be;

    new-instance v1, Lcom/tapjoy/internal/fn$3;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/fn$3;-><init>(Lcom/tapjoy/internal/fn;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/be;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/tapjoy/internal/ey;)V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/fn;->c:Lcom/tapjoy/internal/be;

    new-instance v1, Lcom/tapjoy/internal/fn$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/tapjoy/internal/fn$7;-><init>(Lcom/tapjoy/internal/fn;Ljava/lang/String;Lcom/tapjoy/internal/ey;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/be;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/fn;->c:Lcom/tapjoy/internal/be;

    new-instance v1, Lcom/tapjoy/internal/fn$4;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/fn$4;-><init>(Lcom/tapjoy/internal/fn;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/be;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/fn;->c:Lcom/tapjoy/internal/be;

    new-instance v1, Lcom/tapjoy/internal/fn$5;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/fn$5;-><init>(Lcom/tapjoy/internal/fn;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/be;->a(Ljava/lang/Runnable;)Z

    return-void
.end method
