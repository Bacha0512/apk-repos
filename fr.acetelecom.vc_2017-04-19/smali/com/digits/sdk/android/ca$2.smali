.class Lcom/digits/sdk/android/ca$2;
.super Lcom/digits/sdk/android/ak;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digits/sdk/android/ca;->a(Landroid/content/Context;Lcom/digits/sdk/android/aw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/digits/sdk/android/ak",
        "<",
        "Lcom/digits/sdk/android/models/k;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/digits/sdk/android/aw;

.field final synthetic b:Landroid/content/Context;

.field final synthetic d:Lcom/digits/sdk/android/ca;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/ca;Landroid/content/Context;Lcom/digits/sdk/android/an;Lcom/digits/sdk/android/aw;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/ca$2;->d:Lcom/digits/sdk/android/ca;

    iput-object p4, p0, Lcom/digits/sdk/android/ca$2;->a:Lcom/digits/sdk/android/aw;

    iput-object p5, p0, Lcom/digits/sdk/android/ca$2;->b:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lcom/digits/sdk/android/ak;-><init>(Landroid/content/Context;Lcom/digits/sdk/android/an;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/i;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/i",
            "<",
            "Lcom/digits/sdk/android/models/k;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast v0, Lcom/digits/sdk/android/models/k;

    invoke-static {v0}, Lcom/digits/sdk/android/aw;->a(Lcom/digits/sdk/android/models/k;)Lcom/digits/sdk/android/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/digits/sdk/android/ca$2;->d:Lcom/digits/sdk/android/ca;

    iget-object v2, p0, Lcom/digits/sdk/android/ca$2;->a:Lcom/digits/sdk/android/aw;

    invoke-static {v1, v0, v2}, Lcom/digits/sdk/android/ca;->a(Lcom/digits/sdk/android/ca;Lcom/digits/sdk/android/aw;Lcom/digits/sdk/android/aw;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/ca$2;->d:Lcom/digits/sdk/android/ca;

    iget-object v1, p0, Lcom/digits/sdk/android/ca$2;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/digits/sdk/android/ca$2;->d:Lcom/digits/sdk/android/ca;

    invoke-static {v2}, Lcom/digits/sdk/android/ca;->a(Lcom/digits/sdk/android/ca;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/digits/sdk/android/ca$2;->d:Lcom/digits/sdk/android/ca;

    iget-object v3, v3, Lcom/digits/sdk/android/ca;->i:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/digits/sdk/android/ca;->a(Landroid/content/Context;Ljava/lang/String;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/digits/sdk/android/ca$2;->d:Lcom/digits/sdk/android/ca;

    iget-object v2, p0, Lcom/digits/sdk/android/ca$2;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/digits/sdk/android/ca$2;->d:Lcom/digits/sdk/android/ca;

    invoke-static {v3}, Lcom/digits/sdk/android/ca;->a(Lcom/digits/sdk/android/ca;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/digits/sdk/android/ca$2;->d:Lcom/digits/sdk/android/ca;

    iget-object v4, v4, Lcom/digits/sdk/android/ca;->i:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/digits/sdk/android/ca;->a(Landroid/content/Context;Lcom/digits/sdk/android/aw;Ljava/lang/String;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V

    goto :goto_0
.end method
