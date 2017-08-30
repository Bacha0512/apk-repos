.class final Lcom/tapjoy/internal/fr$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/gy$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/fr;->a(Landroid/app/Activity;Lcom/tapjoy/internal/fn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/tapjoy/internal/fn;

.field final synthetic c:Lcom/tapjoy/internal/fr;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fr;Landroid/app/Activity;Lcom/tapjoy/internal/fn;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/fr$4;->c:Lcom/tapjoy/internal/fr;

    iput-object p2, p0, Lcom/tapjoy/internal/fr$4;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tapjoy/internal/fr$4;->b:Lcom/tapjoy/internal/fn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/fr$4;->c:Lcom/tapjoy/internal/fr;

    iget-object v0, v0, Lcom/tapjoy/internal/fr;->e:Lcom/tapjoy/internal/e;

    invoke-virtual {v0}, Lcom/tapjoy/internal/e;->cancel()V

    return-void
.end method

.method public final a(Lcom/tapjoy/internal/gg;)V
    .locals 4

    iget-object v0, p0, Lcom/tapjoy/internal/fr$4;->c:Lcom/tapjoy/internal/fr;

    iget-object v0, v0, Lcom/tapjoy/internal/fr;->b:Lcom/tapjoy/internal/fm;

    iget-object v1, p0, Lcom/tapjoy/internal/fr$4;->c:Lcom/tapjoy/internal/fr;

    iget-object v1, v1, Lcom/tapjoy/internal/fr;->d:Lcom/tapjoy/internal/gh;

    iget-object v1, v1, Lcom/tapjoy/internal/gh;->k:Ljava/util/Map;

    iget-object v2, p1, Lcom/tapjoy/internal/gg;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fm;->a(Ljava/util/Map;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/internal/fr$4;->a:Landroid/app/Activity;

    iget-object v1, p1, Lcom/tapjoy/internal/gg;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/ft;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/tapjoy/internal/gg;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fr$4;->c:Lcom/tapjoy/internal/fr;

    iget-object v0, v0, Lcom/tapjoy/internal/fr;->j:Lcom/tapjoy/internal/ff;

    iget-object v1, p0, Lcom/tapjoy/internal/fr$4;->a:Landroid/app/Activity;

    iget-object v2, p1, Lcom/tapjoy/internal/gg;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/gg;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/tapjoy/internal/cr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tapjoy/internal/ff;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/internal/fr$4;->c:Lcom/tapjoy/internal/fr;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/internal/fr;->i:Z

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fr$4;->b:Lcom/tapjoy/internal/fn;

    iget-object v1, p0, Lcom/tapjoy/internal/fr$4;->c:Lcom/tapjoy/internal/fr;

    iget-object v1, v1, Lcom/tapjoy/internal/fr;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/tapjoy/internal/gg;->g:Lcom/tapjoy/internal/ey;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fn;->a(Ljava/lang/String;Lcom/tapjoy/internal/ey;)V

    iget-boolean v0, p1, Lcom/tapjoy/internal/gg;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/fr$4;->c:Lcom/tapjoy/internal/fr;

    iget-object v0, v0, Lcom/tapjoy/internal/fr;->e:Lcom/tapjoy/internal/e;

    invoke-virtual {v0}, Lcom/tapjoy/internal/e;->dismiss()V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v1, p0, Lcom/tapjoy/internal/fr$4;->c:Lcom/tapjoy/internal/fr;

    iget-object v0, p0, Lcom/tapjoy/internal/fr$4;->c:Lcom/tapjoy/internal/fr;

    iget-boolean v0, v0, Lcom/tapjoy/internal/fr;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/tapjoy/internal/fr;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
