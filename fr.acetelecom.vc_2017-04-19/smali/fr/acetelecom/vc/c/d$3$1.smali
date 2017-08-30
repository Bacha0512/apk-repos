.class Lfr/acetelecom/vc/c/d$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/c/d$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lfr/acetelecom/vc/c/d$3;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/c/d$3;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/c/d$3$1;->b:Lfr/acetelecom/vc/c/d$3;

    iput-object p2, p0, Lfr/acetelecom/vc/c/d$3$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lfr/acetelecom/vc/c/d$3$1;->b:Lfr/acetelecom/vc/c/d$3;

    iget-object v2, v0, Lfr/acetelecom/vc/c/d$3;->b:Lfr/acetelecom/vc/c/d$a;

    iget-object v0, p0, Lfr/acetelecom/vc/c/d$3$1;->b:Lfr/acetelecom/vc/c/d$3;

    iget-object v0, v0, Lfr/acetelecom/vc/c/d$3;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/acetelecom/vc/c/h;

    iget-object v1, p0, Lfr/acetelecom/vc/c/d$3$1;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/acetelecom/vc/c/e;

    invoke-interface {v2, v0, v1}, Lfr/acetelecom/vc/c/d$a;->a(Lfr/acetelecom/vc/c/h;Lfr/acetelecom/vc/c/e;)V

    return-void
.end method
