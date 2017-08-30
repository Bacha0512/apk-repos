.class final Lcom/tapjoy/internal/es$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/es;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/es;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/es;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/es$1;->a:Lcom/tapjoy/internal/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4

    sget-object v0, Lcom/tapjoy/internal/eo;->b:Lcom/tapjoy/internal/eo$a;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eo$a;->deleteObserver(Ljava/util/Observer;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/es$1;->a:Lcom/tapjoy/internal/es;

    iget-object v0, v0, Lcom/tapjoy/internal/es;->e:Lcom/tapjoy/internal/es$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/es$1;->a:Lcom/tapjoy/internal/es;

    iget-object v0, v0, Lcom/tapjoy/internal/es;->e:Lcom/tapjoy/internal/es$a;

    iget-object v0, v0, Lcom/tapjoy/internal/es$a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/es$1;->a:Lcom/tapjoy/internal/es;

    new-instance v1, Lcom/tapjoy/internal/es$b;

    iget-object v2, p0, Lcom/tapjoy/internal/es$1;->a:Lcom/tapjoy/internal/es;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/internal/es$b;-><init>(Lcom/tapjoy/internal/es;B)V

    iput-object v1, v0, Lcom/tapjoy/internal/es;->c:Lcom/tapjoy/internal/es$b;

    iget-object v0, p0, Lcom/tapjoy/internal/es$1;->a:Lcom/tapjoy/internal/es;

    iget-object v0, v0, Lcom/tapjoy/internal/es;->c:Lcom/tapjoy/internal/es$b;

    invoke-virtual {v0}, Lcom/tapjoy/internal/es$b;->e()Lcom/tapjoy/internal/df;

    :cond_0
    return-void
.end method
