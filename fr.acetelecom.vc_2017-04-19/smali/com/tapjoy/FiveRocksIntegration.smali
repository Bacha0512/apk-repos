.class public Lcom/tapjoy/FiveRocksIntegration;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tapjoy/internal/bd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/bd;

    invoke-direct {v0}, Lcom/tapjoy/internal/bd;-><init>()V

    sput-object v0, Lcom/tapjoy/FiveRocksIntegration;->a:Lcom/tapjoy/internal/bd;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/tapjoy/internal/bd;
    .locals 1

    sget-object v0, Lcom/tapjoy/FiveRocksIntegration;->a:Lcom/tapjoy/internal/bd;

    return-object v0
.end method

.method public static a(Ljava/util/Hashtable;)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    const-string v0, "TJC_OPTION_ENABLE_LOGGING"

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/tapjoy/internal/fa;->a(Z)V

    :cond_0
    invoke-static {}, Lcom/tapjoy/internal/fm;->a()Lcom/tapjoy/internal/fm;

    move-result-object v0

    iget-boolean v1, v0, Lcom/tapjoy/internal/fm;->c:Z

    if-eq v1, v2, :cond_1

    iput-boolean v2, v0, Lcom/tapjoy/internal/fm;->c:Z

    :cond_1
    new-instance v0, Lcom/tapjoy/FiveRocksIntegration$1;

    invoke-direct {v0}, Lcom/tapjoy/FiveRocksIntegration$1;-><init>()V

    invoke-static {}, Lcom/tapjoy/internal/fm;->a()Lcom/tapjoy/internal/fm;

    move-result-object v1

    invoke-static {v0}, Lcom/tapjoy/internal/fn;->a(Lcom/tapjoy/internal/fb;)Lcom/tapjoy/internal/fn;

    move-result-object v0

    iput-object v0, v1, Lcom/tapjoy/internal/fm;->p:Lcom/tapjoy/internal/fn;

    return-void
.end method

.method public static addPlacementCallback(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V
    .locals 2

    sget-object v1, Lcom/tapjoy/FiveRocksIntegration;->a:Lcom/tapjoy/internal/bd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tapjoy/FiveRocksIntegration;->a:Lcom/tapjoy/internal/bd;

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/bd;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
