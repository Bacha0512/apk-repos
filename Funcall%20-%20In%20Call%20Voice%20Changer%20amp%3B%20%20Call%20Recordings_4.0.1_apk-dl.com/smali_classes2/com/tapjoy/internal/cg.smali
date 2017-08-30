.class public final Lcom/tapjoy/internal/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tapjoy/internal/ce;

.field private final b:Lcom/tapjoy/internal/cj;


# direct methods
.method protected constructor <init>(Lcom/tapjoy/internal/ce;Lcom/tapjoy/internal/cj;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/tapjoy/internal/cg;->a:Lcom/tapjoy/internal/ce;

    .line 23
    iput-object p2, p0, Lcom/tapjoy/internal/cg;->b:Lcom/tapjoy/internal/cj;

    .line 24
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/cg;->a:Lcom/tapjoy/internal/ce;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ce;->f()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/tapjoy/internal/cg;->b:Lcom/tapjoy/internal/cj;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/tapjoy/internal/cg;->b:Lcom/tapjoy/internal/cj;

    instance-of v1, v1, Lcom/tapjoy/internal/ck;

    if-nez v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/tapjoy/internal/cg;->b:Lcom/tapjoy/internal/cj;

    iget-object v2, p0, Lcom/tapjoy/internal/cg;->a:Lcom/tapjoy/internal/ce;

    invoke-interface {v1, v2, v0}, Lcom/tapjoy/internal/cj;->a(Lcom/tapjoy/internal/ce;Ljava/lang/Object;)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tapjoy/internal/cg;->b:Lcom/tapjoy/internal/cj;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/tapjoy/internal/cg;->b:Lcom/tapjoy/internal/cj;

    instance-of v0, v0, Lcom/tapjoy/internal/ck;

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/tapjoy/internal/cg;->b:Lcom/tapjoy/internal/cj;

    iget-object v1, p0, Lcom/tapjoy/internal/cg;->a:Lcom/tapjoy/internal/ce;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/cj;->a(Lcom/tapjoy/internal/ce;)V

    goto :goto_0
.end method
