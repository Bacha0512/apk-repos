.class Lfr/acetelecom/vc/c/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/c/d;->a(ZLjava/util/List;Lfr/acetelecom/vc/c/d$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lfr/acetelecom/vc/c/d$e;

.field final synthetic d:Landroid/os/Handler;

.field final synthetic e:Lfr/acetelecom/vc/c/d;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/c/d;ZLjava/util/List;Lfr/acetelecom/vc/c/d$e;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/c/d$2;->e:Lfr/acetelecom/vc/c/d;

    iput-boolean p2, p0, Lfr/acetelecom/vc/c/d$2;->a:Z

    iput-object p3, p0, Lfr/acetelecom/vc/c/d$2;->b:Ljava/util/List;

    iput-object p4, p0, Lfr/acetelecom/vc/c/d$2;->c:Lfr/acetelecom/vc/c/d$e;

    iput-object p5, p0, Lfr/acetelecom/vc/c/d$2;->d:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v1, Lfr/acetelecom/vc/c/e;

    const/4 v0, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v1, v0, v2}, Lfr/acetelecom/vc/c/e;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lfr/acetelecom/vc/c/d$2;->e:Lfr/acetelecom/vc/c/d;

    iget-boolean v3, p0, Lfr/acetelecom/vc/c/d$2;->a:Z

    iget-object v4, p0, Lfr/acetelecom/vc/c/d$2;->b:Ljava/util/List;

    invoke-static {v2, v3, v4}, Lfr/acetelecom/vc/c/d;->a(Lfr/acetelecom/vc/c/d;ZLjava/util/List;)Lfr/acetelecom/vc/c/f;
    :try_end_0
    .catch Lfr/acetelecom/vc/c/c; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lfr/acetelecom/vc/c/d$2;->e:Lfr/acetelecom/vc/c/d;

    invoke-virtual {v2}, Lfr/acetelecom/vc/c/d;->b()V

    iget-object v2, p0, Lfr/acetelecom/vc/c/d$2;->e:Lfr/acetelecom/vc/c/d;

    invoke-static {v2}, Lfr/acetelecom/vc/c/d;->a(Lfr/acetelecom/vc/c/d;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lfr/acetelecom/vc/c/d$2;->c:Lfr/acetelecom/vc/c/d$e;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfr/acetelecom/vc/c/d$2;->d:Landroid/os/Handler;

    new-instance v3, Lfr/acetelecom/vc/c/d$2$1;

    invoke-direct {v3, p0, v1, v0}, Lfr/acetelecom/vc/c/d$2$1;-><init>(Lfr/acetelecom/vc/c/d$2;Lfr/acetelecom/vc/c/e;Lfr/acetelecom/vc/c/f;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lfr/acetelecom/vc/c/c;->a()Lfr/acetelecom/vc/c/e;

    move-result-object v1

    goto :goto_0
.end method
