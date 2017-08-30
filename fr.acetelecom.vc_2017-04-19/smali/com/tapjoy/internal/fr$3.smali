.class final Lcom/tapjoy/internal/fr$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/tapjoy/internal/fr$3;->c:Lcom/tapjoy/internal/fr;

    iput-object p2, p0, Lcom/tapjoy/internal/fr$3;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tapjoy/internal/fr$3;->b:Lcom/tapjoy/internal/fn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/internal/fr;->a:Lcom/tapjoy/internal/fr;

    iget-object v0, p0, Lcom/tapjoy/internal/fr$3;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tapjoy/internal/fr$3;->c:Lcom/tapjoy/internal/fr;

    iget-object v1, v1, Lcom/tapjoy/internal/fr;->d:Lcom/tapjoy/internal/gh;

    iget-object v1, v1, Lcom/tapjoy/internal/gh;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/ft;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/internal/fr$3;->c:Lcom/tapjoy/internal/fr;

    iget-object v0, v0, Lcom/tapjoy/internal/fr;->b:Lcom/tapjoy/internal/fm;

    iget-object v1, p0, Lcom/tapjoy/internal/fr$3;->c:Lcom/tapjoy/internal/fr;

    iget-object v1, v1, Lcom/tapjoy/internal/fr;->d:Lcom/tapjoy/internal/gh;

    iget-object v1, v1, Lcom/tapjoy/internal/gh;->k:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/tapjoy/internal/fr$3;->c:Lcom/tapjoy/internal/fr;

    iget-wide v4, v4, Lcom/tapjoy/internal/fr;->f:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tapjoy/internal/fm;->a(Ljava/util/Map;J)V

    iget-object v0, p0, Lcom/tapjoy/internal/fr$3;->c:Lcom/tapjoy/internal/fr;

    iget-boolean v0, v0, Lcom/tapjoy/internal/fr;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fr$3;->b:Lcom/tapjoy/internal/fn;

    iget-object v1, p0, Lcom/tapjoy/internal/fr$3;->c:Lcom/tapjoy/internal/fr;

    iget-object v1, v1, Lcom/tapjoy/internal/fr;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/fr$3;->c:Lcom/tapjoy/internal/fr;

    iget-object v2, v2, Lcom/tapjoy/internal/fr;->d:Lcom/tapjoy/internal/gh;

    iget-object v2, v2, Lcom/tapjoy/internal/gh;->h:Lcom/tapjoy/internal/ey;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fn;->b(Ljava/lang/String;Lcom/tapjoy/internal/ey;)V

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fr$3;->c:Lcom/tapjoy/internal/fr;

    iget-boolean v0, v0, Lcom/tapjoy/internal/fr;->g:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/fr$3;->c:Lcom/tapjoy/internal/fr;

    iget-object v0, v0, Lcom/tapjoy/internal/fr;->d:Lcom/tapjoy/internal/gh;

    iget-object v0, v0, Lcom/tapjoy/internal/gh;->k:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/fr$3;->c:Lcom/tapjoy/internal/fr;

    iget-object v0, v0, Lcom/tapjoy/internal/fr;->d:Lcom/tapjoy/internal/gh;

    iget-object v0, v0, Lcom/tapjoy/internal/gh;->k:Ljava/util/Map;

    const-string v1, "action_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/fr$3;->c:Lcom/tapjoy/internal/fr;

    iget-object v0, v0, Lcom/tapjoy/internal/fr;->d:Lcom/tapjoy/internal/gh;

    iget-object v0, v0, Lcom/tapjoy/internal/gh;->k:Ljava/util/Map;

    const-string v1, "action_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/fr$3;->c:Lcom/tapjoy/internal/fr;

    iget-object v0, v0, Lcom/tapjoy/internal/fr;->b:Lcom/tapjoy/internal/fm;

    iget-object v2, v0, Lcom/tapjoy/internal/fm;->b:Lcom/tapjoy/internal/fv;

    if-eqz v2, :cond_4

    iget-object v3, v0, Lcom/tapjoy/internal/fm;->b:Lcom/tapjoy/internal/fv;

    invoke-static {}, Lcom/tapjoy/internal/fv;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v3, Lcom/tapjoy/internal/fv;->b:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v3, Lcom/tapjoy/internal/fv;->a:Lcom/tapjoy/internal/q;

    invoke-virtual {v4}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget-object v0, v3, Lcom/tapjoy/internal/fv;->a:Lcom/tapjoy/internal/q;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    const-string v0, ""

    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_7

    move-object v0, v1

    :cond_3
    :goto_1
    iget-object v1, v3, Lcom/tapjoy/internal/fv;->b:Lcom/tapjoy/internal/q;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/tapjoy/internal/fr$3;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/tapjoy/TJContentActivity;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tapjoy/internal/fr$3;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_5
    return-void

    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
