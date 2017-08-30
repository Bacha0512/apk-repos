.class Lfr/acetelecom/vc/c/d$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/c/d$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfr/acetelecom/vc/c/e;

.field final synthetic b:Lfr/acetelecom/vc/c/f;

.field final synthetic c:Lfr/acetelecom/vc/c/d$2;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/c/d$2;Lfr/acetelecom/vc/c/e;Lfr/acetelecom/vc/c/f;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/c/d$2$1;->c:Lfr/acetelecom/vc/c/d$2;

    iput-object p2, p0, Lfr/acetelecom/vc/c/d$2$1;->a:Lfr/acetelecom/vc/c/e;

    iput-object p3, p0, Lfr/acetelecom/vc/c/d$2$1;->b:Lfr/acetelecom/vc/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lfr/acetelecom/vc/c/d$2$1;->c:Lfr/acetelecom/vc/c/d$2;

    iget-object v0, v0, Lfr/acetelecom/vc/c/d$2;->c:Lfr/acetelecom/vc/c/d$e;

    iget-object v1, p0, Lfr/acetelecom/vc/c/d$2$1;->a:Lfr/acetelecom/vc/c/e;

    iget-object v2, p0, Lfr/acetelecom/vc/c/d$2$1;->b:Lfr/acetelecom/vc/c/f;

    invoke-interface {v0, v1, v2}, Lfr/acetelecom/vc/c/d$e;->a(Lfr/acetelecom/vc/c/e;Lfr/acetelecom/vc/c/f;)V

    return-void
.end method
