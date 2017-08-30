.class public abstract Lcom/tapjoy/internal/dc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/df;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/dc$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/tapjoy/internal/dc$a;

.field private final b:Lcom/tapjoy/internal/de;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/tapjoy/internal/dc$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/dc$a;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/dc;->a:Lcom/tapjoy/internal/dc$a;

    .line 71
    new-instance v0, Lcom/tapjoy/internal/de;

    invoke-direct {v0}, Lcom/tapjoy/internal/de;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/dc;->b:Lcom/tapjoy/internal/de;

    .line 215
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tapjoy/internal/dc;->a:Lcom/tapjoy/internal/dc$a;

    .line 2321
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/dc$a;->a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/tapjoy/internal/dc;->b:Lcom/tapjoy/internal/de;

    invoke-virtual {v1}, Lcom/tapjoy/internal/de;->a()V

    .line 172
    :cond_0
    return v0
.end method

.method protected final a(Ljava/lang/Throwable;)Z
    .locals 4

    .prologue
    .line 186
    iget-object v1, p0, Lcom/tapjoy/internal/dc;->a:Lcom/tapjoy/internal/dc$a;

    invoke-static {p1}, Lcom/tapjoy/internal/cq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 2328
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Lcom/tapjoy/internal/dc$a;->a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    .line 187
    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/tapjoy/internal/dc;->b:Lcom/tapjoy/internal/de;

    invoke-virtual {v1}, Lcom/tapjoy/internal/de;->a()V

    .line 193
    :cond_0
    instance-of v1, p1, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 194
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 196
    :cond_1
    return v0
.end method

.method public cancel(Z)Z
    .locals 3
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .local p0, "this":Lcom/tapjoy/internal/dc;, "Lcom/tapjoy/internal/dc<TV;>;"
    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Lcom/tapjoy/internal/dc;->a:Lcom/tapjoy/internal/dc$a;

    .line 1335
    const/4 v1, 0x4

    invoke-virtual {v0, v2, v2, v1}, Lcom/tapjoy/internal/dc$a;->a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    .line 126
    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/dc;->b:Lcom/tapjoy/internal/de;

    invoke-virtual {v0}, Lcom/tapjoy/internal/de;->a()V

    .line 133
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tapjoy/internal/dc;->a:Lcom/tapjoy/internal/dc$a;

    .line 1275
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dc$a;->acquireSharedInterruptibly(I)V

    .line 1276
    invoke-virtual {v0}, Lcom/tapjoy/internal/dc$a;->a()Ljava/lang/Object;

    move-result-object v0

    .line 111
    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 91
    .local p0, "this":Lcom/tapjoy/internal/dc;, "Lcom/tapjoy/internal/dc<TV;>;"
    iget-object v0, p0, Lcom/tapjoy/internal/dc;->a:Lcom/tapjoy/internal/dc$a;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 1258
    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tapjoy/internal/dc$a;->tryAcquireSharedNanos(IJ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1259
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Timeout waiting for task."

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1262
    :cond_0
    invoke-virtual {v0}, Lcom/tapjoy/internal/dc$a;->a()Ljava/lang/Object;

    move-result-object v0

    .line 91
    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tapjoy/internal/dc;->a:Lcom/tapjoy/internal/dc$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dc$a;->c()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/tapjoy/internal/dc;->a:Lcom/tapjoy/internal/dc$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dc$a;->b()Z

    move-result v0

    return v0
.end method
