.class Lfr/acetelecom/vc/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/c;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/n$b",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lfr/acetelecom/vc/c;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/c$1;->b:Lfr/acetelecom/vc/c;

    iput-object p2, p0, Lfr/acetelecom/vc/c$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lfr/acetelecom/vc/c$1;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lfr/acetelecom/vc/c$1;->b:Lfr/acetelecom/vc/c;

    invoke-static {v0}, Lfr/acetelecom/vc/c;->a(Lfr/acetelecom/vc/c;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    iget-object v0, p0, Lfr/acetelecom/vc/c$1;->b:Lfr/acetelecom/vc/c;

    invoke-static {v0}, Lfr/acetelecom/vc/c;->b(Lfr/acetelecom/vc/c;)Lfr/acetelecom/vc/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/c$1;->b:Lfr/acetelecom/vc/c;

    invoke-static {v0}, Lfr/acetelecom/vc/c;->b(Lfr/acetelecom/vc/c;)Lfr/acetelecom/vc/c$a;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/c$1;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lfr/acetelecom/vc/c$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
