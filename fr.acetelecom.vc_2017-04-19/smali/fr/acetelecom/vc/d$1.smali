.class Lfr/acetelecom/vc/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twilio/client/Twilio$InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/d;->a(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lfr/acetelecom/vc/d;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/d;Ljava/lang/String;ZZ)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/d$1;->d:Lfr/acetelecom/vc/d;

    iput-object p2, p0, Lfr/acetelecom/vc/d$1;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lfr/acetelecom/vc/d$1;->b:Z

    iput-boolean p4, p0, Lfr/acetelecom/vc/d$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lfr/acetelecom/vc/d;->c(Z)Z

    iget-object v0, p0, Lfr/acetelecom/vc/d$1;->d:Lfr/acetelecom/vc/d;

    invoke-static {v0}, Lfr/acetelecom/vc/d;->a(Lfr/acetelecom/vc/d;)Lfr/acetelecom/vc/d$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/d$1;->d:Lfr/acetelecom/vc/d;

    invoke-static {v0}, Lfr/acetelecom/vc/d;->a(Lfr/acetelecom/vc/d;)Lfr/acetelecom/vc/d$d;

    move-result-object v0

    invoke-interface {v0, p1}, Lfr/acetelecom/vc/d$d;->c(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onInitialized()V
    .locals 4

    const/4 v0, 0x1

    invoke-static {v0}, Lfr/acetelecom/vc/d;->b(Z)Z

    const/4 v0, 0x0

    invoke-static {v0}, Lfr/acetelecom/vc/d;->c(Z)Z

    iget-object v0, p0, Lfr/acetelecom/vc/d$1;->d:Lfr/acetelecom/vc/d;

    iget-object v1, p0, Lfr/acetelecom/vc/d$1;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lfr/acetelecom/vc/d$1;->b:Z

    iget-boolean v3, p0, Lfr/acetelecom/vc/d$1;->c:Z

    invoke-static {v0, v1, v2, v3}, Lfr/acetelecom/vc/d;->a(Lfr/acetelecom/vc/d;Ljava/lang/String;ZZ)V

    return-void
.end method
