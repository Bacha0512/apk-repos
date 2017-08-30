.class public abstract Lcom/tapjoy/internal/fx;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/fx$a;
    }
.end annotation


# static fields
.field protected static a:Lcom/tapjoy/internal/fx$a;

.field private static b:Lcom/tapjoy/internal/fx;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/tapjoy/internal/fx;)V
    .locals 3

    const-class v1, Lcom/tapjoy/internal/fx;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/fx;

    sget-object v0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/fx$a;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    sput-object v2, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/fx$a;

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/fx;->a(Lcom/tapjoy/internal/fx$a;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v1, Lcom/tapjoy/internal/fx;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/tapjoy/internal/fx$a;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/fx$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/fx;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    sput-object v2, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/fx$a;

    sget-object v2, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/fx;

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/fx;->a(Lcom/tapjoy/internal/fx$a;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    sput-object v0, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/fx$a;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static c()Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/fx;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/fx;

    invoke-virtual {v1}, Lcom/tapjoy/internal/fx;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/fx$a;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/tapjoy/internal/fx$a;->d:Lcom/tapjoy/internal/eg;

    invoke-virtual {v1}, Lcom/tapjoy/internal/eg;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Lcom/tapjoy/internal/fx$a;)V
.end method

.method public abstract b()Z
.end method
