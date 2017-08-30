.class Lfr/acetelecom/vc/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/c;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lfr/acetelecom/vc/c;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/c$2;->b:Lfr/acetelecom/vc/c;

    iput-object p2, p0, Lfr/acetelecom/vc/c$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/s;)V
    .locals 3

    iget-object v0, p0, Lfr/acetelecom/vc/c$2;->b:Lfr/acetelecom/vc/c;

    invoke-static {v0}, Lfr/acetelecom/vc/c;->a(Lfr/acetelecom/vc/c;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    const-string v0, "VCBE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volley:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/volley/s;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/c$2;->b:Lfr/acetelecom/vc/c;

    invoke-static {v0}, Lfr/acetelecom/vc/c;->b(Lfr/acetelecom/vc/c;)Lfr/acetelecom/vc/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/c$2;->b:Lfr/acetelecom/vc/c;

    invoke-static {v0}, Lfr/acetelecom/vc/c;->b(Lfr/acetelecom/vc/c;)Lfr/acetelecom/vc/c$a;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/c$2;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lfr/acetelecom/vc/c$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
