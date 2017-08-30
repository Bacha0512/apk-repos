.class Lcom/digits/sdk/android/bt$1;
.super Lcom/twitter/sdk/android/core/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digits/sdk/android/bt;-><init>(Landroid/content/Context;Lcom/digits/sdk/android/h;Ljava/lang/String;Lcom/digits/sdk/android/ci;ZLandroid/os/ResultReceiver;Lcom/digits/sdk/android/a;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c",
        "<",
        "Lcom/digits/sdk/android/models/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/digits/sdk/android/bt;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/bt$1;->a:Lcom/digits/sdk/android/bt;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/i",
            "<",
            "Lcom/digits/sdk/android/models/a;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/digits/sdk/android/bt$1;->a:Lcom/digits/sdk/android/bt;

    iget-object v2, p0, Lcom/digits/sdk/android/bt$1;->a:Lcom/digits/sdk/android/bt;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast v0, Lcom/digits/sdk/android/models/a;

    invoke-static {v2, v0}, Lcom/digits/sdk/android/bt;->a(Lcom/digits/sdk/android/bt;Lcom/digits/sdk/android/models/a;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/digits/sdk/android/bt;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/twitter/sdk/android/core/p;)V
    .locals 5

    iget-object v0, p0, Lcom/digits/sdk/android/bt$1;->a:Lcom/digits/sdk/android/bt;

    invoke-static {v0, p1}, Lcom/digits/sdk/android/bt;->a(Lcom/digits/sdk/android/bt;Lcom/twitter/sdk/android/core/p;)Lcom/digits/sdk/android/at;

    move-result-object v0

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "Digits"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/p;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", API Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/digits/sdk/android/at;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", User Message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/digits/sdk/android/at;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, La/a/a/a/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, v0, Lcom/digits/sdk/android/v;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/bt$1;->a:Lcom/digits/sdk/android/bt;

    invoke-static {v0}, Lcom/digits/sdk/android/bt;->a(Lcom/digits/sdk/android/bt;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/digits/sdk/android/bt$1;->a:Lcom/digits/sdk/android/bt;

    invoke-virtual {v1, v0}, Lcom/digits/sdk/android/bt;->a(Lcom/digits/sdk/android/at;)V

    goto :goto_0
.end method
