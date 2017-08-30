.class Lcom/digits/sdk/android/ca$1;
.super Lcom/digits/sdk/android/ak;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digits/sdk/android/ca;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/digits/sdk/android/ak",
        "<",
        "Lcom/digits/sdk/android/models/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/digits/sdk/android/ca;


# direct methods
.method constructor <init>(Lcom/digits/sdk/android/ca;Landroid/content/Context;Lcom/digits/sdk/android/an;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/digits/sdk/android/ca$1;->b:Lcom/digits/sdk/android/ca;

    iput-object p4, p0, Lcom/digits/sdk/android/ca$1;->a:Landroid/content/Context;

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
            "Lcom/digits/sdk/android/models/e;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/digits/sdk/android/ca$1;->b:Lcom/digits/sdk/android/ca;

    iget-object v0, v0, Lcom/digits/sdk/android/ca;->h:Lcom/digits/sdk/android/ar;

    iget-object v1, p0, Lcom/digits/sdk/android/ca$1;->b:Lcom/digits/sdk/android/ca;

    iget-object v1, v1, Lcom/digits/sdk/android/ca;->i:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->b(Ljava/lang/Long;)Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;->a()Lcom/digits/sdk/android/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/ar;->p(Lcom/digits/sdk/android/a/f;)V

    iget-object v0, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast v0, Lcom/digits/sdk/android/models/e;

    iget-object v1, p0, Lcom/digits/sdk/android/ca$1;->b:Lcom/digits/sdk/android/ca;

    invoke-static {v1}, Lcom/digits/sdk/android/ca;->a(Lcom/digits/sdk/android/ca;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digits/sdk/android/aw;->a(Lcom/digits/sdk/android/models/e;Ljava/lang/String;)Lcom/digits/sdk/android/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/digits/sdk/android/ca$1;->b:Lcom/digits/sdk/android/ca;

    iget-object v1, v1, Lcom/digits/sdk/android/ca;->g:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v1, v0}, Lcom/twitter/sdk/android/core/k;->a(Lcom/twitter/sdk/android/core/j;)V

    iget-object v1, p0, Lcom/digits/sdk/android/ca$1;->b:Lcom/digits/sdk/android/ca;

    invoke-static {v1}, Lcom/digits/sdk/android/ca;->b(Lcom/digits/sdk/android/ca;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/digits/sdk/android/ca$1;->b:Lcom/digits/sdk/android/ca;

    iget-object v2, p0, Lcom/digits/sdk/android/ca$1;->a:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/digits/sdk/android/ca;->a(Lcom/digits/sdk/android/ca;Landroid/content/Context;Lcom/digits/sdk/android/aw;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/digits/sdk/android/ca$1;->b:Lcom/digits/sdk/android/ca;

    iget-object v2, p0, Lcom/digits/sdk/android/ca$1;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/digits/sdk/android/ca$1;->b:Lcom/digits/sdk/android/ca;

    invoke-static {v3}, Lcom/digits/sdk/android/ca;->a(Lcom/digits/sdk/android/ca;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/digits/sdk/android/ca$1;->b:Lcom/digits/sdk/android/ca;

    iget-object v4, v4, Lcom/digits/sdk/android/ca;->i:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/digits/sdk/android/ca;->a(Landroid/content/Context;Lcom/digits/sdk/android/aw;Ljava/lang/String;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V

    goto :goto_0
.end method
