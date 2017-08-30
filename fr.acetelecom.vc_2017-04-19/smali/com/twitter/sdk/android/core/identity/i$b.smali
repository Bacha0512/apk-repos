.class Lcom/twitter/sdk/android/core/identity/i$b;
.super Lcom/twitter/sdk/android/core/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/identity/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c",
        "<",
        "Lcom/twitter/sdk/android/core/s;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/twitter/sdk/android/core/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/k;Lcom/twitter/sdk/android/core/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;",
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/i$b;->a:Lcom/twitter/sdk/android/core/k;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/identity/i$b;->b:Lcom/twitter/sdk/android/core/c;

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
            "Lcom/twitter/sdk/android/core/s;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Authorization completed successfully"

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/i$b;->a:Lcom/twitter/sdk/android/core/k;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/j;

    invoke-interface {v1, v0}, Lcom/twitter/sdk/android/core/k;->a(Lcom/twitter/sdk/android/core/j;)V

    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/i$b;->b:Lcom/twitter/sdk/android/core/c;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/c;->a(Lcom/twitter/sdk/android/core/i;)V

    return-void
.end method

.method public a(Lcom/twitter/sdk/android/core/p;)V
    .locals 3

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Authorization completed with an error"

    invoke-interface {v0, v1, v2, p1}, La/a/a/a/l;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/i$b;->b:Lcom/twitter/sdk/android/core/c;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/c;->a(Lcom/twitter/sdk/android/core/p;)V

    return-void
.end method
