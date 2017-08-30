.class public final Lcom/tapjoy/internal/fe;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/tapjoy/internal/be;

.field private static b:Landroid/app/Activity;

.field private static final c:Lcom/tapjoy/internal/cc;

.field private static final d:Lcom/tapjoy/internal/cc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/cc;

    invoke-direct {v0}, Lcom/tapjoy/internal/cc;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/fe;->c:Lcom/tapjoy/internal/cc;

    new-instance v0, Lcom/tapjoy/internal/cc;

    invoke-direct {v0}, Lcom/tapjoy/internal/cc;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/fe;->d:Lcom/tapjoy/internal/cc;

    new-instance v0, Lcom/tapjoy/internal/fe$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/fe$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/fe;->a:Lcom/tapjoy/internal/be;

    return-void
.end method

.method public static a()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/fe;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tapjoy/internal/d;->a()Landroid/app/Activity;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static a(Landroid/opengl/GLSurfaceView;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    sget-object v0, Lcom/tapjoy/internal/fe;->c:Lcom/tapjoy/internal/cc;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/cc;->a(Ljava/lang/Object;)V

    new-instance v0, Lcom/tapjoy/internal/fe$2;

    invoke-direct {v0}, Lcom/tapjoy/internal/fe$2;-><init>()V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b()Ljava/lang/Thread;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/fe;->d:Lcom/tapjoy/internal/cc;

    invoke-virtual {v0}, Lcom/tapjoy/internal/cc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic c()Lcom/tapjoy/internal/cc;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/fe;->c:Lcom/tapjoy/internal/cc;

    return-object v0
.end method

.method static synthetic d()Lcom/tapjoy/internal/cc;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/fe;->d:Lcom/tapjoy/internal/cc;

    return-object v0
.end method
