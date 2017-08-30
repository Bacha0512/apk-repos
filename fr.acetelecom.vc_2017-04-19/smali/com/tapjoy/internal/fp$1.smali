.class final Lcom/tapjoy/internal/fp$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/fp;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fp;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/fp$1;->a:Lcom/tapjoy/internal/fp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    new-instance v0, Lcom/tapjoy/internal/ev;

    invoke-direct {v0}, Lcom/tapjoy/internal/ev;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/internal/fp$1;->a:Lcom/tapjoy/internal/fp;

    invoke-static {v1}, Lcom/tapjoy/internal/fp;->a(Lcom/tapjoy/internal/fp;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ev;->a(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/tapjoy/internal/fp$1;->a:Lcom/tapjoy/internal/fp;

    monitor-enter v2

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, v0, Lcom/tapjoy/internal/ev;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/internal/cr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v0, Lcom/tapjoy/internal/ev;->b:Z

    iget-object v3, p0, Lcom/tapjoy/internal/fp$1;->a:Lcom/tapjoy/internal/fp;

    invoke-static {v3}, Lcom/tapjoy/internal/fp;->b(Lcom/tapjoy/internal/fp;)Lcom/tapjoy/internal/fw;

    move-result-object v3

    iget-object v3, v3, Lcom/tapjoy/internal/fw;->A:Lcom/tapjoy/internal/q;

    invoke-virtual {v3}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/internal/fp$1;->a:Lcom/tapjoy/internal/fp;

    invoke-static {v4}, Lcom/tapjoy/internal/fp;->c(Lcom/tapjoy/internal/fp;)Lcom/tapjoy/internal/gd$z$a;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/tapjoy/internal/gd$z$a;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gd$z$a;

    iget-object v4, p0, Lcom/tapjoy/internal/fp$1;->a:Lcom/tapjoy/internal/fp;

    invoke-static {v4}, Lcom/tapjoy/internal/fp;->c(Lcom/tapjoy/internal/fp;)Lcom/tapjoy/internal/gd$z$a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/tapjoy/internal/gd$z$a;->a(Z)Lcom/tapjoy/internal/gd$z$a;

    iget-object v4, p0, Lcom/tapjoy/internal/fp$1;->a:Lcom/tapjoy/internal/fp;

    invoke-static {v4}, Lcom/tapjoy/internal/fp;->b(Lcom/tapjoy/internal/fp;)Lcom/tapjoy/internal/fw;

    move-result-object v4

    iget-object v4, v4, Lcom/tapjoy/internal/fw;->A:Lcom/tapjoy/internal/q;

    invoke-virtual {v4, v1}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tapjoy/internal/fp$1;->a:Lcom/tapjoy/internal/fp;

    invoke-static {v4}, Lcom/tapjoy/internal/fp;->b(Lcom/tapjoy/internal/fp;)Lcom/tapjoy/internal/fw;

    move-result-object v4

    iget-object v4, v4, Lcom/tapjoy/internal/fw;->B:Lcom/tapjoy/internal/j;

    invoke-virtual {v4, v0}, Lcom/tapjoy/internal/j;->a(Z)V

    invoke-static {v1, v0}, Lcom/tapjoy/internal/ga;->a(Ljava/lang/String;Z)V

    invoke-static {v3}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fp$1;->a:Lcom/tapjoy/internal/fp;

    invoke-static {v0}, Lcom/tapjoy/internal/fp;->b(Lcom/tapjoy/internal/fp;)Lcom/tapjoy/internal/fw;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fw;->a(Z)V

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/fp$1;->a:Lcom/tapjoy/internal/fp;

    invoke-static {v0}, Lcom/tapjoy/internal/fp;->c(Lcom/tapjoy/internal/fp;)Lcom/tapjoy/internal/gd$z$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->g()Lcom/tapjoy/internal/gd$z$a;

    iget-object v0, p0, Lcom/tapjoy/internal/fp$1;->a:Lcom/tapjoy/internal/fp;

    invoke-static {v0}, Lcom/tapjoy/internal/fp;->c(Lcom/tapjoy/internal/fp;)Lcom/tapjoy/internal/gd$z$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gd$z$a;->h()Lcom/tapjoy/internal/gd$z$a;

    iget-object v0, p0, Lcom/tapjoy/internal/fp$1;->a:Lcom/tapjoy/internal/fp;

    invoke-static {v0}, Lcom/tapjoy/internal/fp;->b(Lcom/tapjoy/internal/fp;)Lcom/tapjoy/internal/fw;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->A:Lcom/tapjoy/internal/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/internal/fp$1;->a:Lcom/tapjoy/internal/fp;

    invoke-static {v0}, Lcom/tapjoy/internal/fp;->b(Lcom/tapjoy/internal/fp;)Lcom/tapjoy/internal/fw;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/fw;->B:Lcom/tapjoy/internal/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/j;->a(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tapjoy/internal/ga;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
