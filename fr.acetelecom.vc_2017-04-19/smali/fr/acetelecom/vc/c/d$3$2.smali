.class Lfr/acetelecom/vc/c/d$3$2;
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

    iput-object p1, p0, Lfr/acetelecom/vc/c/d$3$2;->b:Lfr/acetelecom/vc/c/d$3;

    iput-object p2, p0, Lfr/acetelecom/vc/c/d$3$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lfr/acetelecom/vc/c/d$3$2;->b:Lfr/acetelecom/vc/c/d$3;

    iget-object v0, v0, Lfr/acetelecom/vc/c/d$3;->d:Lfr/acetelecom/vc/c/d$b;

    iget-object v1, p0, Lfr/acetelecom/vc/c/d$3$2;->b:Lfr/acetelecom/vc/c/d$3;

    iget-object v1, v1, Lfr/acetelecom/vc/c/d$3;->a:Ljava/util/List;

    iget-object v2, p0, Lfr/acetelecom/vc/c/d$3$2;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lfr/acetelecom/vc/c/d$b;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
