.class Lfr/acetelecom/vc/c/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/c/d;->a(Ljava/util/List;Lfr/acetelecom/vc/c/d$a;Lfr/acetelecom/vc/c/d$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lfr/acetelecom/vc/c/d$a;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lfr/acetelecom/vc/c/d$b;

.field final synthetic e:Lfr/acetelecom/vc/c/d;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/c/d;Ljava/util/List;Lfr/acetelecom/vc/c/d$a;Landroid/os/Handler;Lfr/acetelecom/vc/c/d$b;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/c/d$3;->e:Lfr/acetelecom/vc/c/d;

    iput-object p2, p0, Lfr/acetelecom/vc/c/d$3;->a:Ljava/util/List;

    iput-object p3, p0, Lfr/acetelecom/vc/c/d$3;->b:Lfr/acetelecom/vc/c/d$a;

    iput-object p4, p0, Lfr/acetelecom/vc/c/d$3;->c:Landroid/os/Handler;

    iput-object p5, p0, Lfr/acetelecom/vc/c/d$3;->d:Lfr/acetelecom/vc/c/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lfr/acetelecom/vc/c/d$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/acetelecom/vc/c/h;

    :try_start_0
    iget-object v3, p0, Lfr/acetelecom/vc/c/d$3;->e:Lfr/acetelecom/vc/c/d;

    invoke-static {v3, v0}, Lfr/acetelecom/vc/c/d;->a(Lfr/acetelecom/vc/c/d;Lfr/acetelecom/vc/c/h;)V

    new-instance v3, Lfr/acetelecom/vc/c/e;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successful consume of sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lfr/acetelecom/vc/c/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lfr/acetelecom/vc/c/e;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lfr/acetelecom/vc/c/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lfr/acetelecom/vc/c/c;->a()Lfr/acetelecom/vc/c/e;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/c/d$3;->e:Lfr/acetelecom/vc/c/d;

    invoke-virtual {v0}, Lfr/acetelecom/vc/c/d;->b()V

    iget-object v0, p0, Lfr/acetelecom/vc/c/d$3;->e:Lfr/acetelecom/vc/c/d;

    invoke-static {v0}, Lfr/acetelecom/vc/c/d;->a(Lfr/acetelecom/vc/c/d;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/c/d$3;->b:Lfr/acetelecom/vc/c/d$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/c/d$3;->c:Landroid/os/Handler;

    new-instance v2, Lfr/acetelecom/vc/c/d$3$1;

    invoke-direct {v2, p0, v1}, Lfr/acetelecom/vc/c/d$3$1;-><init>(Lfr/acetelecom/vc/c/d$3;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lfr/acetelecom/vc/c/d$3;->e:Lfr/acetelecom/vc/c/d;

    invoke-static {v0}, Lfr/acetelecom/vc/c/d;->a(Lfr/acetelecom/vc/c/d;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lfr/acetelecom/vc/c/d$3;->d:Lfr/acetelecom/vc/c/d$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfr/acetelecom/vc/c/d$3;->c:Landroid/os/Handler;

    new-instance v2, Lfr/acetelecom/vc/c/d$3$2;

    invoke-direct {v2, p0, v1}, Lfr/acetelecom/vc/c/d$3$2;-><init>(Lfr/acetelecom/vc/c/d$3;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
