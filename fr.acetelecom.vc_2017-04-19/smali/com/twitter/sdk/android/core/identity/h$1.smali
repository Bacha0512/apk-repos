.class Lcom/twitter/sdk/android/core/identity/h$1;
.super Lcom/twitter/sdk/android/core/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/core/identity/h;->b()Lcom/twitter/sdk/android/core/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c",
        "<",
        "Lcom/twitter/sdk/android/core/a/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/identity/h;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/identity/h;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/h$1;->a:Lcom/twitter/sdk/android/core/identity/h;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/i",
            "<",
            "Lcom/twitter/sdk/android/core/a/h;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/h$1;->a:Lcom/twitter/sdk/android/core/identity/h;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/a/h;

    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/core/identity/h;->a(Lcom/twitter/sdk/android/core/a/h;)V

    return-void
.end method

.method public a(Lcom/twitter/sdk/android/core/p;)V
    .locals 3

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Failed to get email address."

    invoke-interface {v0, v1, v2, p1}, La/a/a/a/l;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/h$1;->a:Lcom/twitter/sdk/android/core/identity/h;

    new-instance v1, Lcom/twitter/sdk/android/core/p;

    const-string v2, "Failed to get email address."

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/identity/h;->a(Lcom/twitter/sdk/android/core/p;)V

    return-void
.end method
