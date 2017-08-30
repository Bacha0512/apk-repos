.class final Lcom/tapjoy/internal/ee$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/TJConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/ee;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tapjoy/TJConnectListener;

.field final synthetic c:Lcom/tapjoy/internal/ee;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ee;Landroid/content/Context;Lcom/tapjoy/TJConnectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/ee$1;->c:Lcom/tapjoy/internal/ee;

    iput-object p2, p0, Lcom/tapjoy/internal/ee$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tapjoy/internal/ee$1;->b:Lcom/tapjoy/TJConnectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectFailure()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/ee$1;->b:Lcom/tapjoy/TJConnectListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/ee$1;->b:Lcom/tapjoy/TJConnectListener;

    invoke-interface {v0}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V

    :cond_0
    return-void
.end method

.method public final onConnectSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/internal/ee$1;->c:Lcom/tapjoy/internal/ee;

    new-instance v1, Lcom/tapjoy/TJCurrency;

    iget-object v2, p0, Lcom/tapjoy/internal/ee$1;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tapjoy/TJCurrency;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/tapjoy/internal/ee;->a(Lcom/tapjoy/internal/ee;Lcom/tapjoy/TJCurrency;)Lcom/tapjoy/TJCurrency;

    iget-object v0, p0, Lcom/tapjoy/internal/ee$1;->c:Lcom/tapjoy/internal/ee;

    new-instance v1, Lcom/tapjoy/TapjoyCache;

    iget-object v2, p0, Lcom/tapjoy/internal/ee$1;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tapjoy/TapjoyCache;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/tapjoy/internal/ee;->a(Lcom/tapjoy/internal/ee;Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCache;

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/ee$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/TJEventOptimizer;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lcom/tapjoy/internal/ee$1;->c:Lcom/tapjoy/internal/ee;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/internal/ee;->a:Z

    iget-object v0, p0, Lcom/tapjoy/internal/ee$1;->b:Lcom/tapjoy/TJConnectListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/ee$1;->b:Lcom/tapjoy/TJConnectListener;

    invoke-interface {v0}, Lcom/tapjoy/TJConnectListener;->onConnectSuccess()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/ee$1;->onConnectFailure()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "TapjoyAPI"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/internal/ee$1;->onConnectFailure()V

    goto :goto_0
.end method
