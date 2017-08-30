.class final Lcom/tapjoy/internal/fx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/fx;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fx;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lcom/tapjoy/internal/fx$1;->a:Lcom/tapjoy/internal/fx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 733
    new-instance v0, Lcom/tapjoy/internal/ey;

    invoke-direct {v0}, Lcom/tapjoy/internal/ey;-><init>()V

    .line 734
    iget-object v1, p0, Lcom/tapjoy/internal/fx$1;->a:Lcom/tapjoy/internal/fx;

    invoke-static {v1}, Lcom/tapjoy/internal/fx;->a(Lcom/tapjoy/internal/fx;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ey;->a(Landroid/content/Context;)Z

    move-result v1

    .line 736
    iget-object v2, p0, Lcom/tapjoy/internal/fx$1;->a:Lcom/tapjoy/internal/fx;

    monitor-enter v2

    .line 737
    if-eqz v1, :cond_1

    .line 1090
    :try_start_0
    iget-object v1, v0, Lcom/tapjoy/internal/ey;->a:Ljava/lang/String;

    .line 738
    invoke-static {v1}, Lcom/tapjoy/internal/cr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1097
    iget-boolean v0, v0, Lcom/tapjoy/internal/ey;->b:Z

    .line 740
    iget-object v3, p0, Lcom/tapjoy/internal/fx$1;->a:Lcom/tapjoy/internal/fx;

    invoke-static {v3}, Lcom/tapjoy/internal/fx;->b(Lcom/tapjoy/internal/fx;)Lcom/tapjoy/internal/ge;

    move-result-object v3

    iget-object v3, v3, Lcom/tapjoy/internal/ge;->A:Lcom/tapjoy/internal/q;

    invoke-virtual {v3}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v3

    .line 742
    iget-object v4, p0, Lcom/tapjoy/internal/fx$1;->a:Lcom/tapjoy/internal/fx;

    invoke-static {v4}, Lcom/tapjoy/internal/fx;->c(Lcom/tapjoy/internal/fx;)Lcom/tapjoy/internal/gl$z$a;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/tapjoy/internal/gl$z$a;->c(Ljava/lang/String;)Lcom/tapjoy/internal/gl$z$a;

    .line 743
    iget-object v4, p0, Lcom/tapjoy/internal/fx$1;->a:Lcom/tapjoy/internal/fx;

    invoke-static {v4}, Lcom/tapjoy/internal/fx;->c(Lcom/tapjoy/internal/fx;)Lcom/tapjoy/internal/gl$z$a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/tapjoy/internal/gl$z$a;->a(Z)Lcom/tapjoy/internal/gl$z$a;

    .line 745
    iget-object v4, p0, Lcom/tapjoy/internal/fx$1;->a:Lcom/tapjoy/internal/fx;

    invoke-static {v4}, Lcom/tapjoy/internal/fx;->b(Lcom/tapjoy/internal/fx;)Lcom/tapjoy/internal/ge;

    move-result-object v4

    iget-object v4, v4, Lcom/tapjoy/internal/ge;->A:Lcom/tapjoy/internal/q;

    invoke-virtual {v4, v1}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 746
    iget-object v4, p0, Lcom/tapjoy/internal/fx$1;->a:Lcom/tapjoy/internal/fx;

    invoke-static {v4}, Lcom/tapjoy/internal/fx;->b(Lcom/tapjoy/internal/fx;)Lcom/tapjoy/internal/ge;

    move-result-object v4

    iget-object v4, v4, Lcom/tapjoy/internal/ge;->B:Lcom/tapjoy/internal/j;

    invoke-virtual {v4, v0}, Lcom/tapjoy/internal/j;->a(Z)V

    .line 748
    invoke-static {v1, v0}, Lcom/tapjoy/internal/gi;->a(Ljava/lang/String;Z)V

    .line 750
    invoke-static {v3}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/tapjoy/internal/fx$1;->a:Lcom/tapjoy/internal/fx;

    invoke-static {v0}, Lcom/tapjoy/internal/fx;->b(Lcom/tapjoy/internal/fx;)Lcom/tapjoy/internal/ge;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ge;->a(Z)V

    .line 763
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/fx$1;->a:Lcom/tapjoy/internal/fx;

    invoke-static {v0}, Lcom/tapjoy/internal/fx;->c(Lcom/tapjoy/internal/fx;)Lcom/tapjoy/internal/gl$z$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$z$a;->g()Lcom/tapjoy/internal/gl$z$a;

    .line 756
    iget-object v0, p0, Lcom/tapjoy/internal/fx$1;->a:Lcom/tapjoy/internal/fx;

    invoke-static {v0}, Lcom/tapjoy/internal/fx;->c(Lcom/tapjoy/internal/fx;)Lcom/tapjoy/internal/gl$z$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$z$a;->h()Lcom/tapjoy/internal/gl$z$a;

    .line 758
    iget-object v0, p0, Lcom/tapjoy/internal/fx$1;->a:Lcom/tapjoy/internal/fx;

    invoke-static {v0}, Lcom/tapjoy/internal/fx;->b(Lcom/tapjoy/internal/fx;)Lcom/tapjoy/internal/ge;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/ge;->A:Lcom/tapjoy/internal/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/tapjoy/internal/fx$1;->a:Lcom/tapjoy/internal/fx;

    invoke-static {v0}, Lcom/tapjoy/internal/fx;->b(Lcom/tapjoy/internal/fx;)Lcom/tapjoy/internal/ge;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/ge;->B:Lcom/tapjoy/internal/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/j;->a(Z)V

    .line 761
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tapjoy/internal/gi;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 763
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
