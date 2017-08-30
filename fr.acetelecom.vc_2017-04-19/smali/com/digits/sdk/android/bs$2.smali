.class Lcom/digits/sdk/android/bs$2;
.super Lcom/digits/sdk/android/ak;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digits/sdk/android/bs;->a(Landroid/content/Context;Lcom/digits/sdk/android/internal/InvertedStateButton;Lcom/digits/sdk/android/ci;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/digits/sdk/android/ak",
        "<",
        "Lcom/digits/sdk/android/models/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/digits/sdk/android/internal/InvertedStateButton;

.field final synthetic b:Lcom/digits/sdk/android/bs;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/bs;Landroid/content/Context;Lcom/digits/sdk/android/an;Lcom/digits/sdk/android/internal/InvertedStateButton;)V
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/bs$2;->b:Lcom/digits/sdk/android/bs;

    iput-object p4, p0, Lcom/digits/sdk/android/bs$2;->a:Lcom/digits/sdk/android/internal/InvertedStateButton;

    invoke-direct {p0, p2, p3}, Lcom/digits/sdk/android/ak;-><init>(Landroid/content/Context;Lcom/digits/sdk/android/an;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/i",
            "<",
            "Lcom/digits/sdk/android/models/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/digits/sdk/android/bs$2;->a:Lcom/digits/sdk/android/internal/InvertedStateButton;

    invoke-virtual {v0}, Lcom/digits/sdk/android/internal/InvertedStateButton;->e()V

    iget-object v1, p0, Lcom/digits/sdk/android/bs$2;->b:Lcom/digits/sdk/android/bs;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast v0, Lcom/digits/sdk/android/models/a;

    iget-object v0, v0, Lcom/digits/sdk/android/models/a;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/digits/sdk/android/bs;->a(Lcom/digits/sdk/android/bs;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/digits/sdk/android/bs$2;->a:Lcom/digits/sdk/android/internal/InvertedStateButton;

    new-instance v1, Lcom/digits/sdk/android/bs$2$1;

    invoke-direct {v1, p0}, Lcom/digits/sdk/android/bs$2$1;-><init>(Lcom/digits/sdk/android/bs$2;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/digits/sdk/android/internal/InvertedStateButton;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
